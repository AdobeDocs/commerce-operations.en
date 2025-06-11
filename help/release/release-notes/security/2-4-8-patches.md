---
title: Adobe Commerce 2.4.8 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
---

# Release notes for Adobe Commerce 2.4.8 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

## 2.4.8-p1

The Adobe Commerce 2.4.8-p1 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.8.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-50](https://helpx.adobe.com/security/products/magento/apsb25-50.html).

{{b2b-patches}}

### Highlights

This release includes the following highlights:

* **API performance enhancement**—Resolves performance degradation in bulk asynchronous web API endpoints that were introduced after the previous security patch.<!-- AC-14078 -->

* **CMS Blocks access fix**—Resolves an issue where Admin users with restricted permissions (such as merchandising-only access) were unable to view the [!UICONTROL CMS Blocks] listing page. 

  Previously, these users encountered an error due to missing configuration parameters after installing previous security patches.<!-- AC-14087 -->

* **Cookie limit compatibility**—Resolves a backward-incompatible change involving the `MAX_NUM_COOKIES` constant in the framework. This update restores expected behavior and ensures compatibility for extensions or customizations that interact with cookie limits.<!-- AC-14475 -->

* **Async operations**—Restricted async operations for overriding previous customers orders.<!-- AC-13917 -->

* **Fix for CVE-2025-47110**—Resolves an email templates vulnerability.<!-- AC-14695 -->

* **Fix for VULN-31547**—Resolves a category canonical link vulnerability.<!-- AC-14713 -->

>[!BEGINSHADEBOX]

The fixes for CVE-2025-47110 and VULN-31547 are also available as an isolated patch. See the [Knowledge Base article](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/security-update-available-for-adobe-commerce-apsb25-50) for details.

>[!ENDSHADEBOX]
