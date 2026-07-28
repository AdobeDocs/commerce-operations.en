---
title: Security Enforcement for Unsupported Cloud Versions
description: Learn about security enforcement for unsupported Adobe Commerce on Cloud versions and software dependencies, including deadlines and required actions.
nudge: false
TQID: 'https://experienceleague.adobe.com/0JX-Z-dRjsiQk5jO-LLRi-J4GWdylTh4pOfXRPOabxs'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
  - id: cdf0c6dd-1717-4e20-9530-a24eee57088b
    internal-label: Commerce on Cloud
feature_v2:
  - id: b5f00040-57a0-4a6d-a39e-383b1936c2c9
    internal-label: Compliance
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
  - id: cc250cf1-34eb-4863-80d0-d170d45ea067
    internal-label: Developer tools
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: f2261633-201d-46c5-8a66-999e70527a83
    internal-label: PCI
topic_v2:
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---

# Security enforcement notice: Required actions and deadlines

## How does this notice impact me?

Adobe Corporate Security now requires every Adobe-hosted environment to run supported software: both a supported version of Adobe Commerce on Cloud and supported versions of its software dependencies. Environments that do not meet these requirements by the deadlines below will have inbound traffic suspended, taking the storefront offline. This is to mitigate security risks for your eCommerce environment.

### Compliance matrix

Find your Adobe Commerce on Cloud version below to see what is required of you.

| Your version | Action 1: Upgrade software dependencies | Action 2: Upgrade or migrate your commerce version |
| --- | --- | --- |
| 2.4.4 or 2.4.5 | Required. October 30th, 2026. | Required by June 1st, 2027 |
| 2.4.6 or 2.4.7 | Required. October 30th, 2026, or May 31st, 2027, depending on the software. | Required by June 1st, 2028 |
| 2.4.8 or 2.4.9 | Required. October 30th, 2026, or May 31st, 2027, depending on the software. | Not required at this time |

### Who does not need to take action

This notice does not apply to:

- Customers using Adobe Commerce as a Cloud Service
- Customers using Adobe Commerce on Cloud version 2.4.8 or 2.4.9 with supported software dependencies in all environments

### How to check which versions you are running

For each of your Adobe Commerce on cloud projects, check the Adobe Commerce version and software dependency versions running in your cloud environments. These checks require developer or technical knowledge. Share this page with your development team or solution integrator so they can confirm which of your environments are affected.

**Check your Adobe Commerce on Cloud version**

1. Login to your Adobe Commerce Admin panel.

   The current version should display in the right bottom corner of any Admin page.

1. If the version is hidden, use the [Adobe Commerce Command-line tool](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cli/config-cli){target="_blank"} to run the version command:

  ```shell
  bin/magento --version
  ```

**Check your software dependency versions**

1. Sign in to the [Cloud Console](https://console.adobe.com/).
1. Open the relevant project, then select the environment you want to review.
1. Check the service configuration for that environment in the `.magento/services.yaml` file, which defines the supported service names and versions used by Adobe Commerce on cloud infrastructure.

For detailed instructions, see [Configure services](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/services/config-services){target="_blank"} documentation.

## What is happening?

Adobe Corporate Security policy requires that all Adobe-hosted environments run on the latest secure and compliant software, including both:

1. Supported versions of all software dependencies (PHP, MariaDB, Elasticsearch/OpenSearch, Redis, RabbitMQ)

1. Adobe Commerce on Cloud (version 2.4.8, 2.4.9, or the latest version)

Software that has passed end of vendor support no longer receives security patches, meaning known security issues in that software cannot be fixed. In addition, as per Adobe's Lifecycle Policy, Adobe Commerce versions 2.4.4 through 2.4.7 now receive only limited, isolated security fixes for the core application. This limited support does not include quality fixes, compatibility support for application dependencies (for example, PHP), or platform dependency updates. *Adobe Commerce on Cloud version 2.4.8 and 2.4.9 remain supported and requires no version upgrade at this time.*

Continuing to run your eCommerce storefront on unsupported software creates a real and growing security risk for your business, including your ability to maintain PCI compliance and protect your customers' data. In addition, this introduces risk to Adobe and other Adobe Commerce customers. **This is not a routine version upgrade notice: it is a security and compliance requirement with enforcement dates**.

>[!WARNING]
>
>If your environment does not meet requirements by the deadlines detailed in the [Compliance Matrix](#compliance-matrix), Adobe will be forced to suspend inbound traffic to the affected environment. Your eCommerce storefront will go offline and will not serve shoppers.*If your environment is already running the latest Adobe Commerce on Cloud version (2.4.8 or 2.4.9) and supported software dependencies, no action is needed.*

## What each action requires

### Action 1: Upgrade Software Dependencies

Depending on the software, all unsupported software dependencies must be upgraded by the timelines shared in the table below. You can view your environments in the Cloud Console. To verify the dependency versions running in each environment, follow these instructions. Software dependency upgrades apply to all Adobe Commerce on Cloud versions 2.4.4 through 2.4.9.

| Dependency | Version | Must Upgrade to | Enforcement date |
| --- | --- | --- | --- |
| PHP | 8.1 and below | 8.2 or higher | May 31st, 2027 |
| MariaDB/Galera | 10.5 and below | 10.6 or higher | October 30th, 2026 |
| MariaDB/Galera | Greater than10.6 but lower than 10.11 | 10.11 or higher | May 31st, 2027 |
| Elasticsearch | any version | OpenSearch: - versions 2.19 for 2.4.4 and 2.4.5 customers; - version 3 for 2.4.6 and above customers. | October 30th, 2026 |
| OpenSearch | 1.x | Versions 2.19 for 2.4.4 and 2.4.5 customers. Version 3 for 2.4.6 and above customers. | May 31st, 2027 |
| Redis | 5 and below | Valkey 8 or higher | May 31st, 2027 |
| RabbitMQ | 3.9 and below | 3.13 or higher | October 30th, 2026 |
| RabbitMQ | Greater than 3.9 but lower than 3.13 | 4.3 or higher | May 31st, 2027 |

Adobe will help you upgrade these software dependencies directly.

**How the upgrade process works**

1. Open a support ticket listing the environments you need upgraded and the dependencies involved.

   Open your ticket at least 30 days before your enforcement date so our team can schedule the work.

1. Confirm the downtime window with Adobe.

   Adobe will confirm the expected window with you when scheduling.

1. Test in a non-production environment before upgrading production.

   At minimum, validate checkout, search, cart, and any custom integrations. Requirements apply to all of your environments, so plan to upgrade every environment rather than production alone.

1. Review compatibility risks before you start.

Most software dependency changes are version upgrades within the same software and carry low risk. Two warrant closer attention:

- **Elasticsearch to OpenSearch** and **Redis to Valkey** are migrations to different software rather than version upgrades. Custom code, extensions, or configuration referencing the original service may need updating.
- **PHP 8.1 to 8.2** can surface deprecations in custom code and third-party extensions.

If you use third-party extensions, confirm with your extension vendors that their current releases support your target versions. If you work with a solution integrator, involve them in planning and validation.

### Action 2: Upgrade Adobe Commerce on Cloud version

Upgrade or migrate your Commerce version by the enforcement date for your current version shown in the table below.

| Current State | Action | Enforcement Date |
| --- | --- | --- |
| Using Adobe Commerce on Cloud version 2.4.4 or 2.4.5 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to Adobe Commerce as a Cloud Service | June 1, 2027 |
| Using Adobe Commerce on Cloud version 2.4.6 or 2.4.7 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to Adobe Commerce as a Cloud Service | June 1, 2028 |
| Using Adobe Commerce on Cloud versions 2.4.8 or 2.4.9 | No Adobe Commerce on Cloud version upgrade action is needed at this time. The software dependency deadlines in Action 1 still apply. | n/a |

To make an informed decision, see the following matrix comparing Adobe Commerce on Cloud version 2.4.9 and Adobe Commerce as a Cloud Service.

| | Adobe Commerce on Cloud version 2.4.9 | Adobe Commerce as a Cloud Service |
|--- |--- | --- |
| What it is | The latest Adobe Commerce release with full security coverage, quality fixes, and platform dependency updates. | Adobe's fully managed commerce platform, built for continuous innovation without the upgrade overhead. Adobe manages infrastructure, security patches, and upgrades. Learn more. |
| Best for you if | You want to keep managing your own infrastructure, upgrades, and patches for now. You can migrate to Adobe Commerce as a Cloud Service whenever you're ready. | You want to leave upgrade cycles behind for good, lower your total cost of ownership, and get Adobe's newest capabilities automatically, with no extra effort. |
| Key benefit | Meets the security requirements now while preserving your existing setup. | A lightning-fast, edge-delivery storefront, a highly scalable catalog, native digital asset management, and built-in generative AI, all on infrastructure Adobe manages for you. |

## What happens if no action is taken?

If an environment has not met these requirements by the enforcement dates in the [Compliance matrix](#compliance-matrix), Adobe will take appropriate action. This includes suspending traffic to the affected infrastructure for the remaining duration of your contract, and as a result your eCommerce storefront will go offline.

If an environment continues to remain non-compliant following traffic suspension through the end of your contract, it will lead to the termination of cloud services, initiating the decommissioning process. As a result of decommissioning, all data and assets within the hosted eCommerce environment, including all instances, environments, and branches, will be permanently deleted and cannot be restored.

## How can Adobe help?

**Upgrade to Adobe Commerce on Cloud version 2.4.9:**

- **Upgrade Compatibility Report:** Adobe provides a detailed report identifying exactly what your upgrade to Adobe Commerce version 2.4.9 requires, including time and cost scope. Generate your report here.
- **Software Dependency Upgrade:** Since you cannot upgrade software dependencies directly, open a support ticket for Adobe to handle the upgrade for you. For details, see Configure Services.

**Migrate to Adobe Commerce as a Cloud Service:**

Adobe provides tools that reduce the cost and time of migrating to Adobe Commerce as a Cloud Service. These tools apply to migration only; they are not used for a version upgrade on Adobe Commerce on Cloud. See the migration overview for the full migration guide, including migration paths and phases.

- **Migration assessment:** Rates the migration complexity of your customizations. See the Migration Assessment Tool overview.
- **Data migration:** The bulk and incremental data migration tool moves your data to your new Adobe Commerce as a Cloud Service environment.
- **Storefront and extension migration:** Adobe's AI-assisted migration and developer tools, including **Adobe Developer App Builder** and **Commerce Storefront powered by Edge Delivery Services**, help accelerate storefront modernization and extension re-platforming.

- *Sources: Adobe Commerce Software Dependency Enforcement Policy · Cloud Version Upgrade Enforcement Policy, Adobe Experience League*

