---
title: On-premises installation overview
description: Learn about the installation process for on-premises deployments of Adobe Commerce.
exl-id: a9f5b241-d05d-462c-8c7f-479a264c988f
---

# On-premises installation overview

This page provides an overview of installing Adobe Commerce on your own infrastructure. The installation process involves setting up your server environment, obtaining the necessary software and credentials, and running the installation command.

You can install the Adobe Commerce on-premises software in approximately 30 to 60 minutes. However, the time required to set up your server environment before installation varies based on your experience and the technologies that you select.

>[!TIP]
>
>You should have intermediate technical knowledge and server access to proceed successfully.

The installation creates a fully functional Adobe Commerce store with both a [customer-facing storefront](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront) and an [administrative panel](https://experienceleague.adobe.com/en/docs/commerce-admin/start/admin/admin). You must have your database credentials, domain information, and authentication keys ready before beginning the process.

## Merchant responsibilities

With Adobe Commerce on-premises, you host and manage your own infrastructure, including servers, hosting environments, and system maintenance. Adobe provides support specifically for the core Commerce application, including:

- Access to product updates and fixes
- Security patches to address vulnerabilities
- Comprehensive documentation to assist you with managing and optimizing your self-hosted solution

You have full control over your environment, allowing for greater customization and flexibility, but you are responsible for ensuring the infrastructure's performance, security, and scalability. For example, you are responsible for the following:

- The design, implementation, configuration, maintenance, troubleshooting and performance testing of all Adobe Commerce on premises systems.
  - Servers, operating system, databases, [!DNL PHP], search, caching, full page cache, and content delivery network. Common themes may include (but not limited to) [!DNL Nginx/Apache], [!DNL PHP], [!DNL MySQL/MariaDB], [!DNL Redis], [!DNL Elasticsearch/OpenSearch], [!DNL RabbitMQ], [!DNL Varnish], [!DNL DNS], [!DNL SSL/TLS certificates], and any [!DNL CDN] used.
- Capacity planning, auto scaling, clustering, backups, disaster recovery
- All product and customer data, design, configuration and setup, application and database upkeep, code deployment, version upgrades, and patch application
- Monitoring & alerting via APM/logging/alerting (for example, [!DNL New Relic], [!DNL Datadog], [!DNL ELK])
- Security patching for operating system, [!DNL PHP], database, middleware hardening and updates

## Workflow

The following diagram illustrates the main steps involved in installing Adobe Commerce for on-premises environments:

![How installation works](../assets/installation/on-premises-install.drawio.svg)

### Set up your server environment
   
Install and configure PHP, web server, database, and search engine according to the [prerequisites](prerequisites/overview.md).

### Get authentication keys
   
Generate new [authentication keys](prerequisites/authentication-keys.md) (or copy existing keys) from the Commerce Marketplace to access Adobe Commerce Composer packages.

### Get the Adobe Commerce software
   
Download using [Composer](prerequisites/commerce.md) (recommended) or clone from GitHub for development contributions.

If you want to contribute to the Magento Open Source codebase or customize the application, [clone](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository/) the GitHub repository. This method requires familiarity with both GitHub and Composer.

### Install the application
   
Run the installation command with your specific configuration. See the [quick start](composer.md) for complete examples.

>[!NOTE]
>
>If the steps fail because prerequisite software is not set up correctly, review the [prerequisites](prerequisites/overview.md).

### Verify the installation
   
[Test](next-steps/verify.md) your storefront and admin panel to ensure everything works correctly.

## Common installation issues

- **Permission errors**: Ensure proper file system ownership and permissions
- **Database connection failures**: Verify database credentials and network connectivity
- **Authentication key errors**: Confirm that your Commerce Marketplace keys are valid and active
- **Memory limits**: Ensure sufficient PHP memory allocation (minimum 2GB recommended)
