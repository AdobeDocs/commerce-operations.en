---
title: Adobe Commerce 2.4.7 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
exl-id: 38e5632b-c795-47d8-89dd-26bbaeb34e67
---
# Release notes for Adobe Commerce 2.4.7 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

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
