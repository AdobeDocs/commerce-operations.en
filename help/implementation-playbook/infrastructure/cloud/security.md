---
title: Cloud infrastructure security
description: Learn about how Adobe keeps Adobe Commerce on cloud infrastructure secure.
exl-id: cd5d1106-c8db-4b70-b1c7-12378d7d77a7
feature: Cloud, Security
---

# Security

The Adobe Commerce [Pro plan architecture](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/pro-architecture.html) is designed to provide a highly secure environment. Each customer is deployed into their own isolated server environment, separated from other customers. The security details of the production environment are described below.

## Web browsers

The bulk of the traffic going in and out of the cloud environment comes from  consumers' web browsers. Consumer traffic can be secured using HTTPS for all pages on the website (using either a shared SSL certification or the customer's own SSL certificate for an additional fee). Checkout and account pages are always served using HTTPS. The best practice is to serve all pages under HTTPS.

## Content Delivery Network

Fastly provides a Content Delivery Network (CDN) and distributed denial of service (DDoS) protection. The Fastly CDN helps to isolate direct access to the origin servers. The public DNS only points to the Fastly Network. The Fastly DDoS solution protects against highly disruptive Layer 3 and Layer 4 attacks, and more complex Layer 7 attacks. Layer 7 attacks can be blocked using custom rules based on the entire HTTP/HTTPS requests and based on client and request criteria, including headers, cookies, request path, and client IP, or indicators like geolocation.

See [Fastly services overview](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/fastly.html) in the _Cloud Guide_.

## Web Application Firewall

The Fastly Web Application Firewall (WAF) is used to provide additional protection. Fastly's cloud-based WAF uses third-party rules from commercial and open-source sources such as the OWASP Core Ruleset. In addition, Adobe Commerce-specific rules are employed. Customers are protected from key application-layer attacks, including injection attacks and malicious inputs, cross-site scripting, data exfiltration, HTTP protocol violations, and other OWASP top ten threats.

The WAF rules are updated by Adobe Commerce should new vulnerabilities be detected allowing Managed Services to "virtually patch" security issues before software patches. The Fastly WAF does not provide rate-limiting or bot-detection services. If desired, customers can license a third-party bot-detection service compatible with Fastly.

See [Web Application Firewall (WAF)](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/fastly-waf-service.html) in the _Cloud Guide_.

## Virtual Private Cloud

The Adobe Commerce Pro plan production environment is configured as a Virtual Private Cloud (VPC) so that production servers are isolated and have limited ability to connect into and out of the cloud environment. Only secure connections to the cloud servers are allowed. Secure protocols like SFTP or rsync can be used for file transfers.

Customers can use SSH tunnels to secure communications with the application. Access to AWS PrivateLink can be provided for an additional fee. All connections to these servers are controlled using AWS Security Groups, a virtual firewall that limits connections to the environment. Customers' technical resources may access these servers using SSH.

## Encryption

Amazon Elastic Block Store (EBS) is used for storage. All EBS volumes are encrypted using the AES-256 algorithm, which means that the data is encrypted at rest. The system also encrypts data in transit between the CDN and the origin, and between the origin servers. Customer passwords are stored as hashes. Sensitive credentials, including payment gateway credentials, are encrypted using the SHA-256 algorithm.

The Adobe Commerce application does not support column- or row-level encryption or encryption when the data is not at rest or not in transit between servers. The customer can manage encryption keys from within the application. Keys used by the system are stored in the AWS Key Management System and must be managed by Managed Services to provide parts of the service.

## Endpoint Detection and Response

[!DNL CrowdStrike Falcon], a light-weight, next-generation Endpoint Detection and Response (EDR) agent is installed on all endpoints (including servers) within Adobe. EDR agents protect Adobe data and systems with real-time continuous monitoring and collection, which enables fast threat identification and response.

## Penetration testing

Managed Services conducts regular penetration tests of the Adobe Commerce cloud system with the out-of-the-box application. Customers are responsible for any penetration testing of their customized application.

## Payment gateway

Adobe Commerce requires payment gateway integrations where credit card data is passed directly from the consumer's browser to the payment gateway. The card data is never available on any of the Adobe Commerce Pro plan Managed Services environments. Actions on the transactions by the ecommerce application are completed using a reference to the transaction from the gateway.

## Adobe Commerce application

Adobe regularly tests the core application code for security vulnerabilities. Patches for defects and security issues are provided to customers. The Product Security Team validates Adobe Commerce products following OWASP application security guidelines. Several security vulnerability assessment tools and external vendors are used to test and verify compliance. Security tools include:

- Veracode Static and Dynamic Scanning
- RIPS source code scanning
- Trustwave's and Alert Logic's vulnerability scanning services
- Burp Suite Pro
- OWASPZAP
- andSqlMap

The full code base is scanned with these tools on a bi-weekly basis. Customers are notified of security patches through direct emails, notifications in the application, and in the [Security Center](https://helpx.adobe.com/security.html).

Customers must ensure that these patches are applied to their customized application within 30 days of release, according to the PCI guidelines. Adobe also provides a [Security Scan Tool](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/security-scan) that enables merchants to regularly monitor their sites and receive updates about known security risks, malware, and unauthorized access. The Security Scan Tool is a free service and can be run on any version of Adobe Commerce.

To encourage security researchers to identify and report vulnerabilities, Adobe Commerce has a [bug-bounty program](https://hackerone.com/magento) in addition to internal testing. Further, the customer is provided the full source code of the application for their own review if desired.

## Read-only file system

All the executable code is deployed into a read-only file system image, which dramatically reduces the surfaces that are available for attack. The deployment process creates a Squash-FS image to reduce opportunities for injecting PHP or JavaScript code into the system or modify Adobe Commerce application files.

## Remote deployment

The only way to get executable code into the Managed Services production environment is to run it through a provisioning process. Provisioning involves pushing source code from your source repository into a remote repository that initiates a deployment process. Access to that deployment target is controlled, so you have complete control over who can access the deployment target. All deployments of application code to the non-production environment are controlled by the customer.

## Logging

All AWS activities are logged in AWS CloudTrail. Operating system, application server, and database logs are stored on the production servers and stored in backups. All source code changes are recorded in a Git repository. Deployment history is available in the Adobe Commerce [Project Web Interface](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/project/overview). All support access is logged and support sessions are recorded.

See [View and manage logs](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/test/log-locations.html) in the _Cloud Guide_.

## Sensitive data

Sensitive data can cover either personal information from consumers or confidential data from Managed Services customers. Protection of sensitive customer and consumer data is a critical obligation for Adobe Commerce Managed Services. Both Managed Services and Adobe customers have legal obligations around personally identifiable information. In addition to the security features of the architecture, there are other controls to limit the distribution and access to sensitive data.

Customers own their data and have control over where that data is located. The customer specifies the location where their production and development instances reside. They also specify which location is used for the Adobe Commerce Reporting environment with Commerce, and if that Adobe Commerce Reporting application has access to personally identifiable information or not. Production instances can be in most AWS regions, while development and Adobe Commerce Reporting environments can be found in either the United States or in the European Union currently.

Sensitive data may pass through the Fastly CDN server network but is not stored in the Fastly network. All partners included in the Managed Services offering have contractual obligations to ensure the protection of sensitive data. Managed Services does not move sensitive customer or consumer data from the locations specified by the customer.

As part of providing the services included in the Managed Services offering, Managed Services staff require access to production systems that contain sensitive data. These employees are trained on their obligations to protect sensitive customer and consumer data. Access to these systems is limited to employees that require access. These employees only have access for the time needed to deliver these services.

## General Data Protection Regulation

General Data Protection Regulation (GDPR) is a legal framework that sets guidelines for the collection and processing of personal information for individuals in the European Union (EU). These regulations apply regardless of where the site is based, and EU visitors have access to it.

Visitors must be notified of the data that a site collects from them and explicitly consent to information gathering. Sites must notify visitors if personal data held by the site is breached.

The merchant or company operating the site must have a dedicated Data Protection Officer who oversees the site's data security. The Data Privacy Officer (or website management team) should be available for contact if a visitor requests that their data be erased.

GDPR calls for any personally identifiable information (such as names, race, and date of birth) collected to be either anonymized or pseudonymized.

>[!NOTE]
>
>This page provides a general overview of what to consider for GDPR. See the _[Security and Compliance Guide](../../../security-and-compliance/privacy/gdpr.md)_ for details about how Adobe Commerce stores personal information. To determine how your business should comply with any legal obligations, consult with your legal counsel or refer to the [official text](https://eur-lex.europa.eu/eli/reg/2016/679/oj).

## Backups

Backups are performed every hour for the last 24 hours of operation. After the 24-hour period, backups are retained on a schedule using the AWS EBS Snapshot service. See [Retention policy](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/pro-architecture.html#retention-policy) in the _Cloud Guide_.

The service creates an independent backup on redundant storage. Because the EBS volumes are encrypted, the backups are also encrypted. Also, Managed Services performs on-demand backups on a customer-requested basis.

Your Managed Services backup and recovery approach uses a high-availability architecture combined with full-system backups. Each project is replicated—all data, code, and assets—across three separate AWS availability zones; each zone with a separate data center.

See [Snapshots and backup management](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/storage/snapshots.html) in the _Cloud Guide_.
