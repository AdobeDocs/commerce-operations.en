#!/bin/bash
# Script to check external links in markdown files

BROKEN_LINKS="/tmp/broken_links.txt"
CHECKED_COUNT=0
BROKEN_COUNT=0

> "$BROKEN_LINKS"

echo "Checking external links..."
echo "This may take several minutes..."

while IFS= read -r url; do
    # Skip obvious non-URLs
    if [[ "$url" == *" "* ]] || [[ "$url" == *"..."* ]] || [[ "$url" == "http://"* && ${#url} -lt 15 ]]; then
        continue
    fi
    
    # Clean URL (remove trailing punctuation that might have been captured)
    url=$(echo "$url" | sed 's/[,;]$//')
    
    CHECKED_COUNT=$((CHECKED_COUNT + 1))
    
    # Check URL with curl (follow redirects, timeout 10s, only get headers)
    HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}" --connect-timeout 5 --max-time 10 -L -A "Mozilla/5.0" "$url" 2>/dev/null)
    
    if [[ "$HTTP_CODE" == "000" ]] || [[ "$HTTP_CODE" -ge 400 ]]; then
        echo "BROKEN ($HTTP_CODE): $url"
        echo "$HTTP_CODE $url" >> "$BROKEN_LINKS"
        BROKEN_COUNT=$((BROKEN_COUNT + 1))
    fi
    
    # Progress indicator every 100 URLs
    if [ $((CHECKED_COUNT % 100)) -eq 0 ]; then
        echo "Checked $CHECKED_COUNT URLs, found $BROKEN_COUNT broken..."
    fi
    
done < /tmp/real_urls.txt

echo ""
echo "=== SUMMARY ==="
echo "Checked: $CHECKED_COUNT URLs"
echo "Broken: $BROKEN_COUNT URLs"
echo ""
echo "Broken links saved to: $BROKEN_LINKS"

if [ -s "$BROKEN_LINKS" ]; then
    echo ""
    echo "=== BROKEN LINKS ==="
    cat "$BROKEN_LINKS"
fi


