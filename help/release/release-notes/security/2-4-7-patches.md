---
title: Adobe Commerce 2.4.7 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
---

# Release notes for Adobe Commerce 2.4.7 security patches

{{$include /help/_includes/security-patch-release-notes-intro.md}}

## Adobe Commerce 2.4.7-p1

The Adobe Commerce 2.4.7-p1 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.7.

For the latest information about these fixes, see [Adobe Security Bulletin APSB24-](https://helpx.adobe.com/security/products/magento/APSB24-##.html).

## Security highlight

This release includes an update to the [one-time password (OTP) settings](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/2fa/security-two-factor-authentication#google) for Google Authenticator to resolve an error that was introduced by a [backward-incompatible change](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/#new-system-configuration-validation-for-two-factor-authentication-otp_window-value) in 2.4.7. The description of the **[!UICONTROL OTP Window]** field now provides an accurate explanation of the setting and the default value has been changed from `1` to `29`.
