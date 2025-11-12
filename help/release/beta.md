---
title: Beta releases
description: Learn about the Adobe Commerce beta releases and how to participate.
exl-id: 662cb061-995f-4e09-a2ef-9e607cc0000b
---
# Adobe Commerce beta releases

Adobe Commerce beta programs are a way for merchants to get access to prerelease features and code, provide feedback, and guide the future of Adobe Commerce. There are two types of beta programs:

- Public Beta: A public beta program is available to all Adobe Commerce customers and partners
- Private Beta: A private beta program may require an approval based on qualifying criteria to participate

>[!IMPORTANT]
>
>Beta releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe has no obligation to maintain, correct, update, change, modify or otherwise support (via Adobe Support Services or otherwise) the beta releases. Customers are advised to use caution and not to rely in any way on the correct functioning or performance of the beta releases and/or any accompanying documentation or materials. Features and APIs in beta are subject to change without notice. Accordingly, any use of the beta releases is entirely at the customer's own risk.

## Benefits of participating

Getting early access to features that Adobe is developing provides customers and partners with the ability to provide feedback, shape product development, and prepare to adopt new capabilities before general availability.

## Current Beta Programs

See the following sections for a list of active beta programs.

### Semantic Search: smarter, context-aware shopping experiences (private beta)

Semantic search is an e-commerce search technology that understands the *meaning* behind a shopper's query, not just the exact words. Unlike traditional keyword-based search, which often fails when queries include unfamiliar or misspelled terms, this AI-powered approach interprets intent using natural language processing (NLP) and context to deliver more relevant results.

This technology addresses a major limitation of traditional search: zero-result pages that occur when shoppers use words that do not exist in the catalog. By using AI-powered techniques, it maps user queries and product data into a shared semantic space. For example, the system recognizes that "running shoes" and "jogging sneakers" refer to the same type of product, enabling:

- Synonym recognition
- Contextual relevance
- Intelligent handling of vague, misspelled, or compound queries
- Understanding of natural, conversational language

To request an invitation to the beta program, send an email to [commerce-storefront-services@adobe.com](mailto:commerce-storefront-services@adobe.com). The Adobe team will respond with next steps and eligibility requirements.

### Cloud Automation Patching Service (Private Beta)

The [Cloud Automation Patching Service](../tools/caps-tool/intro.md) automates the process of applying isolated security patches to your [Adobe Commerce on Cloud Infrastructure](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/overview) environments.

In October 2025, the beta release of the Cloud Automation Patching Service will be added to the [Site-Wide Analysis tool dashboard](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/site-wide-analysis-tool/dashboard). This service supports Commerce project administrators with a streamlined patching workflow that includes:

- Automated patch installation
- Rollback recovery
- Post-deployment verification.

The service ensures that you can maintain secure, stable, and updated environments with minimal manual effort and risk.

The beta includes the following features:

- **Automate patch installation**: Simplify and automate the process of patching critical vulnerabilities across environments.
- **Minimize risk**: Prevent site outages with post-deployment health check and rollback capabilities.

>[!NOTE]
>
>Since the Cloud Automation Patching Service applies isolated security patches automatically, you must have the [Contributor or Project Admin role](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/project/user-access) to use it.

To participate in this beta, complete and submit the [Cloud Automation Patching Service - Beta Signup Form](https://forms.office.com/r/3Wfxj5nPdB).

### IBM Sterling Order Management System Integration (Private Beta)

This integration accelerator for IBM Sterling Order Management enables Adobe Commerce customers to get started with advanced order management capabilities powered by IBM Sterling OMS. With this integration merchants get:

- Real-time visibility into inventory levels and accurate delivery dates for your customers.
- Automated sourcing for orders based on configurable rules, so you can optimize your fulfillment network and inventory.
- A universal view of orders across channels from a single dashboard so your support teams can deliver exceptional service and identify and handle exceptions quickly.
- A templated return management flow to simplify returns management.

To participate in this beta, send an email request to [sbieber@adobe.com](mailto:sbieber@adobe.com).

### Adobe Commerce Foundation (Public Alpha/Beta)

Each Adobe Commerce Foundation alpha and beta release includes all the changes delivered to Adobe Commerce core code by the scheduled release date, including, but not limited to the following functional areas: 

- Latest security fixes
- Performance improvements
- GraphQL improvements
- General quality bug fixes
- Community contributions
- Changes required to support compatibility with [Adobe Commerce services](https://experienceleague.adobe.com/en/docs/commerce/user-guides/home)

#### Naming convention and schedule

Adobe typically releases alpha and beta patches several times a year.

Alpha release packages have a `-alphaX` suffix. For example, the Adobe Commerce 2.4.7 alpha release packages use the following naming convention:

- `2.4.7-alpha1`
- `2.4.7-alpha2`

Beta release packages have a `-betaX` suffix. For example, the Adobe Commerce 2.4.7 beta release packages use the following naming convention:

- `2.4.7-beta1`
- `2.4.7-beta2`

See the [release schedule](schedule.md) for the list of upcoming public alpha and beta release dates.

#### Release access

Adobe Commerce alpha and beta releases are distributed in the same way as any other Adobe Commerce patch release: as Composer metapackages on `https://repo.magento.com`. The source code is available on [GitHub](https://github.com/magento/magento2).

See [Composer installation quick start](../installation/composer.md) for more details.

#### Issue reporting

Adobe does not provide the standard Adobe Support Service for alpha and beta releases.

To submit feedback related to alpha and beta releases, follow the [regular issue reporting flow](https://developer.adobe.com/commerce/contributor/guides/code-contributions/) on [GitHub](https://github.com/magento/magento2).

Adobe monitors all critical issues reported against the latest alpha or beta release and prioritizes them to be resolved prior to the GA release date.
