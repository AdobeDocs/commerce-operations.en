---
title: Adobe Commerce on Cloud Security Policy: Actions and Deadlines
description: Learn about security enforcement for unsupported Adobe Commerce on Cloud versions and software dependencies, including deadlines, required actions, and risks.
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
color: blue
---
# Security Enforcement: Unsupported versions and dependencies

## What is happening?

Adobe Corporate Security policy requires that all Adobe-hosted environments for Adobe Commerce on Cloud run on secure and compliant software, including the following:

1. Supported versions of all 3rd party software dependencies (PHP, MariaDB, Elasticsearch/OpenSearch, Redis, RabbitMQ)

1. A secure and compliant version of Adobe Commerce on Cloud (version 2.4.8, 2.4.9, or the latest version)

This is to mitigate security risks in your ecommerce environments. Environments that do not meet these requirements by the deadlines in [Table 1](#determine-your-required-actions)  will have inbound traffic suspended, taking the storefront offline. Please consider this notice as a security and compliance requirement with enforcement dates.

You may be required to take two actions.

1. Check if the 3rd party software dependencies are supported. If not, upgrade to a supported version.

1. Check if you need to upgrade your Adobe Commerce on Cloud version to a supported version.

### Determine your required actions

In the following table, find your Adobe Commerce on Cloud version below to see what is required of you.

**Table 1: Required actions and deadlines by version**

| Your version | [Upgrade third-party software dependencies](#action-1-upgrade-third-party-software-dependencies) | [Upgrade or migrate your Adobe Commerce version](#action-2-upgrade-to-a-supported-adobe-commerce-version) |
| --- | --- | --- |
| 2.4.4 or 2.4.5 | Required. October 30, 2026. | Required by June 1, 2027 |
| 2.4.6 or 2.4.7 | Required. October 30, 2026, or May 31, 2027, depending on the software. | Required by June 1, 2028 |
| 2.4.8 or 2.4.9 | Required. October 30, 2026, or May 31, 2027, depending on the software. | Not required at this time |

## Who does not need to take action

This notice does not apply to:

* Customers using Adobe Commerce as a Cloud Service
* Customers using Adobe Commerce on Cloud version 2.4.8 or 2.4.9 with supported software dependencies in all environments

### How to verify which versions you are running

You need help from your eCommerce admin to go through the following steps to check which version you are running in each of your Adobe Commerce on Cloud environments.

#### Check Adobe Commerce on Cloud version

1. Log in to your Adobe Commerce Admin panel.

   The current version should display in the bottom right corner of any Admin page.

1. If the version is not displayed in the Admin, use the [Adobe Commerce Command-line tool](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cli/config-cli){target="_blank"} to run the version command:

   ```shell
   bin/magento --version
   ```

#### Check software dependency versions

1. Log in to the [Cloud Console](https://console.adobecommerce.com/).
1. Open the relevant project, then select the environment you want to review.
1. Check the service configuration for that environment in the `.magento/services.yaml` file, which defines the supported service names and versions used by Adobe Commerce on cloud infrastructure.
For detailed instructions, see [Configure services](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/services/config-services){target="_blank"} documentation.

## Why this security mandate is important

Software that has passed end of vendor support no longer receives security patches, meaning known security issues in that software cannot be fixed. In addition, as per the [Adobe Lifecycle Policy](https://experienceleague.adobe.com/en/docs/commerce-operations/release/planning/lifecycle-policy):

* **Adobe Commerce versions 2.4.4 and 2.4.5** now receive only limited, isolated security fixes for the core application until May 31, 2027. This limited support does not include quality fixes, compatibility support for application dependencies (for example, PHP), or platform dependency updates

* **Adobe Commerce 2.4.6** will receive extended support through August 30, 2027, and will receive only limited, isolated security fixes for the core application until May 31, 2028

* **Adobe Commerce version 2.4.7** will receive standard support through May 31, 2027, and extended support through May 31, 2028

* **Adobe Commerce on Cloud version 2.4.8 and 2.4.9** remain supported and require no version upgrade at this time.

Continuing to run your ecommerce storefront on unsupported software creates a real and growing security risk for your business, including your ability to maintain PCI compliance and protect your customers' data.

>[!WARNING]
>
>If your environment does not meet requirements by the deadlines detailed in the [Required actions and deadlines table](#determine-your-required-actions), Adobe will be forced to suspend inbound traffic to the affected environment. Your ecommerce storefront will go offline and will not serve shoppers.

## What each action requires

### Action 1: Upgrade third-party software dependencies

Depending on the software, all unsupported software dependencies must be upgraded based on the timelines shared in the table below. You can view your environments in the [Cloud Console](https://console.adobecommerce.com/). To verify the dependency versions running in each environment, see [Check your software dependency versions](#check-your-software-dependency-versions). Software dependency upgrades apply to all Adobe Commerce on Cloud versions 2.4.4 through 2.4.9.

**Table 2: Software dependency upgrade requirements**

| Dependency | Version | Must Upgrade to | Enforcement date |
| --- | --- | --- | --- |
| PHP | 8.1 and below | 8.2 or higher | May 31, 2027 |
| MariaDB/Galera | 10.5 and below | 10.6 or higher | October 30, 2026 |
| MariaDB/Galera | Greater than 10.5 but lower than 10.11 | 10.11 or higher | May 31, 2027 |
| Elasticsearch | any version | OpenSearch:<br><br>- version 2.19 for 2.4.4 and 2.4.5 customers<br>- version 3 for 2.4.6 and above customers. | October 30, 2026 |
| OpenSearch | 1.x | version 2.19 for 2.4.4 and 2.4.5 customers.<br>version 3 for 2.4.6 and above customers. | May 31, 2027 |
| Redis | 5 and below | Valkey 8 or higher | May 31, 2027 |
| RabbitMQ | 3.9 and below | 3.13 or higher | October 30, 2026 |
| RabbitMQ | Greater than 3.9 but lower than 3.13 | 4.3 or higher | May 31, 2027 |

#### Preparing for a third-party software dependency upgrade

Adobe will help you upgrade these software dependencies directly.

* **Getting started:** Open a support ticket listing the environments you need upgraded and the dependencies involved. Open your ticket at least 30 days before your enforcement date so our team can schedule the work.

* **Downtime:** Adobe will confirm the expected window with you when scheduling.

* **Testing:** Upgrade and validate a non-production environment before production. At minimum, validate checkout, search, cart, and any custom integrations. Requirements apply to all of your environments, so plan to upgrade every environment rather than production alone.

* **Compatibility:** Most of these changes are version upgrades within the same software and carry low risk. The following warrant closer attention:

  * **Elasticsearch to OpenSearch** and **Redis to Valkey** are migrations to different software rather than version upgrades. Custom code, extensions, or configuration referencing the original service may need updating.
  * **PHP 8.1 to 8.2** can surface deprecations in custom code and third-party extensions.

If you use third-party extensions, confirm with your extension vendors that their current releases support your target versions. If you work with a solution integrator, involve them in planning and validation.

### Action 2: Upgrade to a supported Adobe Commerce version

 If you need to upgrade your Adobe Commerce on Cloud version, then you have two options:

1. [Upgrade to a supported Adobe Commerce on Cloud version](#upgrade-to-adobe-commerce-on-cloud-version-249)
1. [Migrate to Adobe Commerce as a Cloud Service (SaaS platform)](#migrate-to-adobe-commerce-as-a-cloud-service)

The enforcement date for your current version applies no matter which option you choose.

**Table 3: Guidelines and deadlines to upgrade to a supported Adobe Commerce on Cloud version**

| Current version | Action | Enforcement Date |
| --- | --- | --- |
| Using Adobe Commerce on Cloud version 2.4.4 or 2.4.5 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to Adobe Commerce as a Cloud Service | June 1, 2027 |
| Using Adobe Commerce on Cloud version 2.4.6 or 2.4.7 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to Adobe Commerce as a Cloud Service | June 1, 2028 |
| Using Adobe Commerce on Cloud versions 2.4.8 or 2.4.9 | No Adobe Commerce on Cloud version upgrade action is needed at this time. The software dependency deadlines in Action 1 still apply. | n/a |

## Compare your options

To decide which option fits your needs, see the following table comparing Adobe Commerce on Cloud version 2.4.9 with Adobe Commerce as a Cloud Service.

**Table 4: Adobe Commerce on Cloud vs. Adobe Commerce as a Cloud Service**

| | Adobe Commerce on Cloud version 2.4.9 | Adobe Commerce as a Cloud Service |
|--- | --- | --- |
| What it is | The latest Adobe Commerce release with full security coverage, quality fixes, and platform dependency updates. | Adobe's fully managed commerce platform, built for continuous innovation without the upgrade overhead. [Learn more](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/overview). |
| Best for you if | You want to keep managing your own infrastructure, upgrades, and patches for now. You can migrate to Adobe Commerce as a Cloud Service whenever you're ready. | You want to leave upgrade cycles behind for good, lower your total cost of ownership, and get Adobe's newest capabilities automatically, with no extra effort. |
| Key benefit | Meets the security requirements now while preserving your existing setup. | A lightning-fast, edge-delivery storefront, a highly scalable catalog, native digital asset management, and built-in generative AI, all on an infrastructure managed by Adobe. |

## What happens if you don't take action?

If an environment has not met these requirements by the enforcement dates in [Determine your required actions](#determine-your-required-actions), Adobe will take appropriate action. This includes suspending traffic to the affected infrastructure, and as a result your ecommerce storefront will go offline.

If an environment continues to remain non-compliant following traffic suspension, Adobe may terminate cloud services, initiating the decommissioning process. As a result of decommissioning, all data and assets within the hosted ecommerce environment, including all instances, environments, and branches, will be permanently deleted and cannot be restored.

## How Adobe will help you

Adobe offers tools and support to make your transition as smooth as possible, whether you upgrade or migrate.

### Upgrade to Adobe Commerce on Cloud version 2.4.9

* **Upgrade Compatibility Report:** Adobe provides a detailed report identifying exactly what your upgrade to Adobe Commerce version 2.4.9 requires, including time and cost scope. [Generate your upgrade compatibility report](https://supportinsights.adobe.com/commerce/tab/main).

* **Software Dependency Upgrade:** Since you cannot upgrade software dependencies directly, [open a support ticket](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide#submit-ticket){target="_blank"} for Adobe to handle the upgrade for you. For details, see [Configure Services](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/configuration/overview){target="_blank"}.

### Migrate to Adobe Commerce as a Cloud Service

Adobe provides tools that reduce the cost and time of migrating to Adobe Commerce as a Cloud Service. These tools apply to migration only. They are not used for a version upgrade on Adobe Commerce on Cloud. See the [migration overview](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/overview) for the full migration guide, including migration paths and phases.

* **Migration assessment:** Rates the migration complexity of your customizations. See the [Migration Assessment Tool overview](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/migration-tools/assessment).

* **Data migration:** The [bulk and incremental data migration tool](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/migration-tools/bulk-data) moves your data to your new Adobe Commerce as a Cloud Service environment.

* **Storefront and extension migration:** Adobe's [AI-assisted migration and developer tools](https://developer.adobe.com/commerce/extensibility/developer-agent/), including **Adobe Developer App Builder** and **Commerce Storefront powered by Edge Delivery Services**, help accelerate storefront modernization and extension re-platforming.

If you have any questions, please contact your account team, Solution Account Manager, Renewal Specialist, or contact [Support Services](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide?lang=en#submit-ticket).


