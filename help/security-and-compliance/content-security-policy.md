---
title: Content security policy overview
description: Learn how to improve the security posture of your Adobe Commerce or Magento Open Source store using a content security policy.
---

# Content security policy overview

A Content Security Policy (CSP) can provide additional layers of defense for Adobe Commerce and Magento Open Source installations by helping to detect and mitigate Cross-Site Scripting (XSS) and related data injection attacks. This common attack vector works by injecting malicious content that falsely claims to originate from the website. After the malicious content is loaded and executed, it can initiate the unauthorized transfer of data.

CSP provides a standardized set of directives that tells the browser which content resources can be trusted, and which should be blocked. Using carefully defined policies, CSP can restrict browser content to allow only whitelisted resources to appear.

## Configuration

To avoid interfering with site operations, CSP can be implemented in phases. CSP has two basic modes of operation: `report-only mode` and `restrict mode`. The release of Adobe Commerce 2.3.5 marks the first phase of our implementation and makes CSP available in `report-only mode` by default. In a future release, `restrict mode` is enabled by default for additional out-of-the-box protection.

**Report-only mode**: The browser is instructed to report policy violations, but not enforce them. Every time a requested resource violates CSP, the browser logs the resulting errors to the console. The console log can then be used to investigate the cause of each violation.

It is important to review all CSP errors as they occur and refine the policies until all necessary resources are whitelisted. It is safe to switch to `restrict mode` when no more errors occur. Otherwise, a poorly configured CSP might cause the browser to display a blank page with numerous console errors. A properly configured CSP allows whitelisted content to be delivered without any perceived impact on performance.

**Restrict mode**: The browser is instructed to enforce all content policies and limit publication to whitelisted resources. Because CSP is configured from the server, rather than from the Admin, most merchants need the assistance of a system integrator or developer to configure it properly. See [Content Security Policies](https://developer.adobe.com/commerce/php/development/security/content-security-policies/) in the _Commerce PHP Extensions_ developer guide.

## Reporting

By default, CSP sends errors to the browser console, but can be configured to collect error logs by HTTP request. In addition, there are several third-party services that you can use to monitor, collect, and report CSP violations.

[Report URI](https://report-uri.io/) is a service that monitors CSP violations and displays the results in a dashboard. Both merchants and developers can use the service to receive reports whenever CSP violations occur.
