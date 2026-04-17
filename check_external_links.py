#!/usr/bin/env python3
"""Extract all unique external URLs from markdown files in help/ directory."""

import os
import re
import json

url_pattern = re.compile(r'https?://[^\s\)\]>"\'`,]+')

urls_with_files = {}

for root, dirs, files in os.walk('help'):
    for fname in files:
        if not fname.endswith('.md'):
            continue
        fpath = os.path.join(root, fname)
        with open(fpath, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        found = url_pattern.findall(content)
        for url in found:
            url = url.rstrip('.,;:')
            if url not in urls_with_files:
                urls_with_files[url] = set()
            urls_with_files[url].add(fpath)

skip_patterns = [
    'http://www.w3.org/',
    'http://192.0.2.',
    'http://192.168.',
    'http://10.',
    'http://domain.com',
    'http://search.example.com',
    'http://commerce.example.com',
    'http://commerce.local',
    'http://magento.local',
    'xmlns:',
    'http://localhost',
    'http://127.0.0.1',
    'https://repo.magento.com',
    'http://your',
    'https://your',
    'http://<',
    'https://<',
    'http://example',
    'https://example',
    'http://magento2.vagrant',
    'http://www.example',
    'https://www.example',
    'http://host',
    'https://host',
    '{base_url}',
    '{unsecure_base_url}',
    '{secure_base_url}',
    'http://namenode',
    'https://namenode',
    'http://vault',
    'https://vault',
    'http://redis',
    'http://memcache',
    'http://elasticsearch',
    'http://opensearch',
    'magento.host',
    'myproject.local',
    'http://cache',
    'http://baler-sandbox',
    'http://0.0.0.0',
    'http://ddev',
]

filtered = {}
for url, files in urls_with_files.items():
    skip = False
    for pat in skip_patterns:
        if pat.lower() in url.lower():
            skip = True
            break
    if not skip and url.startswith('http'):
        filtered[url] = sorted(files)

print(f"Total unique real external URLs: {len(filtered)}")

with open('/tmp/urls_to_check.json', 'w') as f:
    json.dump(filtered, f, indent=2)

# Group by domain for overview
from urllib.parse import urlparse
domains = {}
for url in filtered:
    try:
        domain = urlparse(url).netloc
        domains[domain] = domains.get(domain, 0) + 1
    except:
        pass

print("\nURLs per domain (top 30):")
for domain, count in sorted(domains.items(), key=lambda x: -x[1])[:30]:
    print(f"  {count:4d}  {domain}")
