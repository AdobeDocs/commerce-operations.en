---
title: Adobe Commerce 2.4.7 Security Patch Release Notes
description: Learn about security bug fixes, security enhancements, and other security related updates included in the security patch releases for Adobe Commerce version 2.4.7.
---

# Release notes for Adobe Commerce 2.4.7 security patches

{{$include /help/_includes/security-patch-release-notes-intro.md}}

## Adobe Commerce 2.4.7-p1

The Adobe Commerce 2.4.7-p1 security release provides security bug fixes for vulnerabilities that have been identified in previous releases of 2.4.7.

For the latest information about the security bug fixes, see [Adobe Security Bulletin APSB24-40](https://helpx.adobe.com/security/products/magento/apsb24-40.html).

### Security highlight

This release includes an update to the [one-time password (OTP) settings](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/2fa/security-two-factor-authentication#google) for Google Authenticator to resolve an error that was introduced by a [backward-incompatible change](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/#new-system-configuration-validation-for-two-factor-authentication-otp_window-value) in 2.4.7. The description of the **[!UICONTROL OTP Window]** field now provides an accurate explanation of the setting and the default value has been changed from `1` to `29`.

### Additional security enhancements

No confirmed attacks related to these issues have occurred to date. However, certain vulnerabilities can potentially be exploited to access customer information or take over administrator sessions. Most of these issues require that an attacker first obtains access to the Admin. As a result, we remind you to take all necessary steps to protect your Admin, including but not limited to these efforts:

* IP allowlisting
* [Two-factor authentication](https://developer.adobe.com/commerce/testing/functional-testing-framework/two-factor-authentication/)
* Use of a VPN
* Use of a unique location rather than `/admin`
* Good password hygiene

Security improvements for this release improve compliance with the latest security best practices.

* **Changes to the behavior of non-generated cache keys**:

  * Non-generated cache keys for blocks now include prefixes that differ from prefixes for keys that are generated automatically. (Non-generated cache keys are keys that are set through template directive syntax or the `setCacheKey` or `setData` methods.) 
  * Non-generated cache keys for blocks now must contain only letters, digits, hyphens (-), and underscore characters (_).  <!-- AC-9831 -->

* **Limitations on the number of auto-generated coupon codes**. Commerce now limits the number of coupon codes that are automatically generated. The default maximum is 250,000. Merchants can use the new **[!UICONTROL Code Quantity Limit]** configuration option (**[!UICONTROL Stores]** > **[!UICONTROL Settings:Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Promotions]**) to prevent potentially overwhelming the system with many coupons. <!-- AC-8753 -->

* **Optimization of the default Admin URL generation process**. The generation of the default Admin URL has been optimized for increased randomness, which makes generated URLs less predictable. <!-- AC-9028 -->

* **Added Subresource Integrity (SRI) support** to comply with PCI 4.0 requirements for verification of script integrity on payment pages. Subresource Integrity (SRI) support provides integrity hashes for all JavaScript assets residing in the local filesystem. The default SRI feature is implemented only on the payment pages for the Admin and storefront areas. However, merchants can extend the default configuration to other pages. See [Subresource Integrity](https://developer.adobe.com/commerce/php/development/security/subresource-integrity/) in the _Commerce PHP Developer Guide_.<!--AC-1153-->

* **Changes to Content Security Policy (CSP)**—Configuration updates and enhancements to Adobe Commerce Content Security Policies (CSPs) to comply with PCI 4.0 requirements. For details, see [Content Security Policies](https://developer.adobe.com/commerce/php/development/security/content-security-policies/) in the _Commerce PHP Developer Guide_. <!--AC-11513-->

  * The default CSP configuration for payment pages for Commerce Admin and storefront areas is now `restrict` mode. For all other pages, the default configuration is `report-only` mode.  In releases prior to 2.4.7,  CSP was configured in `report-only` mode for all pages.

  * Added a nonce provider to allow execution of inline scripts in a CSP. The nonce provider facilitates the generation of unique nonce strings for each request. The strings are then attached to the CSP header.

  * Added options to configure custom URIs to report CSP violations for the Create Order page in the Admin and the Checkout page in the storefront. You can add the configuration from the Admin or by adding the URI to the `config.xml` file.

    >[!NOTE]
    >
    >Updating the CSP configuration to `restrict` mode might block existing inline scripts on payment pages in the Admin and storefront, which causes the following browser error when a page loads: `Refused to execute inline script because it violates the following Content Security Policy directive: "script-src`. Fix these errors by updating the whitelist configuration to allow required scripts. See [Troubleshooting](https://developer.adobe.com/commerce/php/development/security/content-security-policies/#troubleshooting) in the _Commerce PHP Developer Guide_.

* A new full-page cache configuration setting can help to mitigate the risks associated with the HTTP `{BASE-URL}/page_cache/block/esi` endpoint. This endpoint supports unrestricted, dynamically loaded content fragments from Commerce layout handles and block structures. The new **[!UICONTROL Handles params size]** configuration setting sets the value of this endpoint's `handles` parameter, which determines the maximum allowed number of handles per API. The default value of this property is 100. Merchants can change this value from the Admin (**[!UICONTROL Stores]** > **[!UICONTROL Settings:Configuration]** > **[!UICONTROL System]** > **[!UICONTROL Full Page Cache]** > **[!UICONTROL Handles params size]**). See [Configure the Commerce application to use Varnish](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cache/configure-varnish-commerce.html). <!-- AC-9113 -->

* **Native rate limiting for payment information transmitted through REST and GraphQL APIs**. Merchants can now [configure rate limiting](https://experienceleague.adobe.com/en/docs/commerce-admin/config/sales/sales#rate-limiting) for the payment information transmitted using REST and GraphQL. This added layer of protection supports prevention of carding attacks and potentially decreases the volume of carding attacks that test many credit card numbers at once. This is a change in the default behavior of an existing REST endpoint. See [Rate limiting](https://developer.adobe.com/commerce/webapi/get-started/rate-limiting/).

* The default behavior of the [isEmailAvailable](https://developer.adobe.com/commerce/webapi/graphql/schema/customer/queries/is-email-available/) GraphQL query and the ([V1/customers/isEmailAvailable](https://adobe-commerce.redoc.ly/2.4.7-admin/tag/customersisEmailAvailable/#operation/PostV1CustomersIsEmailAvailable)) REST endpoint has changed. By default, the APIs now always return `true`. Merchants can enable the original behavior by setting the *[Enable Guest Checkout Login](https://experienceleague.adobe.com/en/docs/commerce-admin/config/sales/checkout)* option in the Admin to `yes`, but doing so can expose customer information to unauthenticated users.

### Hotfixes included in this release

Adobe Commerce 2.4.7-p1 resolves an issue introduced in the scope of the UPS integration migration from SOAP to REST API. This issue affected customers who ship outside of the US and prevented them from using the Metric System/SI measurements of kilograms and centimeters for packages to create shipments with UPS. See the [UPS shipping method integration migration from SOAP to RESTful API](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/ups-shipping-method-integration-migration-from-soap-to-restful-api) knowledge base article for details.
