---
title: Shared responsibility security and operational model
description: Learn about the security responsibilities of each party involved in your Adobe Commerce on cloud infrastructure project.
exl-id: f3cc1685-e469-4e30-b18e-55ce10dd69ce
---
# Shared responsibility security and operational model

Adobe Commerce on cloud infrastructure is a platform-as-a-service (PaaS) offering that relies on a shared responsibility security model. Adobe, the merchant, the cloud service provider, and the content delivery network (CDN) provider each bear distinct responsibility for maintaining the security of the Adobe Commerce on cloud infrastructure application and merchant-specific code and extensions.

This approach enables merchants to design and implement a highly flexible, customizable, and scalable solution that best suits their business requirements while minimizing operational responsibilities and costs.

In general, Adobe is responsible for developing and maintaining secure core application code, maintaining the security of the platform, ensuring the platform's SOC 2 and PCI compliance and its compatibility with PCI-compliant technology components (for example, PHP, Redis), and responding to security issues concerning the core platform. Adobe is also responsible for working with cloud service providers and CDN partners to resolve issues that may arise.

Merchants are responsible for maintaining secure custom code and integrations with third-party applications, ensuring secure application development, obtaining PCI certification if requested by the merchant's payment processor, and reacting and responding to security incidents.

## Adobe responsibilities

Adobe is responsible for the security and availability of the Adobe Commerce on cloud infrastructure environment and the core Adobe Commerce on cloud infrastructure solution code. In addition, Adobe is responsible for the necessary activities and mechanisms that maintain the security of the Adobe Commerce on cloud infrastructure solution, including:

- Applying server-level security and patches for applications supported by Adobe Commerce on cloud infrastructure, such as cloud data storage and search capabilities
- Conducting penetration testing and scanning of the core Adobe Commerce on cloud infrastructure code
- Conducting semi-annual reviews/audits of public cloud service providers' identity and access management (IAM) solution and permissions management (PCI compliance requirement)
- Conducting semi-annual reviews/audits of authorized users, including Adobe employees and contractors (PCI compliance requirement)
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

While Adobe maintains PCI certification for the infrastructure and services used in the operation of the Adobe Commerce on cloud infrastructure solution, merchants are responsible for the compliance of custom code, system and network processes, and organization.

Adobe also ensures the availability of the merchant's infrastructure as agreed upon in the applicable SLA. 

## Merchant responsibilities

The merchant is responsible for following security best practices for their specific, customized instance of Adobe Commerce on cloud infrastructure solution, and for:

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
   >The merchant's PCI compliance builds upon the PCI certifications of Adobe Commerce on cloud infrastructure and the cloud hosting provider to minimize the areas that must be reviewed.

- Running PCI ASV scans and remediating issues in the core Adobe Commerce on cloud infrastructure code and platform
- Monitoring all application activities that might reveal a potential security threat, including penetration testing, vulnerability scans, and logs
- Monitoring and responding to security incidents, including forensics, remediation, and reporting related to the merchant's Adobe Commerce on cloud infrastructure solution and user accounts
- Obtaining a DNS provider and configuring and maintaining any merchant-specific DNS records
- Running performance tests on the customized application
- Securing access to the platform accounts, instance access, and application
- Testing and QA of the custom application
- Maintaining the security of any systems or networks the merchant connects to the Adobe Commerce on cloud infrastructure application

## Cloud service provider responsibilities

Adobe relies on well-established cloud service providers to host the cloud server infrastructure for Adobe Commerce on cloud infrastructure. These providers are responsible for security of the network, including routing, switching, and perimeter network security via firewall systems and intrusion detection systems (IDS). Cloud service providers are also responsible for the physical security of data centers that host the Adobe Commerce on cloud infrastructure solution and the environmental security of data centers.

Cloud service providers are also responsible for:

- Maintaining PCI DSS, SOC 2, and ISO 27001 certifications for their cloud services
- Securing the hypervisor
- Securing the data center, including both physical and network access

## CDN provider responsibilities

The Adobe Commerce on cloud infrastructure solution uses CDN providers to speed page-load time, cache content, and instantly purge outdated content. These providers are also responsible for security issues directly related to or affecting their CDN, and for defining and maintaining CDN WAF rules.

## Security responsibilities chart

The following chart uses the RACI model (R — Responsible, A — Accountable, C — Consulted,
I — Informed) to visually depict each party in the ecosystem's security responsibilities concerning the Adobe Commerce on cloud infrastructure shared responsibility security and operational model:

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
    <td>Applying patches to supporting services<br>(for example, Nginx, MySQL)</td>
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
    <td>Scaling (PaaS/grid)</td>
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
    <td>Connecting repository/ies to Adobe Commerce on cloud infrastructure</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Configuring source repository<sup>1</sup></td>
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
    <td>Testing customized application</td>
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
    <td>Configuring New Relic APM/infrastructure</td>
    <td></td>
    <td>R</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Installing New Relic APM/infrastructure</td>
    <td>R</td>
    <td>I</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Supporting New Relic APM/infrastructure</td>
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
    <td>Obtaining DNS provider (Pro only)</td>
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
      <p><sup><strong>3</strong></sup> Some Ngnix controls are configured by the merchant for their applications and are their responsibility.</p>
      <p><sup><strong>4</strong></sup> For PCI, penetration testing requirements are shared between Adobe and the merchant.</p>
    </td>
  </tr>
</tfoot>
</table>

## Operations Responsibility chart

### Performance

|     | Adobe | Merchant |
| --- | --- | --- |
| Core Application tuning and optimization | X   |     |
| Custom code tuning and optimization |     | X   |
| Custom Adobe Commerce code |     | X   |
| Load Testing |     | X   |
| Performance testing |     | X   |

### Debugging and Issue Isolation

|     | Adobe | Merchant |
| --- | --- | --- |
| Debugging and Issue isolation | X   | X   |
| Timely support of debugging and issue isolation process |     | X   |

### Website(s) Availability

|     | Adobe | Merchant |
| --- | --- | --- |
| Customized Adobe Commerce application and website(s) |     | X   |

### Third Party Services

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability and quality of third party services |     | X   |

### Patching

|     | Adobe | Merchant |
| --- | --- | --- |
| Installing updates and patches to ECE-Tools |     | X  |
| Installing updates and patches to Adobe Commerce core |     | X   |

### Customizations

|     | Adobe | Merchant |
| --- | --- | --- |
| Custom Adobe Commerce modules and code |     | X   |
| Extensions |     | X   |
| Custom Integrations |     | X   |

### Core Adobe Commerce Code

|     | Adobe | Merchant |
| --- | --- | --- |
| Publishing updates and patches to Adobe Commerce core | X   |     |
| Publishing updates and patches to ECE-Tools | X   |     |
| Core Adobe Commerce Application Quality | X   |     |

### Application and Service Configuration

|     | Adobe | Merchant |
| --- | --- | --- |
| Application configuration |     | X   |
| Adding domains to Adobe Commerce application (Base URLs) |     | X   |
| Configuring PaaS to use Services versions supported by the deployed Adobe Commerce version<br><br>(for example, different Commerce versions are compatible with specific versions of PHP, Redis, and so on. |     | X  |

### CDN Service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability and Quality of CDN | X   |     |
| Fastly service configuration (via Extension / API) |     | X   |
| Fastly Extension Quality | X   |     |
| Fastly Integration VCL Snippets (bundled with the Fastly Extension) Quality | X   |     |
| Page Cache optimization |     | X   |
| Adding domains to services, to CDN, and to infrastructure | X  |     |
| Custom VCL Snippets |     | X   |
| WAF & WAF Rules | X   |     |

### DDOS

|     | Adobe | Merchant |
| --- | --- | --- |
| Proactive IP Blocking |     | X   |
| Bot Protection |     | X   |
| DDOS detection - layer 3-4 | X   |     |
| DDOS detection - layer 7 |     | X   |
| DDOS response | X   |     |
| Configuration of Fastly Extension Rate Limiting and Bot Protection (Limited) |     | X |

### Network: IO

|     | Adobe | Customer |
| --- | --- | --- |
| Availability and Quality of Image Optimization |  X   |    |
| Configuration of Image Optimization |     | X   |

### Network: SSL

|     | Adobe | Customer |
| --- | --- | --- |
| SSL Dedicated Certificate - expiration |  X   |    |
| Provisioning SSL Certificates |   X  |    |
| Purchasing and Maintaining EV/Specific SSL cert (other than defaults provided) and provide to Adobe |     |  X  |

### Network: WAF

|     | Adobe | Customer |
| --- | --- | --- |
| Availability & Configuration of WAF |  X   |    |
| Addressing WAF Rule False Positives |   X  |    |
| Reporting WAF Rule False Positives |     |   X |
| WAF Rule Tuning (NOT SUPPORTED) |     |     |
| WAF/CDN Logs |     |  X   |

### App Server

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Nginx | X   |     |
| Configuration of Nginx | X   |     |
| Ongoing quality and patching of Nginx | X   |     |

### Code Repository

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of repo.magento.com | X   |     |
| Availability of Adobe Commerce cloud Git server | X   |     |
| Other merchant-selected Code repository (GitHub, Bitbucket, hosted Git server) |     | X   |

### Private Link 

|     | Adobe | Merchant |
| --- | --- | --- |
| Configuring and maintaining PrivateLink connections (if used) with Adobe-owned VPC(s) | X   |     |
| Configuring and maintaining PrivateLink connections (if used) with Merchant-owned VPC(s) |     | X   |
| Availability of SSH (Non Private Link) | X   |     |
| Configuration of PrivateLink Inbound to Adobe Commerce Cloud Service endpoint | X   |     |
| Acceptance of PrivateLink Inbound to Adobe Commerce Cloud Service endpoint |     | X   |
| Configuration of PrivateLink Inbound to Merchant's VPC Service endpoint |     | X   |
| Acceptance of PrivateLink Inbound to Merchant's VPC Service endpoint | X   |     |
| Configuration of PrivateLink integrations (endpoint to account) |     | X   |
| Configuration of merchant-owned VPC for PrivateLink endpoint<br><br> (including any VPN connections) |     | X   |

### Cron Jobs

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of default cron jobs | X   |     |
| Ongoing quality of custom cron jobs |     | X  |

### MySQL

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Galera and MariaDB services | X  |     |
| Ongoing maintenance of default database settings<br><br>(indexing and optimizing core tables, optimizing default sys-admin settings) | X   |     |
| Ongoing maintenance of merchant data and modified settings<br><br>(configuring normalized vs flat tables, indexing and optimizing custom and third party tables, archiving or removing data, configuring Sys admin settings) |     | X   |
| Configuration of Galera and MySQL | X   |     |
| Ongoing quality and patching of Galera and MariaDB | X   |     |
| Ongoing infrastructure optimization | X   |     |
| Identifying and fixing slow queries |     | X   |
| Submit service request to install MariaDB versions compatible with installed Adobe Commerce version |     | X   |
| Setting and maintaining merchant-specific data retention policies (Adobe's data retention policies are defined in the merchant agreement) |     | X   |

### Commerce Cloud CLI

|     | Adobe | Merchant |
| --- | --- | --- |
| Ongoing quality and updating of ECE Tools | X   |     |
| Installing latest ECE Tools version |     | X   |

### Email Service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of SendGrid email service and its integration | X  |     |
| Monitor merchant's SendGrid usage against limits | X  |     |
| Configuring optional third party email services |     | X  |

### Logs

|     | Adobe | Merchant |
| --- | --- | --- |
| Rotating Logs | X   |     |

### Operating System

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Operating System | X   |     |
| Ongoing quality and patching of Operating System | X   |     |

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of PhP | X   |     |
| Configuration of default PHP settings | X  |     |
| Configuration of custom PHP settings |     | X  |
| Configuration of YAML file to align PHP versions compatible with installed Adobe Commerce version |    | X |

### Message Broker for Message Queue Framework

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of RabbitMQ service | X  |     |
| Configuration of default RabbitMQ settings | X   |     |
| Ongoing quality and patching of RabbitMQ | X   |     |
| Submit service request to install RabbitMQ versions compatible with installed Adobe Commerce version |   | X  |

### Cache service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Redis service | X  |     |
| Configuration of default Redis settings | X   |     |
| Ongoing quality and patching of Redis | X   |     |
| Submit service request to install Redis versions compatible with installed Adobe Commerce version |     | X   |

### Search Service

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of ElasticSearch | X   |     |
| Configuration of default ElasticSearch settings | X   |     |
| Submit service request to install ElasticSearch versions compatible with installed Adobe Commerce version |  | X |

### Deployments

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of infrastructure to build and deploy code | X  |     |
| Ongoing quality of infrastructure build-and-deploy configuration pipeline | X  |     |
| Configuration of build and static content deployment |     | X  |
| Building and executing deployment governance process: criteria and change management |     | X  |
| Deploying to Staging environment |     | X  |
| Deploying to Production environment |     | X  |
| Production rollbacks |     | X  |

### Product Recommendations

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of the Advanced Reporting service | X   |     |
| Configuration of Advanced Reporting complies with Advanced Reporting Terms & Conditions |     | X  |

### Commerce Intelligence

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Adobe Commerce Business Intelligence services | X   |     |
| MBI Data Synchronization processes | X   |     |
| Detecting MBI synchronization issues | X   |     |
| Configuring MBI Data Synchronization to Adobe Commerce Cloud Pro, Starter, On-Prem, or non-Adobe Commerce<br>(API, Data quality and formatting, merchant network,<br>DB connections both inside and outside of Adobe Commerce Cloud DB, over data thresholds) |     | X   |
| Configuring MBI Data Synchronization to Adobe Commerce Cloud Pro<br>(Adobe Commerce Cloud database  configuration) | X   |     |

### Monitoring

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of New Relic services:<br>APM application and agent integration, Infrastructure application,<br>Logging & integration | X |     |
| Setting up New Relic Alerts |     | X   |
| Deploying New Relic agent on Paas Servers |     | X |

### Product Recommendations

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of Product Recommendations service | X   |     |

### Synchronizing Environments

Customers are responsible for synchronizing data between production and staging environments.


|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of snapshot and backup process | X |     |
| Scheduling backups for Cloud Pro Staging and Production environments | X   |     |
| Scheduling backups for Cloud Starter and Pro Integration environments |     | X   |
| Availability of HA / Failover | X   |     |

### Cloud Servers & Scaling

|     | Adobe | Merchant |
| --- | --- | --- |
| Availability of CPU resources, data center, disk space | X   |     |
| Availability and execution of surge capacity or emergency upsizing | X   |     |
| Requesting surge capacity |     | X   |
| Monitoring vCPU usage against limits | X   |     |

### Synchronizing Environments

|     | Adobe | Merchant |
| --- | --- | --- |
| Synchronizing data between Staging and Production environments |     | X   |

### Cloud Docker

|     | Adobe | Merchant |
| --- | --- | --- |
| Making Cloud Docker containers available for download | X   |     |
| Deployment and setup of Cloud Docker (optional) |     | X   |
| Any other local development setup |     | X   |
