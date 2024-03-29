---
title: Shared responsibility
description: Learn about the security responsibilities of each party involved in your Adobe Commerce on cloud infrastructure project.
exl-id: f3cc1685-e469-4e30-b18e-55ce10dd69ce
---
# Shared responsibility security model

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
I — Informed) to visually depict each party in the ecosystem's security responsibilities concerning the Adobe Commerce on cloud infrastructure shared responsibility model:

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
