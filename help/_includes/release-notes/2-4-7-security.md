# 2.4.7 security enhancements

* **Added Subresource Integrity (SRI) support** to comply with PCI 4.0 requirements for verification of script integrity on payment pages. Subresource Integrity (SRI) support provides integrity hashes for all JavaScript assets residing in the local filesystem. The default SRI feature is implemented only on the payment pages for the Admin and storefront areas. However, merchants can extend the default configuration to other pages. See [Subresource Integrity](https://developer.adobe.com/commerce/php/development/security/subresource-integrity/) in the _Commerce PHP Developer Guide_.<!--AC-1153-->

* **Changes to Content Security Policy (CSP)**—Configuration updates and enhancements to Adobe Commerce Content Security Policies (CSPs) to comply with PCI 4.0 requirements. For details, see [Content Security Policies](https://developer.adobe.com/commerce/php/development/security/content-security-policies/) in the _Commerce PHP Developer Guide_. <!--AC-11513-->

  * The default CSP configuration for payment pages for Commerce Admin and storefront areas is now `restrict` mode. For all other pages, the default configuration is `report-only` mode.  In releases prior to 2.4.7,  CSP was configured in `report-only` mode for all pages.

  * Added a nonce provider to allow execution of inline scripts in a CSP. The nonce provider facilitates the generation of unique nonce strings for each request. The strings are then attached to the CSP header.

  * Added options to configure custom URIs to report CSP violations for the Create Order page in the Admin and the Checkout page in the storefront. You can add the configuration from the Admin or by adding the URI to the `config.xml` file.

    >[!NOTE]
    >
    >Updating the CSP configuration to `restrict` mode might block existing inline scripts on payment pages in the Admin and storefront, which causes the following browser error when a page loads: `Refused to execute inline script because it violates the following Content Security Policy directive: "script-src`. Fix these errors by updating the whitelist configuration to allow required scripts. See [Troubleshooting](https://developer.adobe.com/commerce/php/development/security/content-security-policies/#troubleshooting) in the _Commerce PHP Developer Guide_.
