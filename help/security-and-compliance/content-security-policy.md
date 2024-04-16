---
title: Content security policy overview
description: Learn how to improve the security posture of your Adobe Commerce or Magento Open Source store using a content security policy.
exl-id: 81070a09-5f8f-48b1-b542-1443dbd43f5f
---
# Content security policy overview

A Content Security Policy (CSP) can provide additional layers of defense for Adobe Commerce installations by helping to detect and mitigate Cross-Site Scripting (XSS) and related data injection attacks. This common attack vector works by injecting malicious content that falsely claims to originate from the website. After the malicious content is loaded and executed, it can initiate the unauthorized transfer of data.

CSP provides a standardized set of directives that tells the browser which content resources can be trusted, and which should be blocked. Using carefully defined policies, CSP can restrict browser content to allow only whitelisted resources to appear.

## Configuration

To avoid interfering with site operations, CSP can be implemented in phases. CSP has two basic modes of operation: `report-only mode` and `restrict mode`.

**Report-only mode**: The browser is instructed to report policy violations, but not enforce them. Every time a requested resource violates CSP, the browser logs the resulting errors to the console. The console log can then be used to investigate the cause of each violation.

It is important to review all CSP errors as they occur and refine the policies until all necessary resources are whitelisted. It is safe to switch to `restrict mode` when no more errors occur. Otherwise, a poorly configured CSP might cause the browser to display a blank page with numerous console errors. A properly configured CSP allows whitelisted content to be delivered without any perceived impact on performance.

**Restrict mode**: The browser is instructed to enforce all content policies and limit publication to whitelisted resources.

The first phase of the Adobe Commerce CSP implementation was introduced in Adobe Commerce 2.3.5 and made CSP available in `report-only mode` by default.  In Adobe Commerce 2.4.7 and later, CSP is configured in `restrict-mode` by default for payment pages in the storefront and admin areas, and in `report-only` mode for all other pages. The corresponding CSP header does not contain the `unsafe-inline` keyword inside the `script-src` directive for payment pages. Also, only whitelisted inline scripts are allowed.

Because CSP is configured from the server, rather than from the Admin, most merchants need the assistance of a system integrator or developer to configure it properly. See [Content Security Policies](https://developer.adobe.com/commerce/php/development/security/content-security-policies/) in the _Commerce PHP Developer Guide_.


## Reporting

By default, CSP sends errors to the browser console, but can be configured to collect error logs by HTTP request. In addition, there are several third-party services that you can use to monitor, collect, and report CSP violations. CSP violations can be reported to an endpoint for collection by adding the URI from the Admin, or from the `config.xml` file for a custom module.  See [Report URI configuration](https://developer.adobe.com/commerce/php/development/security/content-security-policies/#report-uri-configuration) in the _Commerce PHP Extensions Developer Guide_.

[Report URI](https://report-uri.io/) is a service that monitors CSP violations and displays the results in a dashboard. Both merchants and developers can use the service to receive reports whenever CSP violations occur.
