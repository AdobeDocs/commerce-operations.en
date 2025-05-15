---
title: Adobe Commerce 2.4.6 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.6.
exl-id: cde096ac-d192-490d-873a-475996c474ff
---

# Release notes for Adobe Commerce 2.4.6 security patches

{{$include /help/_includes/release-notes/security-patch-intro.md}}

## 2.4.6-p10

The Adobe Commerce 2.4.6-p10 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.6.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-26](https://helpx.adobe.com/security/products/magento/apsb25-26.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-04.md}}

## 2.4.6-p9

The Adobe Commerce 2.4.6-p9 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.6.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB25-08](https://helpx.adobe.com/security/products/magento/apsb25-08.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2025-02.md}}

## 2.4.6-p8

The Adobe Commerce 2.4.6-p8 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.6.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-73](https://helpx.adobe.com/security/products/magento/apsb24-73.html).

{{b2b-patches}}

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-10.md}}

### Hotfixes included in this release

{{$include /help/_includes/release-notes/hotfixes/included-2024-10.md}}

## 2.4.6-p7

The Adobe Commerce 2.4.6-p7 security release provides security bug fixes for vulnerabilities identified in previous releases of 2.4.6.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-61](https://helpx.adobe.com/security/products/magento/apsb24-61.html).

### Highlights

{{$include /help/_includes/release-notes/highlights/security-2024-08.md}}

### Hotfixes included in this release

{{$include /help/_includes/release-notes/hotfixes/included-2024-08.md}}

## 2.4.6-p6

The Adobe Commerce 2.4.6-p6 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.6.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

For compatibility with Commerce version 2.4.6-p6, merchants that have the Adobe Commerce B2B extension must upgrade to [B2B version 1.4.2-p1](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/release-notes#b2b-v142-p1).

### Apply hotfix for CVE-2024-34102

{{$include /help/_includes/release-notes/hotfixes/not-included-2024-06.md}}

For compatibility with Commerce version 2.4.6-p6, merchants that have the Adobe Commerce B2B extension must upgrade to [B2B version 1.4.2-p1](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/release-notes#b2b-v142-p1).

### Highlights

{{$include /help/_includes/release-notes/highlights/2-4-7-security.md}}

## 2.4.6-p5

The Adobe Commerce 2.4.6-p5 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.6.

For the latest information about these fixes, see [Adobe Security Bulletin APSB24-18](https://helpx.adobe.com/security/products/magento/apsb24-18.html).

## 2.4.6-p4

The Adobe Commerce 2.4.6-p4 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements that improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-03](https://helpx.adobe.com/security/products/magento/apsb24-03.html).

### Highlights

This release introduces two significant security enhancements:

* **Changes to the behavior of non-generated cache keys**:

  * Non-generated cache keys for blocks now include prefixes that differ from prefixes for keys that are generated automatically. (Non-generated cache keys are keys that are set through template directive syntax or the `setCacheKey` or `setData` methods.)
  * Non-generated cache keys for blocks now must contain only letters, digits, hyphens (-), and underscore characters (_).  <!-- AC-9831 -->

* **Limitations on the number of auto-generated coupon codes**. Commerce now limits the number of coupon codes that are automatically generated. The default maximum is 250,000. Merchants can use the new **[!UICONTROL Code Quantity Limit]** configuration option (**[!UICONTROL Stores]** > **[!UICONTROL Settings:Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Promotions]**) to control this new limit. <!-- AC-8753 -->

## 2.4.6-p3

The Adobe Commerce 2.4.6-p3 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements to improve compliance with the latest security best practices.

For the latest information about the security fixes, see [Adobe Security Bulletin APSB23-50](https://helpx.adobe.com/security/products/magento/apsb23-50.html).

### Highlights

This release introduces a new full page cache configuration setting that helps to mitigate the risks associated with the `{BASE-URL}/page_cache/block/esi HTTP` endpoint. This endpoint supports unrestricted, dynamically loaded content fragments from Commerce layout handles and block structures. The new **[!UICONTROL Handles Param]** configuration setting sets the value of this endpoint's `handles` parameter, which determines the maximum allowed number of handles per API. The default value of this property is 100. Merchants can change this value from the Admin (**[!UICONTROL Stores]** > **[!UICONTROL Settings:Configuration]** > **[!UICONTROL System]** > **[!UICONTROL Full Page Cache]** > **[!UICONTROL Handles Param]**. <!-- AC-9113 -->

### Hotfixes included in this release

Adobe Commerce 2.4.6-p3 includes resolution of the performance degradation fixed by patch ACSD-51892. Merchants are not affected by the issue addressed by this patch, which is described in the [ACSD-51892: Performance issue where config files load multiple times](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/v1-1-33/acsd-51892-performance-issue-where-config-files-load-multiple-times.html) Knowledge Base article.

### Known issues

**Issue**: Adobe Commerce displays a `wrong checksum` error during download by Composer from `repo.magento.com`, and package download is interrupted. This issue can occur during download of release packages made available during the prerelease period and is caused by a repackaging of the `magento/module-page-cache` package.

**Workaround**: Merchants who see this error during download can take these steps:

1) Delete the `/vendor` directory inside the project, if one exists.
2) Run the `bin/magento composer update magento/module-page-cache` command. This command updates only the `page cache` package.

If the checksum problem persists, remove the `composer.lock` file before re-running the `bin/magento composer update` command to update every package.

## 2.4.6-p2

The Adobe Commerce 2.4.6-p2 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also provides security enhancements to improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-42](https://helpx.adobe.com/security/products/magento/apsb23-42.html).

### Apply hotfix for CVE-2022-31160

`jQuery-UI` library version 1.13.1 has a known security vulnerability (CVE-2022-31160) that affects multiple versions of Adobe Commerce and Magento Open Source. This library is a dependency of Adobe Commerce and Magento Open Source 2.4.4, 2.4.5, and 2.4.6. Merchants running affected deployments should apply the patch specified in the [jQuery UI security vulnerability CVE-2022-31160 fix for 2.4.4, 2.4.5, and 2.4.6 releases](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/jquery-cve-2022-31160-fix-2.4.4-2.4.5-2.4.6.html) Knowledge Base article.

### Highlights

The value of `fastcgi_pass` in the `nginx.sample` file has been returned to it's previous (pre-2.4.6-p1) value of `fastcgi_backend`. This value was inadvertently changed to `php-fpm:9000` in Adobe Commerce 2.4.6-p1.

### Hotfixes included in this release

Adobe Commerce 2.4.6-p2 includes resolution of the performance degradation that was addressed by patch ACSD-51892. Merchants are not affected by the issue addressed by this patch, which is described in the [ACSD-51892: Performance issue where config files load multiple times](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/v1-1-33/acsd-51892-performance-issue-where-config-files-load-multiple-times.html) Knowledge Base article.

## 2.4.6-p1

The Adobe Commerce 2.4.6-p1 security release provides security bug fixes for vulnerabilities that have been identified in previous releases. This release also includes security enhancements and platform upgrades to improve compliance with the latest security best practices.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB23-35](https://helpx.adobe.com/security/products/magento/apsb23-35.html).

### Apply hotfix for CVE-2022-31160

`jQuery-UI` library version 1.13.1 has a known security vulnerability (CVE-2022-31160) that affects multiple versions of Adobe Commerce and Magento Open Source. This library is a dependency of Adobe Commerce and Magento Open Source 2.4.4, 2.4.5, and 2.4.6. Merchants running affected deployments should apply the patch specified in the [Query UI security vulnerability CVE-2022-31160 fix for 2.4.4, 2.4.5, and 2.4.6 releases](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/jquery-cve-2022-31160-fix-2.4.4-2.4.5-2.4.6.html) Knowledge Base article.

#### Highlight

The default behavior of the [`isEmailAvailable`](https://developer.adobe.com/commerce/webapi/graphql/schema/customer/queries/is-email-available/) GraphQL query and ([`V1/customers/isEmailAvailable`](https://adobe-commerce.redoc.ly/2.4.6-admin/tag/customersisEmailAvailable/#operation/PostV1CustomersIsEmailAvailable)) REST endpoint has changed. By default, the API now always returns `true`. Merchants can enable the original behavior, which is to return `true` if the email does not exist in the database and `false` if it exists. <!-- AC-6695 -->

### Platform upgrades

Platform upgrades for this release improve compliance with the latest security best practices.

* **Varnish cache 7.3 support**. This release is compatible with the latest version of Varnish Cache 7.3. Compatibility remains with the 6.0.x and 7.2.x versions, but Adobe recommended using Adobe Commerce 2.4.6-p1 only with Varnish Cache version 7.3 or version 6.0 LTS.

* **RabbitMQ 3.11 support**. This release is compatible with the latest version of RabbitMQ 3.11. Compatibility remains with RabbitMQ 3.9, which is supported through August 2023, but Adobe recommended using Adobe Commerce 2.4.6-p1 only with RabbitMQ 3.11.

* **JavaScript libraries**. Outdated JavaScript libraries have been upgraded to the latest minor or patch versions, including `moment.js` library (v2.29.4), `jQuery UI` library (v1.13.2), and `jQuery` validation plugin library (v1.19.5).

### Known issues

* The `nginx.sample` file was inadvertently updated with a change that modifies the value of `fastcgi_pass` from `fastcgi_backend` to `php-fpm:9000`. This change can be safely reverted or ignored. <!-- AC-8992 -->

* Missing dependencies for the B2B security package cause the following installation error when installing or upgrading the B2B extension to 1.4.0.

  ```
  Your requirements could not be resolved to an installable set of packages.

    Problem 1
      - Root composer.json requires magento/extension-b2b 1.4.0 -> satisfiable by magento/extension-b2b[1.4.0].
      - magento/extension-b2b 1.4.0 requires magento/security-package-b2b 1.0.4-beta1 -> found magento/security-package-b2b[1.0.4-beta1] but it does not match your minimum-stability.

  Installation failed, reverting ./composer.json and ./composer.lock to their original content.
  ```

  This issue can be resolved by adding manual dependencies for the B2B security package with a [stability tag](https://getcomposer.org/doc/04-schema.md#package-links). For details, see the [B2B release notes](https://experienceleague.adobe.com/docs/commerce-admin/b2b/release-notes.html#known-issue).
