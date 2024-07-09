---
title: Adobe Commerce 2.4.7 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
exl-id: 38e5632b-c795-47d8-89dd-26bbaeb34e67
---
# Release notes for Adobe Commerce 2.4.7 security patches

{{$include /help/_includes/security-patch-release-notes-intro.md}}

## 2.4.7-p2

The Adobe Commerce 2.4.7-p2 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

### Highlights

This release includes a fix for the [!DNL Prototype.js] security vulnerability ([CVE-2020-27511](https://nvd.nist.gov/vuln/detail/CVE-2020-27511)).

### Hotfixes included in this release

Adobe Commerce 2.4.7-2 resolves a JavaScript error that prevented Google Maps from rendering properly in the [!UICONTROL **PageBuilder**] editor. See the [Revised patches for Google Maps access loss on all Adobe Commerce versions](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/site-down-or-unresponsive/revised-patches-for-google-maps-access-loss-on-all-adobe-commerce-versions) knowledge base article for details.<!-- AC-11936, ACP2E-3156 -->

## 2.4.7-p1

The Adobe Commerce 2.4.7-p1 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

### Highlights

* **Update [one-time password (OTP) settings](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/2fa/security-two-factor-authentication#google) for Google Authenticator**–This update is required to resolve an error that was introduced by a [backward-incompatible change](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/#new-system-configuration-validation-for-two-factor-authentication-otp_window-value) in 2.4.7. The description of the **[!UICONTROL OTP Window]** field now provides an accurate explanation of the setting and the default value has been changed from `1` to `29`.

* **B2B version compatibility**—For compatibility with Commerce version 2.4.7-p1, merchants that have the Adobe Commerce B2B extension must upgrade to [B2B version 1.4.2-p1](https://experienceleague.adobe.com/docs/commerce-admin/b2b/release-notes#b2b-v142p1.html).

### Hotfixes included in this patch

Adobe Commerce 2.4.7-p1 resolves an issue introduced in the scope of the UPS integration migration from SOAP to REST API. This issue affected customers who ship outside of the US and prevented them from using the Metric System/SI measurements of kilograms and centimeters for packages to create shipments with UPS. See the [UPS shipping method integration migration from SOAP to RESTful API](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/ups-shipping-method-integration-migration-from-soap-to-restful-api) knowledge base article for details.
