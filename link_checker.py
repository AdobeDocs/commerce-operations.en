#!/usr/bin/env python3
"""Check external URLs for broken links and redirects."""

import json
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor, as_completed
from urllib.parse import urlparse

with open('/tmp/urls_to_check.json') as f:
    url_data = json.load(f)

priority_domains = {
    'support.magento.com',
    'partners.magento.com', 
    'community.magento.com',
    'solutionpartners.adobe.com',
    'helpx.adobe.com',
    'business.adobe.com',
    'commercemarketplace.adobe.com',
    'developer.adobe.com',
    'experienceleague.adobe.com',
    'docs.newrelic.com',
    'www.elastic.co',
    'www.varnish-cache.org',
    'www.php.net',
    'dev.mysql.com',
    'redis.io',
    'www.rabbitmq.com',
    'adobe-commerce.redoc.ly',
    'mariadb.com',
    'www.digitalocean.com',
    'nvd.nist.gov',
    'www.gnu.org',
    'symfony.com',
    'tldp.org',
    'php.net',
    'www.php-fig.org',
    'datatracker.ietf.org',
    'www.iso.org',
    'en.wikipedia.org',
    'httpd.apache.org',
    'nginx.org',
}

# Also check non-github URLs that aren't in priority domains
skip_domains_for_general = {'github.com', 'avatars0.githubusercontent.com', 
    'avatars1.githubusercontent.com', 'avatars2.githubusercontent.com',
    'avatars3.githubusercontent.com', 'avatars.githubusercontent.com',
    'video.tv.adobe.com'}

urls_to_check = []
for url, files in url_data.items():
    try:
        domain = urlparse(url).netloc
    except:
        continue
    if domain in priority_domains or domain not in skip_domains_for_general:
        urls_to_check.append((url, files))

print(f"Checking {len(urls_to_check)} URLs...")

def check_url(url):
    try:
        result = subprocess.run(
            ['curl', '-sS', '-o', '/dev/null', '-w', 
             '%{http_code}|%{redirect_url}|%{url_effective}',
             '-L', '--max-time', '15', '--max-redirs', '5',
             '-A', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)',
             url],
            capture_output=True, text=True, timeout=20
        )
        parts = result.stdout.strip().split('|', 2)
        status = parts[0] if len(parts) > 0 else '000'
        redirect_url = parts[1] if len(parts) > 1 else ''
        effective_url = parts[2] if len(parts) > 2 else ''
        return url, status, redirect_url, effective_url, ''
    except subprocess.TimeoutExpired:
        return url, 'TIMEOUT', '', '', 'Request timed out'
    except Exception as e:
        return url, 'ERROR', '', '', str(e)

# Also do a non-follow check to detect redirects
def check_url_no_follow(url):
    try:
        result = subprocess.run(
            ['curl', '-sS', '-o', '/dev/null', '-w', 
             '%{http_code}|%{redirect_url}',
             '--max-time', '15',
             '-A', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)',
             url],
            capture_output=True, text=True, timeout=20
        )
        parts = result.stdout.strip().split('|', 1)
        status = parts[0] if len(parts) > 0 else '000'
        redirect_url = parts[1] if len(parts) > 1 else ''
        return url, status, redirect_url
    except:
        return url, '000', ''

broken = []
redirected = []
ok_count = 0
error_count = 0

checked = 0
with ThreadPoolExecutor(max_workers=20) as executor:
    futures = {executor.submit(check_url, url): (url, files) for url, files in urls_to_check}
    for future in as_completed(futures):
        url, files = futures[future]
        orig_url, status, redirect_url, effective_url, err = future.result()
        checked += 1
        
        if checked % 100 == 0:
            print(f"  Checked {checked}/{len(urls_to_check)}...", file=sys.stderr)
        
        status_int = int(status) if status.isdigit() else 0
        
        if status_int == 200:
            # Check if it was redirected by doing a no-follow check
            _, initial_status, initial_redirect = check_url_no_follow(orig_url)
            initial_status_int = int(initial_status) if initial_status.isdigit() else 0
            if initial_status_int in (301, 302, 303, 307, 308) and initial_redirect:
                redirected.append({
                    'url': orig_url,
                    'status': initial_status,
                    'redirect_to': effective_url or initial_redirect,
                    'files': files
                })
            else:
                ok_count += 1
        elif status_int == 0 or status in ('TIMEOUT', 'ERROR'):
            error_count += 1
            broken.append({
                'url': orig_url,
                'status': status,
                'error': err,
                'files': files
            })
        elif status_int >= 400:
            broken.append({
                'url': orig_url,
                'status': status,
                'error': f'HTTP {status}',
                'files': files
            })
        else:
            ok_count += 1

results = {
    'summary': {
        'total_checked': len(urls_to_check),
        'ok': ok_count,
        'broken': len(broken),
        'redirected': len(redirected),
        'errors': error_count
    },
    'broken': sorted(broken, key=lambda x: x['url']),
    'redirected': sorted(redirected, key=lambda x: x['url'])
}

with open('/tmp/link_check_results.json', 'w') as f:
    json.dump(results, f, indent=2)

print(f"\n{'='*80}")
print(f"RESULTS SUMMARY")
print(f"{'='*80}")
print(f"Total checked: {len(urls_to_check)}")
print(f"OK: {ok_count}")
print(f"Broken: {len(broken)}")
print(f"Redirected: {len(redirected)}")
print(f"Errors/Timeouts: {error_count}")

if broken:
    print(f"\n{'='*80}")
    print(f"BROKEN LINKS ({len(broken)})")
    print(f"{'='*80}")
    for item in sorted(broken, key=lambda x: x['url']):
        print(f"\n  URL: {item['url']}")
        print(f"  Status: {item['status']} - {item['error']}")
        print(f"  Found in: {', '.join(item['files'])}")

if redirected:
    print(f"\n{'='*80}")
    print(f"REDIRECTED LINKS ({len(redirected)})")
    print(f"{'='*80}")
    for item in sorted(redirected, key=lambda x: x['url']):
        print(f"\n  URL: {item['url']}")
        print(f"  Status: {item['status']}")
        print(f"  Redirects to: {item['redirect_to']}")
        print(f"  Found in: {', '.join(item['files'])}")
