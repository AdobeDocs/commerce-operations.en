---
title: Cloud infrastructure overview
description: Learn about the Adobe Commerce on cloud infrastructure.
exl-id: 94cf1505-0853-4e01-ba55-befc1117fbdb
feature: Cloud
---

# Overview

One of the most popular managed-hosting options for Adobe Commerce on AWS is offered by Adobe Commerce itself. Adobe Commerce on cloud infrastructure is a fully managed automated hosting platform for the Adobe Commerce software.

Adobe Commerce on cloud infrastructure is a platform-as-a-service (PaaS) offering that enables rapid deployment of fully customizable, secure, and scalable web storefronts combined with a leading hosting and Managed Services infrastructure. It offers two plans with different infrastructures. Adobe Commerce [Starter](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/cloud-architecture.html#starter-projects) plans are best suited for smaller stores with less complexity and smaller catalogs. Adobe Commerce [Pro](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/cloud-architecture.html#pro-projects) plans are designed for larger stores with more complexity, larger product catalogs, or traffic that peaks. Adobe determines the appropriate architecture with input from partners.

Adobe Commerce is cloud-ready with a fully redundant multi-cloud hosting infrastructure that provides optimized performance, resilience, and elastic scalability. You can efficiently run your commerce platform on Fastly's content delivery network (CDN), and with New Relic for monitoring and management you can keep your store environment running smoothly.

Adobe Commerce offers all the benefits of modern cloud computing that are most commonly associated with SaaS solutions while still maintaining flexibility in software customization:

- Elastic scalability
- High resilience and availability
- PCI compliance
- Global availability and automated patching

![Diagram showing architectural elements of Adobe Commerce on cloud infrastructure](../../../assets/playbooks/adobe-commerce-cloud-infrastructure.svg)

## Benefits

Other benefits of Adobe Commerce include:

- **Optimized for Adobe Commerce**. Adobe Commerce-developed build scripts and service configuration ensure that every instance is correctly tuned and configured for optimal merchant performance.

- **Consistent, secure releases**. All code deployments are Git-based for consistency and repeatability, with read-only production environments for hardened security.

- **Flexibility for partners**. A full REST API and a scriptable command-line interface ensure ease of integration with external systems and compatibility with existing code management workflows.

- **Flexible deployment toolset**. Rapidly spin up, merge, clone, and tear down unlimited environments at will for development tasks, QA testing, or production-issue diagnosis.

- **Continuous cloud delivery**. Move with confidence straight from development to UAT to production, in a continuous manner across code branches and development teams.

## Third-party services

This section summarizes key third-party services and tools for ADobe Commerce on cloud infrastructure projects. See [Technology stack](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/tech-stack.html) in the _Cloud Guide_ for more details.

- **Fastly CDN**: As customers access your site and stores, the requests hit Fastly to load cached pages faster. Fastly WAF also provides a DDoS protection service.

- **New Relic**: Provides a complete view of your applications and operating environment. New Relic allows you to combine key metrics from mobile and browser applications with supporting services, data stores, and hosts so you can optimize performance holistically and ensure the success of every initiative.

- **Composer**: Manages dependencies and upgrades in Adobe Commerce and provides context about the included packages, what the packages do, and how they fit together.

- **Git**: Provides source code management. Git allows local branching, convenient staging areas, and multiple workflows with automatic build and deploy for efficient rapid development and continuous deployment.

- **Platform-as-a-Service (PaaS)**: Provides a pre-provisioned infrastructure that includes PHP, MySQL, Redis, [!DNL RabbitMQ], and OpenSearch or Elasticsearch technologies.

- **AWS or Azure's cloud hosting**: Powers the underlying Infrastructure-as-a-Service (IaaS), which offers a scalable and secure environment for online sales and retailing.
