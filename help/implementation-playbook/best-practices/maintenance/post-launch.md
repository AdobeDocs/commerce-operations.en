---
title: Post-launch support and maintenance
description: Ensure optimal performance and security of your Adobe Commerce store with our comprehensive post-launch support and maintenance best practices.
role: Admin, User, Developer
feature: Best Practices
exl-id: f02a13ca-c851-4508-a2bd-e5bc196a330c
---
# Post-launch support and maintenance for Adobe Commerce

Post-launch support and maintenance are crucial to ensure your Adobe Commerce store runs smoothly, performs well, remains secure, and continues to meet your business objectives. This phase involves continuous monitoring, optimization, bug fixing, updates, and user support. The following sections break down **post-launch support** into key categories:

## Regular site monitoring and performance optimization

### Performance monitoring

- **Site speed and load testing**: Adobe Commerce can be resource-intensive, so regular performance monitoring is crucial.

    - **Tools to use**: All Adobe Commerce on cloud infrastructure projects include access to New Relic, which aids in monitoring performance and investigating events within the Commerce application and cloud infrastructure. Additional tools include Google PageSpeed Insights and GTMetrix.
    
    - **What to monitor**: Here are the main items to monitor for Adobe Commerce on cloud infrastructure:
    
      - **Health notifications**: Alerts for disk space and environment health.
    
      - **Observation**: Comprehensive monitoring combining log data from multiple sources for effective site management.
    
      - **New Relic service**: Monitors performance in staging and production, focusing on key metrics.
    
      - **Managed alerts policy**: Tracks metrics with predefined thresholds to trigger notifications for infrastructure or application issues affecting performance.

  >[!TIP]
  >
  >See [performance monitoring](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/monitor/performance) in the _Cloud Guide_.


- **Optimizing database performance**: To optimize database performance in Adobe Commerce Cloud, implement the following:

    - **Monitor and optimize MySQL queries**: Identify and resolve slow-running queries, which can be done using MySQL's SHOW FULL PROCESSLIST and EXPLAIN commands. For more complex setups, Pro architecture users can utilize the Percona Toolkit to analyze query logs for performance issues.

    - **Index management**: Ensure that every table has a primary key and remove any duplicate indexes, as these can reduce efficiency and lead to conflicts during simultaneous writes.

    - **Cron job optimization**: Cron jobs should be scheduled during off-peak hours to minimize the impact on performance, especially if background tasks like indexing are frequent.

  >[!TIP]
  >
  >See [best practices for resolving database performance issues](resolve-database-performance-issues.md).

- **Monitor CDN**: To monitor Fastly CDN performance in Adobe Commerce Cloud, you can take the following actions:

    - **Leverage New Relic for monitoring**: Adobe Commerce offers New Relic to monitor Fastly performance and other metrics on staging and production environments. This tool provides insights into server health, CDN caching, and network requests over time, which helps identify patterns and optimize CDN settings.

    - **Fastly logs analysis**: For Adobe Commerce Cloud Pro projects, you can use New Relic Logs to review and analyze Fastly CDN and WAF log data to track performance trends, security events, and diagnose errors or latency issues.

    - **Use cURL commands**: Run cURL commands with Fastly-specific headers to inspect your site's cache status. Key response headers include `X-Cache` (HIT/MISS), `Fastly-Module-Enabled`, `Fastly-Magento-VCL-Uploaded`, and `Cache-Control` to verify caching and module status. Adobe provides sample cURL commands for both staging and production environments.

    - **Check header information**: Inspect headers such as `Cache-Control`, `Pragma`, and `X-Magento-Tags` to confirm appropriate caching behavior and tag handling on cached content. Proper header values indicate whether caching configurations are effectively applied across the CDN.

    - **Fastly debugging and testing**: Use Fastly's debugging feature to identify and troubleshoot issues with cache HIT and MISS rates, caching logic, or incorrect header responses, which can point to configuration issues or misalignment with expected caching rules.

These monitoring steps help maintain optimal CDN performance and address issues that affect site speed and reliability.

>[!TIP]
>
>See [Fastly services overview](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly) in the _Cloud Guide_.

#### Regular security monitoring

To maintain regular security monitoring in Adobe Commerce Cloud, Adobe recommends a multi-faceted approach involving continuous scanning, logging, and proactive security practices. Here are some core actions to ensure ongoing security:

- **Security scanning**: Use Adobe's Security Scan tool to monitor for known vulnerabilities and malware across your Commerce sites. This tool provides alerts for potential security risks and compliance issues.

- **Regular patch and update maintenance**: Apply Adobe's security patches and updates as they become available. Upgrading to the latest Adobe Commerce version ensures the latest defenses against threats.

- **Audit and log monitoring**: Leverage tools like New Relic Logs (available for Pro projects) to centralize and analyze security logs from both staging and production environments, enhancing the visibility of potential security issues and breaches.

- **Account and access management**: Regularly audit user and admin accounts to remove any unauthorized or outdated accounts. Strengthen access controls with multi-factor authentication (MFA) for admin users.

- **Web application firewall (WAF)**: Use the integrated Fastly WAF to detect and mitigate threats from malicious traffic patterns, such as unauthorized data extraction attempts.

- **Custom code and extension security**: Secure any custom code or third-party extensions by conducting regular code audits and limiting extensions to those vetted by Adobe.

>[!TIP]
>
>See [Security](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/security) in the _Admin Systems Guide_.

#### Error logging and monitoring

To monitor error logging in Adobe Commerce Cloud, Adobe provides several tools and practices for effective troubleshooting and performance management:

- **Log aggregation with New Relic**: New Relic collects and centralizes logs from Adobe Commerce applications, including logs related to infrastructure, CDN, and WAF. This setup allows for streamlined error tracking, creating dashboards, and querying logs for deeper insights into application performance and issues. Access to New Relic Logs enables searching and filtering logs by various attributes to diagnose issues quickly.

- **Error log types**: Key error logs in Adobe Commerce Cloud include `cloud.log`, which contains deployment feedback, and `cloud.error.log`, which logs deployment warnings and errors. Other specific logs for debugging include `debug.log`, `system.log`, and `exception.log`, with each serving distinct roles in error and event tracking across the Commerce platform.

- **Custom logging with Monolog**: Adobe Commerce supports custom logging via Monolog, which allows developers to direct log messages to various destinations like files, databases, and even alerts. This flexibility is useful for building advanced logging strategies that cater to different monitoring needs in development and production environments.

- **Exceptions monitoring with site-wide analysis tool**: The site-wide analysis tool helps monitor and manage exception logs, identifying recurring issues across deployment and application events. This tool highlights frequent issues, making it easier to prioritize and address critical problems impacting performance.

>[!TIP]
>
>For more details on logging and error tracking practices in Adobe Commerce Cloud, see [New Relic log management](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/monitor/new-relic/log-management) and [exception monitoring](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/site-wide-analysis-tool/exceptions).

### Security and updates

#### Security patches and updates

To stay updated and ensure the security of your Adobe Commerce Cloud system, here are some key practices for monitoring security patches and updates:

- **Subscribe to Adobe Commerce security alerts**: Stay informed about security vulnerabilities by [registering for notifications from Adobe](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/security).

- **Check release notes**: Regularly review [security patch release notes](https://experienceleague.adobe.com/en/docs/commerce-operations/release/notes/security-patches/overview), which are tagged with "-pN" for versions (e.g., 2.3.5-p1), and contain critical fixes and improvements.

- **Apply security patches promptly**: Apply security patches as soon as they are available. This includes updating to the latest versions or applying specific patch files.

- **Use cloud patches**: For Adobe Commerce Cloud, security patches can be bundled within the Cloud Tools Suite. Be sure to upgrade the suite or the Commerce version to receive these fixes.

- **Automated patch management**: Consider using tools like the centralized patcher to [manage and apply patches across multiple stores automatically](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/maintenance/patching-at-scale).

>[!TIP]
>
>For further details and step-by-step instructions on applying patches and maintaining security, see [security patch release notes](../../../release/release-notes/security/overview.md) and [How to Apply Security Patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/how-to/how-to-obtain-and-apply-security-patches). You should also review [Site-Wide Analysis Tool](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/site-wide-analysis-tool/access) reports.

#### PCI compliance

To ensure PCI compliance in Adobe Commerce Cloud, follow these key practices:

- **Protect cardholder data**: Do not ever store cardholder data within Adobe Commerce. If storage is required, use encrypted and tokenized methods to safeguard it.

- **Use secure transmission protocols**: Always transmit payment data over secure protocols like TLS, with encryption and proper key management.

- **Utilize web application firewall (WAF)**: The Fastly-powered WAF service helps meet PCI DSS 6.6 requirements and protects against common vulnerabilities by blocking malicious traffic before it reaches your site. See more information [here](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/planning/payment-processing-storage) and [here](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/cdn/fastly-waf-service).

- **Limit access**: Ensure that only authorized personnel have access to sensitive payment data, and [apply access control to reduce the risk of exposure](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/planning/payment-processing-storage).

- **Regular security scanning**: Perform regular PCI ASV scans and [monitor your environment](https://experienceleague.adobe.com/en/docs/commerce-operations/security-and-compliance/shared-responsibility) to address potential vulnerabilities.

>[!TIP]
>
>For more detailed guidelines on maintaining PCI compliance with Adobe Commerce, see [best practices for payment processing and storage](../planning/payment-processing-storage.md).

### User and customer support

#### Setup

- **Support channels**: Implement customer support channels such as:

  - **Live chat**: Offer live chat support for immediate assistance. Popular solutions include Zendesk, Intercom, and Tidio.

  - **Email support**: Use a support ticketing system like Freshdesk or Zoho Desk to manage customer inquiries effectively.

  - **Phone support**: If you have a large customer base, consider offering phone support during business hours.

#### Admin user training

- **Internal training**: Train your staff on how to use the Adobe Commerce Admin, process orders, manage products, and handle customer service issues.

- **Documentation**: Maintain an internal knowledge base or user manual for frequently asked questions (FAQs), troubleshooting, and common tasks.

#### Customer experience optimization

- **Surveys and feedback**: Use surveys to collect customer feedback and optimize the customer experience. Adobe Commerce supports integrations with tools like SurveyMonkey or Google Forms.

- **Review management**: Manage customer reviews and ratings on your products. Encourage happy customers to leave reviews while responding to negative reviews appropriately.

- **Personalization**: Implement personalization features such as personalized product recommendations or targeted promotions.

### Ongoing store maintenance and optimization

#### Search engine optimization (SEO)

- **Content optimization**: Regularly update product descriptions, blog posts, and category pages to keep content fresh and relevant for search engines.

- **SEO audits**: Perform regular SEO audits using tools like Google Search Console or Screaming Frog to identify SEO issues (e.g., broken links, missing metadata, duplicate content).

- **URL structure**: Keep a clean, logical URL structure and ensure that there are no broken links or redirects.

#### Conversion rate optimization (CRO)

- **A/B testing**: Run A/B tests on different page elements, such as product pages or checkout process, to improve conversion rates.

- **Cart abandonment**: Implement cart abandonment email campaigns or exit-intent pop-ups to recover lost sales.

- **Checkout optimization**: Simplify your checkout process by reducing the number of steps and offering guest checkout to improve conversions.

#### Marketing integration

- **Email campaigns**: Set up automated email marketing flows for welcome emails, abandoned cart emails, and post-purchase follow-ups. Platforms like Adobe Marketo, Mailchimp, or Klaviyo integrate well with Adobe Commerce.

- **Social media and ad integration**: Integrate with platforms like Facebook, Instagram, and Google Ads to run targeted campaigns and track performance.

#### Mobile optimization

- **Mobile responsiveness**: Regularly test your site's mobile responsiveness and usability. Given that mobile commerce is growing, a mobile-first approach is essential for continued success.

- **Mobile performance**: Use Google's mobile-friendly test and performance tools to optimize your mobile store experience.

### Scaling and new feature development

- **Auto-scaling for traffic handling**:
  
  - Adobe Commerce Cloud supports auto-scaling to dynamically adjust server resources (for example, web nodes) based on real-time traffic demands, ensuring that your store can handle high visitor volumes without manual intervention. See [autoscaling](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/architecture/autoscaling) in the _Cloud Guide_.
  
  - Web and service tiers can scale independently, adding more web nodes for increased traffic and scaling database or service nodes for backend performance during peak periods. See [scaled architecture](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/architecture/scaled-architecture) in the _Cloud Guide_.

- **Performance monitoring**:
  
  - Use **New Relic** to monitor real-time performance metrics (e.g., CPU usage, traffic levels) and make adjustments as necessary.
  
  - Test performance in staging environments before scaling to avoid issues in production.

- **Development of new features**:
  
  - Integrate advanced features like **AI-driven personalization**, **subscription management**, and custom solutions.
  
  - Continuously test and refine features in staging environments before deployment to production to minimize downtime.

- **Ongoing site maintenance**:
  
  - Regularly review system logs and performance metrics to identify areas for improvement.
  
  - Ensure infrastructure remains scalable and adaptable to new business requirements and growth.

>[!TIP]
>
>For detailed guidance, see [maintenance best practices](overview.md), [personalization](https://business.adobe.com/blog/the-latest/adobe-commerce-continues-investment-in-composable-development-tools-and-ai-powered-personalization), and [feature development](https://business.adobe.com/blog/the-latest/adobe-commerce-continues-investment-in-composable-development-tools-and-ai-powered-personalization).

### Reporting and analytics

- **Adobe Commerce Intelligence:** Commerce Intelligence, a core capability of Adobe Commerce, provides best practice insights across multiple data sources, allowing merchants to make scientific data-driven decisions and take clear and informed actions. See the [_Commerce Intelligence User Guide_](https://experienceleague.adobe.com/en/docs/commerce-business-intelligence/mbi/getting-started).

- **Adobe Analytics:**  Adobe Analytics offers a powerful solution to track, analyze, and optimize your online store's performance. Adobe Analytics helps eCommerce businesses gain deeper insights into customer behavior, product performance, conversion rates, and other key metrics, enabling data-driven decision-making. 

- **Google Analytics:** Use Google Analytics to track customer behavior, traffic sources, and conversion rates. 

- **Additional Commerce Intelligence tools:** Adobe Commerce includes Advanced Reporting. This feature gives you access to a suite of dynamic reports based on your product, order, and customer data, with a personalized dashboard that tailored to your business needs, see [advanced reporting](https://experienceleague.adobe.com/en/docs/commerce-admin/start/reporting/business-intelligence#advanced-reporting) in the _Admin User Guide_ for more information. 

### Conclusion

Post-launch support and maintenance are ongoing efforts that require regular attention to ensure your Adobe Commerce store continues to perform well, remains secure, and adapts to the needs of your business. Implementing a structured approach to site monitoring, customer support, optimization, and updates is crucial for long-term success.
