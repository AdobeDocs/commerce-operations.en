---
title: Cloud Infrastructure Security
description: Learn about how we keep Adobe Commerce on cloud infrastructure secure.
exl-id: cd5d1106-c8db-4b70-b1c7-12378d7d77a7
---
# Security

The Adobe Commerce Pro plan architecture is designed to provide a highly secure environment. Each customer is deployed into their own isolated server environment, separated from other customers. The security details of the production environment are described below.

## Web browsers

The bulk of the traffic going in and out of the cloud environment comes from  consumers' web browsers. Consumer traffic can be secured using HTTPS for all pages on the website (using either a shared SSL certification or the customer’s own SSL certificate for an additional fee). Checkout and account pages are always served using HTTPS. The best practice is to serve all pages under HTTPS.

## Content delivery network (CDN)

Fastly provides a CDN and distributed denial of service (DDoS) protection. The Fastly CDN helps to isolate direct access to the origin servers. The public DNS only points to the Fastly Network. The Fastly DDoS solution protects against highly disruptive Layer 3 and Layer 4 attacks, as well as more complex Layer 7 attacks. Layer 7 attacks can be blocked using custom rules based on the entire HTTP/HTTPS requests and based on client and request criteria, including headers, cookies, request path, and client IP, or indicators like geolocation.

## Web application firewall (WAF)

The Fastly Web Application Firewall (WAF) is used to provide additional protection. Fastly’s cloud-based WAF uses third-party rules from commercial and open-source sources such as the OWASP Core Ruleset. In addition, Adobe Commerce-specific rules are employed. Customers are protected from key application-layer attacks, including injection attacks and malicious inputs, cross site scripting, data exfiltration, HTTP protocol violations, and other OWASP Top 10 threats.

The WAF rules are updated by Adobe Commerce should new vulnerabilities be detected allowing Managed Services to “virtually patch” security issues in advance of software patches. The Fastly WAF does not provide rate-limiting or bot-detection services. If desired, customers can license a third-party bot-detection service compatible with Fastly.

## Virtual Private Cloud (VPC)

The Adobe Commerce Pro plan production environment is configured as a Virtual Private Cloud (VPC) so that production servers are isolated and have limited ability to connect into and out of the cloud environment. Only secure connections to the cloud servers are allowed. Secure protocols like SFTP or rsync can be used for file transfers.

Customers can use SSH tunnels to secure communications with the application. Access to AWS PrivateLink can be provided for an additional fee. All connections to these servers are controlled using AWS Security Groups, a virtual firewall that limits connections to the environment. Customers’ technical resources may access these servers using SSH.

## Encryption

Amazon Elastic Block Store (EBS) is used for storage. All EBS volumes are encrypted using the AES-265 algorithm. This means that the data will be encrypted at rest. The system also encrypts data in transit between the CDN and the origin, and between the origin servers. Customer passwords are stored as hashes. Sensitive credentials, including those for the payment gateway, are encrypted using the SHA-256 algorithm.

The Adobe Commerce application does not support column- or row-level encryption or encryption when the data is not at rest or not in transit between servers. The customer can manage encryption keys from within the application. Keys used by the system are stored in AWS Key Management System and must be managed by Managed Services in order to provide parts of the service.

## Penetration testing 

Managed Services conducts regular penetration tests of the Adobe Commerce cloud system with the out-of-the-box application. Customers are responsible for any penetration testing of their customized application.

## Payment gateway

Adobe Commerce requires payment gateway integrations where credit card data is passed directly from the consumer’s browser to the payment gateway. The card data is never available on any of the Adobe Commerce Pro plan Managed Services environments. Actions on the transactions by the ecommerce application are completed using a reference to the transaction from the gateway.

## Adobe Commerce application

Adobe regularly tests the core application code for security vulnerabilities. Patches for defects and security issues are provided to customers. The Product Security Team validates Adobe Commerce products following OWASP application security guidelines. Several security vulnerability assessment tools and external vendors are used to test and verify compliance. Security tools include:

- Veracode Static and Dynamic Scanning
- RIPS source code scanning
- Trustwave’s and Alert Logic’s vulnerability scanning services
- Burp Suite Pro
- OWASPZAP
- andSqlMap

The full code base is scanned with these tools on a bi-weekly basis. Customers are notified of security patches through direct emails, notifications in the application, and in the [Security Center](https://magento.com/security).

Customers must ensure that these patches are applied to their customized application within 30 days of release, according to the PCI guidelines. Adobe also provides a [Security Scan Tool](https://docs.magento.com/user-guide/magento/security-scan.html) that enables merchants to regularly monitor their sites and receive updates about known security risks, malware, and unauthorized access. The Security Scan Tool is a free service and can be run on any version of Adobe Commerce.

To encourage security researchers to identify and report vulnerabilities, Adobe Commerce has a [bug-bounty program](https://hackerone.com/magento) in addition to internal testing. Further, the customer is provided the full source code of the application for their own review if desired.

## Read-only file system

All the executable code is deployed into a read-only file system image, which dramatically reduces the surfaces that are available for attack. The deployment process creates a Squash-FS image. This approach dramatically reduces opportunities to inject PHP or JavaScript code into the system or modify the Adobe Commerce application files.

## Remote deployment

The only way to get executable code into the Managed Services production environment is to run it through a provisioning process. This involves pushing source code from your source repository into a remote repository that initiates a deployment process. Access to that deployment target is controlled, so you have complete control over who can access the deployment target. All deployments of application code to the non-production environment are controlled by the customer.

## Logging

All AWS activities are logged in AWS CloudTrail. Linux, application server, and database logs are stored on the production servers and stored in backups. All source code changes are recorded in a Git repository. Deployment history is available in the Adobe Commerce [Project Web Interface](https://devdocs.magento.com/cloud/project/projects.html#login). All support access is logged and support sessions are recorded.

## Sensitive data

Sensitive data can cover either personal information from consumers or confidential data from Managed Services customers. Protection of sensitive customer and consumer data is a critical obligation for Adobe Commerce Managed Services. Both Managed Services and our customers have legal obligations around personally identifiable information. In addition to the security features of the architecture, there are other controls to limit the distribution and access to sensitive data.

Customers own their data and have control over where that data will be located. The customer specifies the location where their production and development instances reside. They also specify which location will be used for the Magento Business Intelligence (MBI) environment in conjunction with Commerce, and if that MBI application has access to personally identifiable information or not. Production instances can be located in most AWS regions, while development and MBI environments can befoundin either the United States or in the European Union at this time.

Sensitive data may pass through the Fastly CDN server network but is not stored in the Fastly network. All partners included in the Adobe Commerce Managed Services offering have contractual obligations to ensure the protection of sensitive data. Managed Services will not move sensitive customer or consumer data from the locations specified by the customer.

As part of providing the services included in the Adobe Commerce Managed Services offering, Managed Services staff requires access to production systems that contain sensitive data. These employees are trained on their obligations to protect sensitive customer and consumer data. Access to these systems is limited to employees that require access. These employees only have access for the time needed to deliver these services.

## General Data Protection Regulation (GDPR)

GDPR is a legal framework that sets guidelines for the collection and processing of personal information for individuals in the European Union (EU). These regulations apply regardless of where the site is based, and EU visitors have access to it.

Essentially, visitors must be notified of the data the site collects from them and explicitly consent to information gathering. Sites must notify visitors if personal data held by the site is breached.

The merchant or company operating the site must also have a dedicated Data Protection Officer who oversees the site’s data security, and this individual (or website management team) should be available for contact should a visitor request that their data be erased.

GDPR also calls for any personally identifiable information (such as names, race, and date of birth) collected to be either anonymized or pseudonymized.

>[!NOTE]
>
> This page is simply meant as a general overview for what to consider for GDPR. For more information, please consult with your legal counsel or refer to the[official text](https://eur-lex.europa.eu/eli/reg/2016/679/oj).

## Backups

Backups are performed every hour for the last 24 hours of operation. After the 24-hour period, backups are retained on the following schedule, using the AWS EBS Snapshot service:

| Time period    | Backup retention policy |
|----------------|-------------------------|
| Days 1 to 3    | Each backup             |
| Days 4 to 6    | One backup per day      |
| Weeks 2 to 6   | One backup per week     |
| Weeks 8 to 12  | One biweekly backup     |
| Weeks 12 to 22 | One backup per month    |

This creates an independent backup on redundant storage. Because the EBS volumes are encrypted, the backups are also encrypted. Additionally, Managed Services performs on-demand backups on a customer-requested basis.

Your Adobe Commerce Managed Services backup and recovery approach uses a high-availability architecture combined with full-system backups. Each project is replicated—all data, code, and assets—across three separate AWS availability zones; each zone with a separate data center.
