---
title: Shared responsibility security and operational model
description: Learn about the security responsibilities of each party involved in your Adobe Commerce on cloud infrastructure project.
exl-id: f3cc1685-e469-4e30-b18e-55ce10dd69ce
---
# Shared responsibility security and operational model

Adobe Commerce on cloud infrastructure is a platform-as-a-service (PaaS) offering that relies on a shared responsibility security and operational model. These responsibilities are shared between Adobe, the merchant, the cloud service provider, and the content delivery network (CDN) provider. Each party bears distinct responsibility for securing and operating the Adobe Commerce application and the merchant-specific code and extensions deployed on cloud infrastructure.

This shared model enables merchants to design and implement a highly flexible, customizable, and scalable solution to meet their business requirements while minimizing operational responsibilities and costs.

>[!VIDEO](https://video.tv.adobe.com/v/3458392/?learn=on&enablevpops)

In general, Adobe is responsible for the following:

- Developing and maintaining secure core application code
- Maintaining the security of the platform
- Ensuring that the platform is SOC 2 and PCI compliant and compatible with PCI-compliant technology components (for example, PHP, Redis)
- Responding to security issues concerning the core platform
- Working with cloud service providers and CDN partners to resolve any issues that occur

Merchants are responsible for the following:

- Maintaining security for custom code and integrations with third-party applications
- Ensuring secure application development
- Obtaining PCI certification if requested by the merchant's payment processor
- Reacting and responding to security incidents

## Adobe responsibilities

Adobe is responsible for the security and availability of the Adobe Commerce on cloud infrastructure environment and the core solution code. In addition, Adobe is responsible for the necessary activities and mechanisms that maintain the security of the Adobe Commerce on cloud infrastructure solution, including:

- Applying server-level security and patches for applications supported by Adobe Commerce on cloud infrastructure, such as cloud data storage and search capabilities
- Conducting penetration testing and scanning of the core Adobe Commerce on cloud infrastructure code
- Conducting semi-annual reviews and audits of public cloud service providers' identity and access management (IAM) solutions and permissions management (PCI compliance requirement)
- Conducting semi-annual reviews and audits of authorized users, including Adobe employees and contractors (PCI compliance requirement)
- Conducting annual testing and documentation of backup and restore functionality
- Configuring server and perimeter firewalls
- Connecting and configuring the Adobe Commerce on cloud infrastructure repository
- Defining, testing, implementing, and documenting disaster recovery (DR) plans for the areas within Adobe's scope of responsibility
- Defining global platform web application firewall (WAF) rules
- Hardening the operating system (OS)
- Implementing and maintaining the integration of content distribution network (CDN) and application performance management (APM) solutions with Adobe Commerce on cloud infrastructure
- Issuing periodic security and other updates for the core Adobe Commerce on cloud infrastructure code (applying patches is the merchant's responsibility)
- Managing merchant support and support access controls (for example, Zendesk)
- Monitoring, logging, and remediating security incidents concerning the Adobe Commerce on cloud infrastructure platform infrastructure
- Monitoring platform operations and providing 24/7 support for Adobe Commerce on cloud infrastructure merchants
- Provisioning the production and staging environments
- Assessing potential security threats to platform operations and infrastructure
- Scaling computing, storage, grid, and other resources, as described in the service-level agreement (SLA) with the merchant
- Setting up DNS (Adobe Commerce on cloud infrastructure platform infrastructure only)
- Testing the platform for security vulnerabilities

Adobe maintains PCI certification for the infrastructure and services used for the Adobe Commerce solution.  Merchants are responsible for the compliance of custom code, system and network processes, and the organization.

Adobe also ensures the availability of the merchant's infrastructure as agreed upon in the applicable SLA.

## Merchant responsibilities

The merchant is responsible for following security best practices for their specific, customized instance of Adobe Commerce on cloud infrastructure solution:

- Adding the necessary Adobe Commerce on cloud infrastructure configuration files to the repository
- Applying security and other patches to their custom Adobe Commerce on cloud infrastructure solution immediately following their release by Adobe
- Applying security and other patches to all custom extensions and code, immediately following their release by the vendor
- Creating, deploying, and testing custom Varnish VCL files
- Designing, theming, installing, integrating, and securing the customized Adobe Commerce on cloud infrastructure solution, including all custom extensions and code
- Granting and revoking user access to the merchant's instance of the Adobe Commerce on cloud infrastructure configuration, application, and platform
- Handling security issues related to the merchant's internal network, servers, infrastructure, and any custom applications built on the Adobe Commerce on cloud infrastructure platform
- Installing the Adobe Commerce on cloud infrastructure command-line integration (CLI) tool
- Maintaining the required level of PCI compliance of the customized application and other internal processes, as defined by the PCI-DSS guidelines

   >[!NOTE]
   >
   >To minimize the areas that must be reviewed, PCI compliance for the merchant is built on the PCI certifications of Adobe Commerce and the cloud hosting provider.

- Running PCI ASV scans and remediating issues in the core Adobe Commerce on cloud infrastructure code and platform
- Monitoring all application activities that might reveal a potential security threat, including penetration testing, vulnerability scans, and logs
- Monitoring and responding to security incidents, including forensics, remediation, and reporting related to the merchant's Adobe Commerce on cloud infrastructure solution and user accounts
- Obtaining a DNS provider and configuring and maintaining any merchant-specific DNS records
- Running performance tests on the customized application
- Securing access to the platform accounts, instance access, and application
- Testing and QA of the custom application
- Maintaining the security of any systems or networks the merchant connects to the Adobe Commerce on cloud infrastructure application

## Cloud Service Provider responsibilities

Adobe relies on well-established cloud service providers to host the cloud server infrastructure for Adobe Commerce on cloud infrastructure. These providers are responsible for security of the network, including routing, switching, and perimeter network security via firewall systems and intrusion detection systems (IDS). Cloud service providers are also responsible for the physical security of data centers that host the Adobe Commerce on cloud infrastructure solution and the environmental security of data centers.

Cloud service providers are also responsible for:

- Maintaining PCI DSS, SOC 2, and ISO 27001 certifications for their cloud services
- Securing the hypervisor
- Securing the data center, including both physical and network access

## CDN provider responsibilities

The Adobe Commerce on cloud infrastructure solution uses CDN providers to speed page-load time, cache content, and instantly purge outdated content. These providers are also responsible for security issues directly related to or affecting their CDN, and for defining and maintaining CDN WAF rules.

## Security responsibilities summary

>[!BEGINSHADEBOX]

The following summary table uses the RACI model to show the security responsibilities shared between Adobe, the merchant, and the Cloud service provider:

**R** — Responsible
**A** — Accountable
**C** — Consulted
**I** — Informed

>[!ENDSHADEBOX]

<table>
<thead>
  <tr>
    <th>Task</th>
    <th>Adobe</th>
    <th>Merchant</th>
    <th>Cloud service provider</th>
    <th>CDN provider</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Applying Adobe Commerce on cloud infrastructure patches</td>
    <td>C</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Applying patches to supporting services<br>(For example, Nginx or MySQL.)</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Defining origin WAF rules</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Defining CDN WAF rules</td>
    <td>A</td>
    <td></td>
    <td></td>
    <td>R</td>
  </tr>
  <tr>
    <td>Deploying platform WAF rules</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Deploying CDN WAF rules</td>
    <td>A</td>
    <td>I</td>
    <td></td>
    <td>R</td>
  </tr>
  <tr>
    <td>Fixing core bugs in Adobe Commerce on cloud infrastructure code</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Releasing Adobe Commerce on cloud infrastructure patches</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Scaling (compute and storage)</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Scaling (PaaS and grid)</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Ensuring access to source code, including repo.magento.com</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Installing Adobe Commerce on cloud infrastructure CLI tool</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Adding Adobe Commerce on cloud infrastructure configuration files to repository</td>
    <td>C</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Creating a project for the merchant (onboarding UI)</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Connecting repositories to Adobe Commerce on cloud infrastructure</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Configuring the source repository<sup>1</sup></td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Creating a user for the release manager (onboarding UI)</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Deploying code into production</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Deploying code into staging</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Integrating external applications and extensions</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Installing extensions</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Customizing Adobe Commerce on cloud infrastructure</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Testing performance of customized Adobe Commerce on cloud infrastructure</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Testing the customized application</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Theming and design of custom application</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
    <tr>
    <td>Creating, deploying, and testing custom Varnish VCLs</td>
    <td>C</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Configuring DNS (platform infrastructure only)</td>
    <td>R</td>
    <td>C</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Developing CDN extension and fixing bugs</td>
    <td>A</td>
    <td>C</td>
    <td></td>
    <td>R</td>
  </tr>
  <tr>
    <td>Onboarding CDN</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Supporting CDN<sup>2</sup></td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td>C</td>
  </tr>
  <tr>
    <td>Configuring New Relic APM and Infrastructure applications</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Installing New Relic APM and Infrastructure applications</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Supporting New Relic APM and Infrastructure applications</td>
    <td>R</td>
    <td>C</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Configuring Nginx<sup>3</sup></td>
    <td>R</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Obtaining a DNS provider (Pro only)</td>
    <td>C</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Hardening the OS</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Provisioning the production and staging environments</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Accessing Zendesk for Adobe Commerce on cloud infrastructure</td>
    <td>R</td>
    <td>C</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Resolving merchant security issues</td>
    <td>C</td>
    <td>R</td>
    <td></td>
    <td>C</td>
  </tr>
  <tr>
    <td>Resolving Adobe Commerce on cloud infrastructure security issues</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Resolving CDN security issues</td>
    <td>A</td>
    <td></td>
    <td></td>
    <td>R</td>
  </tr>
  <tr>
    <td>Resolving APM security issues</td>
    <td>A</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Assisting Adobe with security research (software)</td>
    <td>R</td>
    <td>C</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Assisting Adobe with security research (scans/audits)</td>
    <td>R</td>
    <td>C</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Performing PCI ASV scans</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Remediating Adobe Commerce on cloud infrastructure PCI scans<sup>4</sup></td>
    <td>R</td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Remediating PaaS PCI scans</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Managing OS and platform secrets</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Managing Adobe Commerce on cloud infrastructure encryption keys</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Scanning customized Adobe Commerce on cloud infrastructure instances</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Monitoring security logs</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Managing IAMand permissions for Adobe Commerce on cloud infrastructure</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Managing support access controls (Teleport)</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Controlling merchant support and access</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Annual testing and documentation of Adobe DR plan and backup and restore</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Annual testing and documentation of disaster recovery plan</td>
    <td>R</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
<tfoot>
  <tr>
    <td colspan="5">
      <p><sup><strong>1</strong></sup> Only if the Adobe Commerce on cloud infrastructure repository is used as the main repository. Use of other external repositories is the sole responsibility of the merchant.</p>
      <p><sup><strong>2</strong></sup> Adobe provides Level 1 support for issues with CDN providers.</p>
      <p><sup><strong>3</strong></sup> The merchant is responsible for any Ngnix controls that they configure for their applications.</p>
      <p><sup><strong>4</strong></sup> For PCI, penetration testing requirements are shared between Adobe and the merchant.</p>
    </td>
  </tr>
</tfoot>
</table>

## Operational responsibilities summary

>[!BEGINSHADEBOX]

The following summary tables clarify the operational responsibilities for Adobe and Merchants when developing, deploying, maintaining, and securing Adobe Commerce on cloud infrastructure.

>[!ENDSHADEBOX]

### Coding and development

#### Core Adobe Commerce code

|     | Adobe | Merchant |
| --- | --- | --- |
| Publishing updates and patches to Adobe Commerce core | R |     |
| Availability and patching of the file system | R |  |
| Publishing updates and patches to ECE-Tools | R |     |
| Core Adobe Commerce Application Quality | R |     |

{style="table-layout:auto"}

#### Code repository

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of repo.magento.com | R |     |
| Availability of Adobe Commerce on Cloud Git server | R |     |
| Other merchant-selected Code repositories (GitHub, Bitbucket, hosted Git server) |     | R |

{style="table-layout:auto"}

#### Cloud Docker

|     | Adobe | Merchant |
| --- | --- | --- |
| Making Cloud Docker containers available for download| R |   |
| Deployment and setup of Cloud Docker (optional) |     | R |
| Any other local development setup |     | R |

{style="table-layout:auto"}

#### Commerce Cloud CLI

|     | Adobe | Merchant |
| --- | --- | --- |
| Ongoing quality and updating of ECE Tools| R |   |
| Installing the latest ECE Tools version |     | R |

{style="table-layout:auto"}

#### Customizations

|  | Adobe | Merchant |
| --- | --- | --- |
| Custom Adobe Commerce modules and code |     | R |
| Extensions |     | R |
| Custom Integrations |     | R |

{style="table-layout:auto"}

#### Deployments

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of infrastructure to build and deploy code| R |   |
| Ongoing quality of infrastructure build-and-deploy configuration pipeline| R |   |
| Configuration of build and static content deployment |     | R |
| Building and executing deployment governance process: criteria and change management |     | R |
| Deploying to Staging environment |     | R |
| Deploying to Production environment |     | R |
| Production rollbacks |     | R |

{style="table-layout:auto"}

#### Synchronizing environments

Merchants are responsible for synchronizing data between environments.

#### Patching

|     | Adobe | Merchant |
| --- | --- | --- |
| Installing updates and patches to ECE-Tools |     | R |
| Installing updates and patches to Adobe Commerce core |     | R |

#### Website availability

|  | Adobe | Merchant |
| --- | --- | --- |
| Customized Adobe Commerce application and associated websites |     | R |

#### Performance

|     | Adobe | Merchant |
| --- | --- | --- |
| Core Application tuning and optimization| R |   |
| Custom code tuning and optimization |     | R |
| Custom Adobe Commerce code |     | R |
| Load Testing |     | R |
| Performance testing |     | R |

{style="table-layout:auto"}


#### Logs and monitoring

|     | Adobe | Merchant |
| --- | --- | --- |
| Rotating Logs| R |   |
| Custom Adobe Commerce application| |R |
| Availability of New Relic services:<br>APM application and agent integration, Infrastructure application,<br>Logging & integration| R |   |
| Setting up New Relic Alerts |     | R |
| Deploying New Relic agent on PaaS Servers |  R   |  |

{style="table-layout:auto"}

#### Debugging and issue isolation

|     | Adobe | Merchant |
| --- | --- | --- |
| Debugging and issue isolation | R |R |
| Timely support of debugging and issue isolation process |     | R |

{style="table-layout:auto"}

### Application and service configuration

#### Commerce application

|     | Adobe | Merchant |
| --- | --- | --- |
| Application configuration |     | R |
| Adding domains to the Adobe Commerce application (Base URLs) |     | R |
| Configuring PaaS to use Services versions supported by the deployed Adobe Commerce version<br><br>For example, different Commerce versions are compatible with specific versions of PHP, Redis, and so on. |     | R |

{style="table-layout:auto"}

#### Task scheduling with cron jobs

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of default cron jobs | R | |
| Ongoing quality of custom cron jobs |  | R |

{style="table-layout:auto"}

#### Message broker for message queue framework

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of RabbitMQ service| R |   |
| Configuration of default RabbitMQ settings| R |   |
| Ongoing quality and patching of RabbitMQ| R |   |
| Submit a service request to install a RabbitMQ version compatible with the installed Adobe Commerce version |   | R |

{style="table-layout:auto"}

#### PHP service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of PHP| R |   |
| Configuration of default PHP settings | R |     |
| Configuration of custom PHP settings |     | R |
| Configuration of YAML file to align PHP versions compatible with installed Adobe Commerce version |    | R |

{style="table-layout:auto"}

#### Database services

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Galera and MariaDB services| R | |
| Ongoing maintenance of default database settings<br><br>(indexing and optimizing core tables, optimizing default sys-admin settings)| R |   |
| Ongoing maintenance of merchant data and modified settings<br><br>(configuring normalized vs flat tables, indexing and optimizing custom and third party tables, archiving or removing data, configuring system administration settings) |     | R |
| Configuration of Galera and MySQL| R |   |
| Ongoing quality and patching of Galera and MariaDB| R |   |
| Ongoing infrastructure optimization| R  |   |
| Identifying and fixing slow queries |     | R |
| Submit a service request to install a MariaDB version compatible with the installed Adobe Commerce version |     | R |
| Setting and maintaining merchant-specific data retention policies (Adobe's data retention policies are defined in the merchant agreement) |     | R |

{style="table-layout:auto"}

#### CDN service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability and Quality of CDN| R |   |
| Fastly service configuration (via Extension / API) |     | R |
| Fastly Extension Quality| R  |   |
| Fastly Integration VCL Snippets (bundled with the Fastly Extension) Quality| R |   |
| Page Cache optimization |     | R |
| Adding domains to services, to CDN, and to infrastructure| R |   |
| Custom VCL Snippets |     | R |
| WAF & WAF Rules| R |   |

{style="table-layout:auto"}

#### Cache Service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Redis service| R |   |
| Configuration of default Redis settings| R |   |
| Ongoing quality and patching of Redis| R |   |
| Submit a service request to install a Redis version compatible with the installed Adobe Commerce version |     | R |

{style="table-layout:auto"}

#### Search service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of ElasticSearch or OpenSearch| R |   |
| Configuration of default ElasticSearch or OpenSearch settings| R |   |
| Submit a service request to install an ElasticSearch or OpenSearch version compatible with the installed Adobe Commerce version |  | R |

{style="table-layout:auto"}

#### Email service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of SendGrid email service and its integration| R |   |
| Monitor merchant's SendGrid usage against limits| R |   |
| Merchant is responsible for using the service only for outgoing transactional emails<br>The service does not support sending of marketing emails. |     | R |
| Configuring optional third-party email services |     | R |

{style="table-layout:auto"}

#### Third Party services

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability and quality of third party services |     | R |

{style="table-layout:auto"}

### Commerce Services extensions

#### Advance Reporting service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of the Advanced Reporting Service| R |   |
| Configuration of Advanced Reporting complies with Advanced Reporting Terms & Conditions |     | R |

{style="table-layout:auto"}

#### Commerce Intelligence

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Adobe Commerce Business Intelligence services| R |   |
| MBI Data Synchronization processes| R |   |
| Detecting MBI synchronization issues| R |   |
| Configuring MBI Data Synchronization to Adobe Commerce Cloud Pro, Starter, On Premises, or non-Adobe Commerce<br>(API, Data quality and formatting, merchant network,<br>DB connections both inside and outside of Adobe Commerce Cloud DB, over data thresholds) |     | R  |
| Configuring MBI Data Synchronization to Adobe Commerce Cloud Pro<br>(Adobe Commerce Cloud database configuration)| R |   |

>![NOTE]
>Merchants are required to use the most recent version of Live Search, Product Recommendations, and Payment Services to ensure the highest stability, functionality, and eligibility for support.
>Adobe does not support outdated versions and upgrading ensures that you benefit from the latest enhancements and bug fixes.
>For details on supported versions, see the [Product Availability Matrix for Commerce Services](https://experienceleague.adobe.com/en/docs/commerce-operations/release/product-availability#commerce-services).

{style="table-layout:auto"}

#### Product Recommendations

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Product Recommendations service| R |   |
| Upgrading Product Recommendations modules|   | R |

{style="table-layout:auto"}

#### Live Search

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Live Search service| R |   |
| Upgrading Live Search modules |   | R |

{style="table-layout:auto"}

#### Quality of storefront events (data collection) to power Product Recommendations and Live Search output

|     | Adobe | Merchant |
| --- | --- | --- |
| Core theme (Luma) | R |   |
| Custom theme |  |  R |
| Core PWA implementation | R |   |
| Custom PWA implementation |  | R  |
| Core AEM EDS implementation (Commerce Boilerplate) | R |   |
| Custom AEM EDS implementation |  | R  |
| Any other custom storefront implementation |  | R  |

{style="table-layout:auto"}

#### Payment Services

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Payments Service | R |   |
| Upgrading Payments modules |   | R |

{style="table-layout:auto"}

### Network services

#### Image Optimization

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability and Quality of Image Optimization| R |  |
| Configuration of Image Optimization |     | R  |

{style="table-layout:auto"}

#### SSL Certificates

|     | Adobe | Merchant |
| --- | --- | --- |
| SSL Dedicated Certificate - expiration| R |  |
| Provisioning SSL Certificates| R |  |
| Purchasing and Maintaining EV/Specific SSL cert (other than defaults provided) and provide to Adobe |     | R |

{style="table-layout:auto"}

#### Web Application Firewall (WAF)

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability & Configuration of WAF| R  |  |
| Addressing WAF Rule False Positives| R  | |
| Reporting WAF Rule False Positives |     | R |
| WAF Rule Tuning (NOT SUPPORTED) |     |     |
| WAF/CDN Logs |     | R  |

{style="table-layout:auto"}

#### DDOS

|     | Adobe | Merchant |
| --- | --- | --- |
| Proactive IP Blocking |     | R |
| Bot Protection |     | R  |
| DDOS detection - layer 3-4| R |   |
| DDOS detection - layer 7 |     | R |
| DDOS response| R  |   |

{style="table-layout:auto"}

#### Private Link

|     | Adobe | Merchant |
| --- | --- | --- |
| Configuring and maintaining PrivateLink connections (if used) with an Adobe-owned VPC | R  |   |
| Configuring and maintaining PrivateLink connections (if used) with a Merchant-owned VPC |     | R |
| Availability of SSH (Non-Private Link)| R |   |
| Configuration of PrivateLink Inbound to Adobe Commerce Cloud Service endpoint| R |   |
| Acceptance of PrivateLink Inbound to Adobe Commerce Cloud Service endpoint |     | R |
| Configuration of PrivateLink Inbound to Merchant's VPC Service endpoint |     | R |
| Acceptance of PrivateLink Inbound to Merchant's VPC Service endpoint| R |   |
| Configuration of PrivateLink integrations (endpoint to account) |     | R |
| Configuration of merchant-owned VPC for PrivateLink endpoint<br><br> (including any VPN connections) |     | R |

{style="table-layout:auto"}

### System and infrastructure

#### App Server

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Nginx| R  |   |
| Configuration of Nginx| R  |   |
| Ongoing quality and patching of Nginx| R |   |

{style="table-layout:auto"}

#### Operating system

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Operating System| R |   |
| Ongoing quality and patching of Operating System| R |   |

{style="table-layout:auto"}

#### Backup, high availability, and failover

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of snapshot and backup process| R |   |
| Scheduling backups for Cloud Pro Staging and Production environments| R |   |
| Scheduling backups for Cloud Starter and Pro Integration environments |     | R |
| Availability of HA / Failover| R |   |

{style="table-layout:auto"}

#### Cloud Servers & Scaling

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of CPU resources, data center, disk space | R |   |
| Availability and execution of surge capacity or emergency upsizing | R |   |
| Requesting surge capacity |     | R |
| Monitoring vCPU usage against the limits | R |   |

{style="table-layout:auto"}
