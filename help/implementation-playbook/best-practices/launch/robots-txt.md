---
title: Best practices for configuring the `robots.txt` file
description: Learn how to pass instructions about your Adobe Commerce site to web crawlers.
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Best practices for configuring the `robots.txt` file

This article provides best practices for using the `robots.txt` file in Adobe Commerce. This includes configuration and security. The `robots.txt` file is a text file that instructs web robots (typically search engine robots) how to crawl pages on a website.

## Affected products and versions

[All supported versions](../../release/versions.html) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Configuration

- By not configuring the `robots.txt` file, site performance can be negatively impacted, leading to a potential for site outages.
- Configure the `robots.txt` file to avoid unnecessary Bots scanning and indexing the wrong content (see [Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots)).

## Security

Do not expose your Admin path in your `robots.txt` file. Having the Admin path exposed is a vulnerability for site hacking and potential loss of data. Remove the Admin path from the `robots.txt` file.

For steps to edit the `robots.txt` file and remove all entries of the Admin path, see [Marketing User Guide > SEO and Search > Search Engine Robots](https://experienceleague.adobe.com/docs/commerce-admin/marketing/seo/seo-overview.html#search-engine-robots).

If you need help, [submit an Adobe Commerce Support ticket](https://support.magento.com/hc/en-us/articles/360000913794#submit-ticket).

## Additional information

- [How to block malicious traffic for Adobe Commerce on Fastly level](https://support.magento.com/hc/en-us/articles/360039447892)
- [robots.txt gives a 404 error in Adobe Commerce on cloud infrastructure 2.3.x](https://support.magento.com/hc/en-us/articles/360040594911)
