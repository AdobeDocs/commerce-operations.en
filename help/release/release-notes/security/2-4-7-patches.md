---
title: Adobe Commerce 2.4.7 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
exl-id: 38e5632b-c795-47d8-89dd-26bbaeb34e67
---
# Release notes for Adobe Commerce 2.4.7 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

## 2.4.7-p8

The Adobe Commerce 2.4.7-p8 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-94](https://helpx.adobe.com/security/products/magento/apsb25-94.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-10.md}}

## 2.4.7-p7

The Adobe Commerce 2.4.7-p7 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-71](https://helpx.adobe.com/security/products/magento/apsb25-71.html).

{{b2b-patches}}

## 2.4.7-p6

The Adobe Commerce 2.4.7-p6 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-50](https://helpx.adobe.com/security/products/magento/apsb25-50.html).

{{b2b-patches}}

### Highlights

This release includes the following highlights:

* **MariaDB support**—Added support for MariaDB 10.11.

* **API performance enhancement**—Resolves performance degradation in bulk asynchronous web API endpoints that were introduced after the previous security patch.<!-- AC-14078 -->

* **CMS Blocks access fix**—Resolves an issue where Admin users with restricted permissions (such as merchandising-only access) were unable to view the [!UICONTROL CMS Blocks] listing page. 

  Previously, these users encountered an error due to missing configuration parameters after installing previous security patches.<!-- AC-14087 -->

* **Cookie limit compatibility**—Resolves a backward-incompatible change involving the `MAX_NUM_COOKIES` constant in the framework. This update restores expected behavior and ensures compatibility for extensions or customizations that interact with cookie limits.<!-- AC-14475 -->

* **Async operations**—Restricted async operations for overriding previous customers orders.<!-- AC-13917 -->

## 2.4.7-p5

The Adobe Commerce 2.4.7-p5 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-26](https://helpx.adobe.com/security/products/magento/apsb25-26.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-04.md}}

>[!BEGINSHADEBOX]

This release also introduces support for the Adobe Commerce [HIPAA-ready extension](https://experienceleague.adobe.com/en/docs/commerce-admin/start/compliance/hipaa-ready-service/overview).

>[!ENDSHADEBOX]

### Known issues

**Issue**: When installing 2.4.7-p5 with PHP 8.2 or higher, the system installs `paypal/module-braintree` version 4.7.0, which is intended for 2.4.8 and newer. For PHP 8.1, the correct Braintree version 4.6.1-p5 is used. This mismatch is due to the loose dependency on `adobe-commerce/extensions-metapackage: ~2.0` in the metapackage. This impacts the compatibility and supported feature set for PHP 8.2+ deployments.<!-- ACPLTSRV-6276) -->

Additionally, for versions 2.4.7-p3, 2.4.7-p4, and 2.4.7-p5, the Braintree extension version 4.6.1-p5 may be installed, while some users expect 4.6.1-p3 or p4, due to prior stricter dependencies having been relaxed to allow for extension upgrades within a release line. <!-- AC-14430 -->

**Workaround**: To ensure that you have the correct Braintree version for your PHP version, run `composer update` to install the appropriate version as dictated by the `adobe-commerce/extensions-metapackage:2.0.0` dependency.

## 2.4.7-p4

The Adobe Commerce 2.4.7-p4 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-08](https://helpx.adobe.com/security/products/magento/apsb25-08.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-02.md}}

## 2.4.7-p3

The Adobe Commerce 2.4.7-p3 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-73](https://helpx.adobe.com/security/products/magento/apsb24-73.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-10.md}}

### Hotfixes included in this release

{{$include /help/_includes/release-notes/hotfixes/included-2024-10.md}}

## 2.4.7-p2

The Adobe Commerce 2.4.7-p2 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-61](https://helpx.adobe.com/security/products/magento/apsb24-61.html).

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-08.md}}

### Hotfixes included in this release

{{$include /help/_includes/release-notes/hotfixes/included-2024-08.md}}

## 2.4.7-p1

The Adobe Commerce 2.4.7-p1 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

### Apply hotfix for CVE-2024-34102

{{$include /help/_includes/release-notes/hotfixes/not-included-2024-06.md}}

### Highlights

This release includes the following highlights:

* **Update [one-time password (OTP) settings](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/2fa/security-two-factor-authentication#google) for Google Authenticator**–This update is required to resolve an error that was introduced by a [backward-incompatible change](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/#new-system-configuration-validation-for-two-factor-authentication-otp_window-value) in 2.4.7. The description of the **[!UICONTROL OTP Window]** field now provides an accurate explanation of the setting and the default value has been changed from `1` to `29`.

* **B2B version compatibility**—For compatibility with Commerce version 2.4.7-p1, merchants that have the Adobe Commerce B2B extension must upgrade to [B2B version 1.4.2-p1](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/release-notes#b2b-v142-p1).

### Hotfixes included in this release

Adobe Commerce 2.4.7-p1 resolves an issue introduced in the scope of the UPS integration migration from SOAP to REST API. This issue affected customers who ship outside of the US and prevented them from using the Metric System/SI measurements of kilograms and centimeters for packages to create shipments with UPS. See the [UPS shipping method integration migration from SOAP to RESTful API](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/ups-shipping-method-integration-migration-from-soap-to-restful-api) knowledge base article for details.

<!-- Last updated from includes: 2025-10-02 11:09:59 -->
