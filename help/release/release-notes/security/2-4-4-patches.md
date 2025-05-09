---
title: Adobe Commerce 2.4.4 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.4.
exl-id: 136d7090-6bf2-41e3-8445-b07bdc67f12b
---

# Release notes for Adobe Commerce 2.4.4 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

## 2.4.4-p13

The Adobe Commerce 2.4.4-p13 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.4.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-26](https://helpx.adobe.com/security/products/magento/apsb25-26.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-04.md}}

## 2.4.4-p12

The Adobe Commerce 2.4.4-p12 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.4.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-08](https://helpx.adobe.com/security/products/magento/apsb25-08.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-02.md}}

## 2.4.4-p11

The Adobe Commerce 2.4.4-p11 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.4.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-73](https://helpx.adobe.com/security/products/magento/apsb24-73.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-10.md}}

## 2.4.4-p10

The Adobe Commerce 2.4.4-p10 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.4.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-61](https://helpx.adobe.com/security/products/magento/apsb24-61.html).

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-08.md}}

### Hotfixes included in this release

{{$include /help/_includes/release-notes/hotfixes/included-2024-08.md}}

## 2.4.4-p9

The Adobe Commerce 2.4.4-p9 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.4.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

### Apply hotfix for CVE-2024-34102

{{$include /help/_includes/release-notes/hotfixes/not-included-2024-06.md}}

### Platform upgrades

* **MariaDB 10.5 support**. This patch release introduces compatibility with MariaDB version 10.5. Adobe Commerce is still compatible with MariaDB version 10.4, but Adobe recommends using Adobe Commerce 2.4.4-p9 and all upcoming 2.4.4 security-only patch releases only with MariaDB version 10.5 because MariaDB 10.4 maintenance ends on June 18, 2024. <!--AC-11530-->

### Highlights

{{$include /help/_includes/release-notes/highlights/2-4-7-security.md}}

## 2.4.4-p8

The Adobe Commerce 2.4.4-p8 security release provides security bug fixes for your Adobe Commerce 2.4.4 deployment. These updates fix vulnerabilities that have been identified in previous releases.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-18](https://helpx.adobe.com/security/products/magento/apsb24-18.html).

## 2.4.4-p7

The Adobe Commerce 2.4.4-p7 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements that improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-03](https://helpx.adobe.com/security/products/magento/apsb24-03.html).

### Highlights

This release introduces two significant security enhancements:

* **Changes to the behavior of non-generated cache keys**:

  * Non-generated cache keys for blocks now include prefixes that differ from prefixes for keys that are generated automatically. (Non-generated cache keys are keys that are set through template directive syntax or the `setCacheKey` or `setData` methods.)
  * Non-generated cache keys for blocks now must contain only letters, digits, hyphens (-), and underscore characters (_). <!-- AC-9831 -->

* **Limitations on the number of auto-generated coupon codes**. Commerce now limits the number of coupon codes that are automatically generated. The default maximum is 250,000. Merchants can use the new **[!UICONTROL Code Quantity Limit]** configuration option (**[!UICONTROL Stores]** > **[!UICONTROL Settings:Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Promotions]**) to control this new limit. <!-- AC-8753 -->

## 2.4.4-p6

The Adobe Commerce 2.4.4-p6 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements that improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-50](https://helpx.adobe.com/security/products/magento/apsb23-50.html).

This release also includes security enhancements that improve compliance with the latest security best practices.

### Highlights

This release introduces a new full page cache configuration setting that helps to mitigate the risks associated with the `{BASE-URL}/page_cache/block/esi HTTP` endpoint. This endpoint supports unrestricted, dynamically loaded content fragments from Commerce layout handles and block structures. The new **[!UICONTROL Handles Param]** configuration setting sets the value of this endpoint's `handles` parameter, which determines the maximum allowed number of handles per API. The default value of this property is 100. Merchants can change this value from the Admin (**[!UICONTROL Stores]** > **[!UICONTROL Settings: Configuration]** > **[!UICONTROL System]** > **[!UICONTROL Full Page Cache]** > **[!UICONTROL Handles Param]**). <!-- AC-9113 -->

### Known issues

**Issue**: Adobe Commerce displays a **wrong checksum** error during download by Composer from `repo.magento.com`, and package download is interrupted. This issue can occur during download of release packages that were made available during prerelease and is caused by a repackaging of the `magento/module-page-cache` package.

**Workaround**: Merchants who see this error during download can take these steps:

1) Delete the `/vendor` directory inside the project, if one exists. 
2) Run the `bin/magento composer update magento/module-page-cache` command. This command updates only the `page cache` package.

If the checksum problem persists, remove the `composer.lock` file before re-running the `bin/magento composer update` command to update every package.

## 2.4.4-p5

The Adobe Commerce 2.4.4-p5 security release provides security bug fixes for vulnerabilities that have been identified in previous releases.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-42](https://helpx.adobe.com/security/products/magento/apsb23-42.html).

### Apply hotfix for CVE-2022-31160

`jQuery-UI` library version 1.13.1 has a known security vulnerability (CVE-2022-31160) that affects multiple versions of Adobe Commerce and Magento Open Source. This library is a dependency of Adobe Commerce and Magento Open Source 2.4.4, 2.4.5, and 2.4.6. Merchants running affected deployments should apply the patch specified in the [jQuery UI security vulnerability CVE-2022-31160 fix for 2.4.4, 2.4.5, and 2.4.6 releases](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/jquery-cve-2022-31160-fix-2.4.4-2.4.5-2.4.6.html) Knowledge Base article.

## 2.4.4-p4

The Adobe Commerce 2.4.4-p4 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements and platform upgrades to improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-35](https://helpx.adobe.com/security/products/magento/apsb23-35.html).

### Apply hotfix for CVE-2022-31160

`jQuery-UI` library version 1.13.1 has a known security vulnerability (CVE-2022-31160) that affects multiple versions of Adobe Commerce and Magento Open Source. This library is a dependency of Adobe Commerce and Magento Open Source 2.4.4, 2.4.5, and 2.4.6. Merchants running affected deployments should apply the patch specified in the [jQuery UI security vulnerability CVE-2022-31160 fix for 2.4.4, 2.4.5, and 2.4.6 releases](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/jquery-cve-2022-31160-fix-2.4.4-2.4.5-2.4.6.html) Knowledge Base article.

### Highlights

The default behavior of the [`isEmailAvailable`](https://developer.adobe.com/commerce/webapi/graphql/schema/customer/queries/is-email-available/) GraphQL query and ([`V1/customers/isEmailAvailable`](https://adobe-commerce.redoc.ly/2.4.6-admin/tag/customersisEmailAvailable/#operation/PostV1CustomersIsEmailAvailable)) REST endpoint has changed. By default, the API now always returns `true`. Merchants can enable the original behavior, which is to return `true` if the email does not exist in the database and `false` if it exists. <!-- AC-6695 -->

### Platform upgrades

Platform upgrades for this release improve compliance with the latest security best practices. 

* **Varnish cache 7.3 support**. This release is compatible with the latest version of Varnish Cache 7.3. Compatibility remains with the 6.0.x and 7u.2.x versions, but Adobe recommends using Adobe Commerce 2.4.4-p4 only with Varnish Cache version 7.3 or version 6.0 LTS.

* **RabbitMQ 3.11 support**. This release is compatible with the latest version of RabbitMQ 3.11. Compatibility remains with RabbitMQ 3.9, which is supported through August 2023, but Adobe recommends using Adobe Commerce 2.4.4-p4 only with RabbitMQ 3.11.

* **JavaScript libraries**. Outdated JavaScript libraries have been upgraded to the latest minor or patch versions, including `moment.js` library (v2.29.4), `jQuery UI` library (v1.13.2), and `jQuery` validation plugin library (v1.19.5).

## 2.4.4-p3

The Adobe Commerce 2.4.4-p3 security release provides security bug fixes for vulnerabilities that have been identified in previous releases.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-17](https://helpx.adobe.com/security/products/magento/apsb23-17.html).

## 2.4.4-p2

The Adobe Commerce 2.4.4-p2 security release provides fixes for vulnerabilities that have been identified in previous releases. One fix includes the creation of a new configuration setting. The **Require email confirmation if email has been changed** configuration setting lets administrators require email confirmation when an admin user changes their email address. <!-- AC-6292-->

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB22-48](https://helpx.adobe.com/security/products/magento/apsb22-48.html).

### Apply AC-3022.patch to continue offering DHL as a shipping carrier

DHL has introduced schema version 6.2 and will deprecate schema version 6.0 in the near future. Adobe Commerce 2.4.4 and earlier versions that support the DHL integration support only version 6.0. Merchants deploying these releases should apply `AC-3022.patch` at their earliest convenience to continue offering DHL as a shipping carrier. See the [Apply a patch to continue offering DHL as a shipping carrier](https://support.magento.com/hc/en-us/articles/7707818131597-Apply-a-patch-to-continue-offering-DHL-as-shipping-carrier?_ga=2.201689433.994140970.1661546561-1218319047.1534347481) Knowledge Base article for information about downloading and installing the patch.

## 2.4.4-p1

The Adobe Commerce 2.4.4-p1 security release provides fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements to improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin](https://helpx.adobe.com/security/products/magento/apsb22-38.html).t

### Apply `AC-3022.patch` to continue offering DHL as a shipping carrier

DHL has introduced schema version 6.2 and will deprecate schema version 6.0 in the near future. Adobe Commerce 2.4.4 and earlier versions that support the DHL integration support only version 6.0. Merchants deploying these releases should apply `AC-3022.patch` at their earliest convenience to continue offering DHL as a shipping carrier. See the [Apply a patch to continue offering DHL as a shipping carrier](https://support.magento.com/hc/en-us/articles/7707818131597-Apply-a-patch-to-continue-offering-DHL-as-shipping-carrier) Knowledge Base article for information about downloading and installing the patch.

### Highlights

Security improvements for this release improve compliance with the latest security best practices, including:

* ACL resources have been added to the Inventory.
* Inventory template security has been enhanced.

### Known issues

**Issue**: Web API and integration tests display this error when run on the 2.4.4-p1 package: `[2022-06-14T16:58:23.694Z] PHP Fatal error:  Declaration of Magento\TestFramework\ErrorLog\Logger::addRecord(int $level, string $message, array $context = []): bool must be compatible with Monolog\Logger::addRecord(int $level, string $message, array $context = [], ?Monolog\DateTimeImmutable $datetime = null): bool in /var/www/html/dev/tests/integration/framework/Magento/TestFramework/ErrorLog/Logger.php on line 69`. **Workaround**: Install the previous version of Monolog by running the `require monolog/monolog:2.6.0` command. <!-- AC-3651-->

**Issue**: Merchants may notice package version downgrade notices during an upgrade from Adobe Commerce 2.4.4 to Adobe Commerce 2.4.4-p1. These messages can be ignored. The discrepancy in package versions results from anomalies during package generation. No product functionality has been affected. See the [Packages downgraded after upgrading from 2.4.4 to 2.4.4-p1](https://support.magento.com/hc/en-us/articles/8214752983949) Knowledge Base article for a discussion of affected scenarios and workarounds.
