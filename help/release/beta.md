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
>Beta releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe will have no obligation to maintain, correct, update, change, modify or otherwise support (via Adobe Support Services or otherwise) the beta releases. Customers are advised to use caution and not to rely in any way on the correct functioning or performance of the beta releases and/or any accompanying documentation or materials. Features and APIs in beta are subject to change without notice. Accordingly, any use of the beta releases is entirely at the customer's own risk.

## Benefits of participating

Getting early access to features that Adobe is developing provides customers and partners with the ability to provide feedback, shape product development, and prepare to adopt new capabilities before general availability.

## Current Beta Programs

See the following sections for a list of active beta programs.

### Enhanced search capabilities for Live Search (Public Beta)

This beta supports three new capabilities in the [`productSearch` query](https://developer.adobe.com/commerce/services/graphql/live-search/product-search/):

- **Layered search** - Search within another search context - With this capability, you can undertake up to two layers of search for your search queries. For example:
  
  - **Layer 1 search** - Search for "motor" on "product_attribute_1".
  - **Layer 2 search** - Search for "part number 123" on "product_attribute_2". This example searches for "part number 123" within the results for "motor".

  Layered search is available for both `startsWith` search indexation and `contains` search indexation as described below:

- **startsWith search indexation** - Search using `startsWith` indexation. This new capability allows:

  - Searching for products where the attribute value starts with a particular string.
  - Configuring an "ends with" search so shoppers can search for products where the attribute value ends with a particular string. To enable an "ends with" search, the product attribute needs to be ingested in reverse and the API call should also be a reversed string.

- **contains search indexation** -Search an attribute using contains indexation. This new capability allows:

    - Searching for a query within a larger string. For example, if a shopper searches for the product number "PE-123" in the string "HAPE-123".
        
        - Note: This search type is different from the existing [phrase search](https://developer.adobe.com/commerce/services/graphql/live-search/product-search/#phrase), which performs an autocomplete search. For example, if your product attribute value is "outdoor pants", a phrase search returns a response for "out pan", but does not return a response for "oor ants". A contains search, however, does return a response for "oor ants".

These new conditions enhance the search query filtering mechanism to refine search results. These new conditions do not affect the main search query. To participate in the beta, send an email request to [commerce-storefront-services](mailto:commerce-storefront-services@adobe.com).

To install the Live Search beta, see the [Live Search guide](https://experienceleague.adobe.com/en/docs/commerce-merchant-services/live-search/install#install-the-live-search-beta).

### Experience Manager Assets Integration for Commerce (Private Beta)

The Experience Manager Assets Integration for Commerce enables efficient management and delivery of a large volume of product images from Experience Manager Assets to Adobe Commerce with low or no operational effort required.

Key features:

- Plug and play integration–Provide an Adobe powered, out of the box, integration between Experience Manager Assets and Adobe Commerce to empower merchants to focus on what matters most, with reduced operational costs and improved efficiency.

- Personalize product images at scale–Use Experience Manager Assets to generate millions of product variations for personalized Commerce experiences with easy UI based editing tools, generative content creation using Adobe Firefly, and assigned asset workflows to ensure brand consistency. Once you are happy with the assets, seamlessly deliver them to your Commerce storefronts using the Experience Manager Assets Integration.

- Easy onboarding–Simplify merchant onboarding with a configurable synchronization process that enables full synchronization between the Experience Manager Assets repository and the Commerce catalog.

- Flexible matching strategy–The integration includes default asset matching algorithms based on product SKUs that synchronize images between AEM Assets and Commerce, and it's extensible using Adobe Developer App Builder. Work with your solution partner to build a custom asset matching strategy on top of the integration to accommodate any asset management repository structure.

To participate in the beta, send an email request to [Shaun McCran](mailto:mccran@adobe.com).

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

To participate in this beta, send an email request to [DataConnection@adobe.com](mailto:DataConnection@adobe.com).

### Adobe Commerce Foundation (Public Beta)

Each Adobe Commerce Foundation beta release includes all the changes delivered to Adobe Commerce core code by the scheduled release date, including, but not limited to the following functional areas: 

- Latest security fixes
- Performance improvements
- GraphQL improvements
- General quality bug fixes
- Community contributions
- Changes required to support compatibility with [Adobe Commerce services](https://experienceleague.adobe.com/docs/commerce-merchant-services/user-guides/home.html)

#### Naming convention and schedule

Adobe typically releases beta patches twice a year.

Beta release packages have a `-betaX` suffix. For example, the Adobe Commerce 2.4.7 beta release packages use the following naming convention:

- `2.4.7-beta1`
- `2.4.7-beta2`

See the [release schedule](schedule.md) for the list of upcoming public beta release dates.


#### Beta release access

Adobe Commerce beta releases are distributed in the same way as any other Adobe Commerce patch release: as Composer metapackages on `https://repo.magento.com`. The source code is avilable on [GitHub](https://github.com/magento/magento2).

See [Composer installation quick start](../installation/composer.md) for more details.

#### Issue reporting

Adobe does not provide the standard Adobe Support Service for beta releases.

To submit feedback related to beta releases, follow our [regular issue reporting flow](https://developer.adobe.com/commerce/contributor/guides/code-contributions/) on [GitHub](https://github.com/magento/magento2).

Our internal teams will monitor all critical issues reported against the latest beta release and prioritize them to be resolved prior to the GA release date.
