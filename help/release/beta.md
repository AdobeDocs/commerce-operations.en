---
title: Beta releases
description: Learn about the Adobe Commerce beta releases and how to participate.
exl-id: 662cb061-995f-4e09-a2ef-9e607cc0000b
---
# Adobe Commerce beta releases

Adobe Commerce beta programs are a way for merchants to get access to prerelease features and code, provide feedback, and guide the future of Adobe Commerce. There are two types of beta programs:

- Public Beta: A public beta program is available to all Adobe Commerce customers and partners 
- Private Beta: A private beta program may require an approval based on qualifying criteria in order to participate

>[!IMPORTANT]
>
>Beta releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe will have no obligation to maintain, correct, update, change, modify or otherwise support (via Adobe Support Services or otherwise) the beta releases. Customers are advised to use caution and not to rely in any way on the correct functioning or performance of the beta releases and/or any accompanying documentation or materials. Features and APIs in beta are subject to change without notice. Accordingly, any use of the beta releases is entirely at the customer's own risk. 

## Benefits of participating

Getting early access to features that Adobe is developing provides customers and partners with the ability to provide feedback, shape product development, and prepare to adopt new capabilities before general availability.

## Current Beta Programs 

See the following sections for a list of active beta programs.

### IBM Sterling Order Management System Integration (Private Beta)

This integration accelerator for IBM Sterling Order Management enables Adobe Commerce customers to get started with advanced order management capabilities powered by IBM Sterling OMS. With this integration merchants get:
- Real-time visibility into inventory levels and accurate delivery dates for your customers.
- Automated sourcing for orders based on configurable rules, so you can optimize your fulfillment network and inventory.
- A universal view of orders across channels from a single dashboard so your support teams can deliver exceptional service and identify and handle exceptions quickly. 
- A templated return management flow to simplify returns management.

To participate in this beta, send an email request to [sbieber@adobe.com](mailto:sbieber@adobe.com).

### Data Connection & Audience Activation (Public Beta)

Expanded data sharing between Adobe Commerce & Adobe Experience Platform to drive more powerful personalized experiences. This capability enables merchants to: 
- Share Commerce customer profiles
- Create custom attributes
- Get Commerce insights in Real-Time CDP and Adobe Journey Optimizer
- Support multiple datasets and datastreams

To participate in this beta, send an email request to [DataConnection@adobe.com](mailto:DataConnection@adobe.com).

### Backoffice Integration Starter Kit (Private Beta)

The backoffice [integration starter kit](https://developer-stage.adobe.com/commerce/extensibility/app-development/starter-kit/) provides developers with an accelerator to build event-driven integrations with systems like ERPs, CRMs, and OMSs. With the starter kit, you can reduce development costs by up to 50%. The starter kit also follows Adobe Commerce best practices that reduce the cost of maintenance significantly. Starter kit highlights include:
- Data synchronization for commonly used objects like product, order, customer, stock, and shippment
- Architectural blueprints following best practices
- Onboarding scripts to accelerate development

To participate in this beta, complete the [enrollment form](https://forms.office.com/r/YbYArqE3DT).

### Adobe Commerce Foundation (Public Beta) 

Each Adobe Commerce Foundation beta release includes all the changes delivered to Adobe Commerce core code by the scheduled release date, including, but not limited to the following functional areas: 

-  Latest security fixes  
-  Performance improvements  
-  GraphQL improvements 
-  General quality bug fixes  
-  Community contributions  
-  Changes required to support compatibility with [Adobe Commerce services](https://experienceleague.adobe.com/docs/commerce-merchant-services/user-guides/home.html)

#### Naming convention and schedule

Adobe typically releases beta patches twice a year. 

Beta release packages have a `-betaX` suffix. For example, the Adobe Commerce 2.4.7 beta release packages use the following naming convention:

-  `2.4.7-beta1`
-  `2.4.7-beta2`

See the [release schedule](schedule.md) for the list of upcoming public beta release dates.


#### Beta release access

Adobe Commerce beta releases are distributed in the same way as any other Adobe Commerce patch release: as Composer metapackages on `https://repo.magento.com`. The source code is avilable on [GitHub](https://github.com/magento/magento2).

See [Composer installation quick start](../installation/composer.md) for more details.

#### Issue reporting

Adobe does not provide the standard Adobe Support Service for beta releases.

To submit feedback related to beta releases, follow our [regular issue reporting flow](https://developer.adobe.com/commerce/contributor/guides/code-contributions/) on [GitHub](https://github.com/magento/magento2). 

Our internal teams will monitor all critical issues reported against the latest beta release and prioritize them to be resolved prior to the GA release date.
