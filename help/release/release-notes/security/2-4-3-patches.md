---
title: Release Notes for Adobe Commerce 2.4.3 Security Patches
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.3.
exl-id: 72d343cd-83d7-48ce-976a-e26ba1b8db27
---

# Release notes for Adobe Commerce 2.4.3 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

## Adobe Commerce 2.4.3-p3

The Adobe Commerce 2.4.3-p3 security release provides security fixes for vulnerabilities that have been identified in previous releases of 2.4.3. This release also includes security enhancements that improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB22-38](https://helpx.adobe.com/security/products/magento/apsb22-38.html).

### Apply AC-3022.patch to continue offering DHL as a shipping carrier

DHL has introduced schema version 6.2 and will deprecate schema version 6.0 in the near future. Adobe Commerce 2.4.4 and earlier versions that support the DHL integration support only version 6.0. Merchants deploying these releases should apply `AC-3022.patch` at their earliest convenience to continue offering DHL as a shipping carrier. See the [Apply a patch to continue offering DHL as a shipping carrier](https://support.magento.com/hc/en-us/articles/7707818131597-Apply-a-patch-to-continue-offering-DHL-as-shipping-carrier) Knowledge Base article for information about downloading and installing the patch.

### Security highlights

* ACL resources have been added to the Inventory.
* Inventory template security has been enhanced.



## Adobe Commerce 2.4.3-p2

The Adobe Commerce 2.4.3-p2 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements that improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB22-13](https://helpx.adobe.com/security/products/magento/apsb22-13.html).  The patch release also resolves the vulnerability addressed by `MDVA-43395_EE_2.4.3-p1_COMPOSER_v1.patch.zip`, `MDVA-43443_EE_2.4.3-p1_COMPOSER_v1.patch.zip`,`MDVA-43395_EE_2.4.3-p1_COMPOSER_v1.patch`, and `MDVA-43443_EE_2.4.3-p1_COMPOSER_v1.patch`.


### Apply AC-3022.patch to continue offering DHL as a shipping carrier

DHL has introduced schema version 6.2 and will deprecate schema version 6.0 in the near future. Adobe Commerce 2.4.4 and earlier versions that support the DHL integration support only version 6.0. Merchants deploying these releases should apply `AC-3022.patch` at their earliest convenience to continue offering DHL as a shipping carrier. See the [Apply a patch to continue offering DHL as a shipping carrier](https://support.magento.com/hc/en-us/articles/7707818131597-Apply-a-patch-to-continue-offering-DHL-as-shipping-carrier) Knowledge Base article for information about downloading and installing the patch.

### Security highlights

* Email variable usage was deprecated back in 2.3.4 as part of a security risk mitigation in favor of a more strict variable syntax. This legacy behavior has been fully removed in this release as a continuation of that security risk mitigation.

   As a result, email or newsletter templates that worked in previous versions may not work correctly after upgrading to Adobe Commerce 2.4.3-p2. Affected templates include admin overrides, themes, child themes, and templates from custom modules or third-party extensions. Your deployment may still be affected even after using the [Upgrade compatibility tool](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/upgrade-compatibility-tool/overview.html?lang=en) to fix deprecated usages. See [Migrating custom email templates](https://developer.adobe.com/commerce/frontend-core/guide/templates/email-migration/) for information about potential effects and guidelines for migrating affected templates.

* OAuth access tokens and password reset tokens are now encrypted when stored in the database. <!-- AC-520 1323-->

* Validation has been strengthened to prevent the upload of non alpha-numeric file extensions. <!-- AC-479-->

* Swagger is now disabled by default when Adobe Commerce is in production mode. <!-- AC-1450-->

* Developers can now configure the size limit for arrays accepted by Adobe Commerce RESTful endpoints on a per-endpoint basis. See [API security](https://developer.adobe.com/commerce/webapi/get-started/api-security/). <!-- AC-465-->

* Added mechanisms for limiting the size and number of resources that a user can request through a web API on a system-wide basis, and for overriding the defaults on individual modules. This enhancement resolves the issue addressed by `MC-43048__set_rate_limits__2.4.3.patch`. See [API security](https://developer.adobe.com/commerce/webapi/get-started/api-security/). <!-- AC-1120-->


## 2.4.3-p1

The Adobe Commerce 2.4.3-p1 security release provides security bug fixes for vulnerabilities that have been identified in the previous release (Adobe Commerce 2.4.3 and Magento Open Source 2.4.3). This release also includes security enhancements that improve compliance with the latest security best practices.


For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB21-86](https://helpx.adobe.com/security/products/magento/apsb21-86.html). The patch release also provides bug fixes for the [Braintree](https://experienceleague.adobe.com/docs/commerce-admin/stores-sales/payments/braintree.html), [Klarna](https://marketplace.magento.com/klarna-m2-klarna.html), and [Vertex](https://marketplace.magento.com/vertexinc-vertex-tax-module.html) vendor-developed extensions.

### Apply AC-3022.patch to continue offering DHL as a shipping carrier

DHL has introduced schema version 6.2 and will deprecate schema version 6.0 in the near future. Adobe Commerce 2.4.4 and earlier versions that support the DHL integration support only version 6.0. Merchants deploying these releases should apply `AC-3022.patch` at their earliest convenience to continue offering DHL as a shipping carrier. See the [Apply a patch to continue offering DHL as a shipping carrier](https://support.magento.com/hc/en-us/articles/7707818131597-Apply-a-patch-to-continue-offering-DHL-as-shipping-carrier) Knowledge Base article for information about downloading and installing the patch.

### Hotfixes

This release includes the following hotfix, and all hotfixes that have been released for the preceding patch release.

* Patch `AC-384__Fix_Incompatible_PHP_Method__2.3.7-p1_ce.patch to address PHP fatal error on upgrade`. See the [Adobe Commerce upgrade 2.4.3, 2.3.7-p1 PHP Fatal error Hotfix](https://support.magento.com/hc/en-us/articles/4408021533069-Adobe-Commerce-upgrade-2-4-3-2-3-7-p1-PHP-Fatal-error-Hotfix) Knowledge Base article for information on both patch and issue.

### Security highlights

**Session IDs have been removed from the database**. This code change may result in breaking changes if merchants have customizations or installed extensions that use the raw session IDs stored in the database. <!-- MC-40976-->

**Restricted admin access to Media Gallery folders**. Default Media Gallery permissions now allow only directory operations (view, upload, delete, and create) that are allowed explicitly by configuration. Admin users can no longer access media assets through the Media Gallery that were uploaded outside of the `catalog/category` or `wysiwyg` directories. Administrators who want to access media assets must move them to an explicitly allowed folder or adjust their configuration settings. See [Modify Media Library folder permissions](https://developer.adobe.com/commerce/php/tutorials/backend/modify-image-library-permissions/). <!-- B2B-1897-->

**Lowered limits to GraphQL query complexity**. The GraphQL maximum allowed query complexity has been lowered to prevent Denial-of-Service (DOS) attacks. See [GraphQL security configuration](https://developer.adobe.com/commerce/webapi/graphql/usage/security-configuration/). <!-- PWA-1700-->

**Recent penetration test vulnerabilities** have been fixed in this release. <!-- MC-42431-->

The unsupported source expression `unsafe-inline` has been removed from the Content Security Policy `frame-ancestors` directive. [GitHub-33101](https://github.com/magento/magento2/issues/33101)<!-- MC-42632-->

<!-- Last updated from includes: 2025-05-28 17:01:56 -->
