---
title: Beta releases
description: Learn about the Adobe Commerce beta releases and how to participate.
exl-id: 662cb061-995f-4e09-a2ef-9e607cc0000b
badgePaas: label="PaaS" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud projects (Adobe-managed PaaS infrastructure) and on-premises projects only."
badgeSaas: label="SaaS" type="Positive" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce as a Cloud Service and Adobe Commerce Optimizer projects only (Adobe-managed SaaS infrastructure)."
---
# Adobe Commerce beta releases

Beta programs for [Adobe Commerce product solutions](https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions) are a way for merchants to get access to prerelease features and code, provide feedback, and guide the future of Adobe Commerce. There are two types of beta programs:

- Public Beta: A public beta program is available to all Adobe Commerce customers and partners
- Private Beta: A private beta program may require an approval based on qualifying criteria to participate

>[!IMPORTANT]
>
>**Legal Disclaimer**<br/>
>Beta releases include prerelease features and code that may contain defects and are provided "AS IS" without warranty of any kind. Adobe has the sole discretion whether to make beta releases generally available. Adobe has no obligation to maintain, correct, update, change, modify, support (via Adobe Support Services or otherwise), or deliver such beta releases by any specific date. Should a beta release become generally available, it may be subject to additional terms and conditions, including applicable fees. Beta releases are subject to change without notice, including discontinuation. Customers are advised to use caution and not to rely in any way on the uninterrupted or error-free functioning or performance of the beta releases.  Accordingly, any use of the beta releases is entirely at the customer's own risk. 

## Benefits of participating

Getting early access to features that Adobe is developing provides customers and partners with the ability to provide feedback, shape product development, and prepare to adopt new capabilities before general availability.

## Current Beta Programs

See the following sections for a list of active beta programs.

### Search matching and ranking (Private Beta)

Adobe is improving how product discovery ranks search results for [!DNL Live Search] on [!DNL Adobe Commerce] and for [!DNL Adobe Commerce Optimizer]. The update prioritizes **exact and near phrase matches**, then matches where **all query terms appear in the same searchable attribute**, and finally **cross-field** matches (including behavior that supports autocomplete-style suggestions). That layered model helps high-intent queries surface the most relevant products first while still returning useful alternatives.

The same relevance model interacts with **search weights**, **intelligent ranking**, **synonyms**, and **merchandising rules** (pin, boost, bury). German storefronts can use **decompounding** for compound words, with the same overall prioritization approach.

**Key benefits**

- Stronger boosts for exact and near phrase matches (including normalized forms such as singular and plural).
- Higher ranking when all query words appear together in one searchable field.
- Clearer expectations for how weights, intelligent ranking, and manual rules combine at query time.
- Guidance for validating high-value queries and tuning boost rules after the change.

Learn more about search matching and ranking strategy in [Adobe Commerce Optimizer (SaaS)](https://experienceleague.adobe.com/en/docs/commerce/optimizer/manage-results/search-relevance-matching) and [Live Search (PaaS)](https://experienceleague.adobe.com/en/docs/commerce/live-search/live-search-admin/search-relevance-matching).

To request an invitation to this private beta, send an email to [commerce-storefront-services@adobe.com](mailto:commerce-storefront-services@adobe.com). The Adobe team will respond with next steps and eligibility requirements.

### Recommendation price filters (Public Beta) {#recommendation-price-filters-public-beta}

[!BADGE SaaS only]{type=Positive url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce as a Cloud Service and Adobe Commerce Optimizer projects only (Adobe-managed SaaS infrastructure)."}

[!DNL Adobe Commerce Optimizer] adds **price filters** to Product Recommendations so you can include or exclude recommended products based on price when you create or edit a recommendation unit. Filters use each product's **final computed price** from the storefront's **active price book**, including discounts and promotions from that price book (not list price alone). Price rules refine the candidate set; they do not re-rank products.

You can define **static** ranges with fixed minimum and maximum values in your store's base currency, or **dynamic** rules on product detail pages that compare recommended products to the **currently viewed product** using operators such as less than or equal to, greater than or equal to, or within a value or percentage range of the anchor price. Dynamic filters are available for SKU-related recommendation types that run in product context (for example, *Viewed this, viewed that* and *More like this*).

**Key benefits**

- Include or exclude recommendation candidates by price using inclusion and exclusion rules on the **Filter products** step.
- Use static price bands for fixed merchandising goals (for example, budget-friendly add-ons or premium upsells).
- Use dynamic price rules on the product detail page to show alternatives within a comparable price band relative to the product being viewed.
- Align filtering with the price shoppers see, which is the same final price from the active price book that is used for filtering and display.

To learn more, see [Recommendation filters — Price](https://experienceleague.adobe.com/en/docs/commerce/optimizer/merchandising/recommendations/filters#price) in the merchant guide and [Product Recommendations setup](https://experienceleague.adobe.com/developer/commerce/storefront/merchants/content-customizations/product-recommendations/) in the storefront drop-in guide.

To share your feedback as you use this beta feature, send an email to [commerce-storefront-services@adobe.com](mailto:commerce-storefront-services@adobe.com).

### Cloud Automation Patching Service (Private Beta)

[!BADGE PaaS only]{type=Informative url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud projects (Adobe-managed PaaS infrastructure) and on-premises projects only."}

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

### Merchant Productivity AI Assistant (Public Beta)

The Merchant Productivity AI Assistant is a conversational interface embedded in the Adobe Commerce Admin that helps merchants complete routine tasks and access business insights on demand using natural language. It enables merchants to manage promotions, update product catalog information, and retrieve operational data–such as recent orders or active promotions–directly within their existing workflows. The assistant also provides in-context guidance to help merchants navigate and use the Admin more efficiently.

**Key benefits**

- Automate common merchandising tasks, including promotion creation and catalog metadata updates, using natural language instructions.
- Access contextual assistance and guidance directly within the Admin workflow.
- Query live store data on demand—for example, retrieve the last 10 orders, view currently active promotions, or check inventory status.
- Reduce time spent on repetitive Admin tasks, freeing merchants to focus on strategy and growth.

To participate in this beta, send an email to [commerce-storefront-services@adobe.com](mailto:commerce-storefront-services@adobe.com).

### Adobe Commerce Foundation (Public Alpha/Beta)

[!BADGE PaaS only]{type=Informative url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud projects (Adobe-managed PaaS infrastructure) and on-premises projects only."}

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
