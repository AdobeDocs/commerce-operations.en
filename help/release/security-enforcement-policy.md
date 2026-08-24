---
title: "Required actions and deadlines to secure Commerce environments"
description: Learn about security enforcement for unsupported Adobe Commerce on Cloud versions and software dependencies, including deadlines, required actions, and risks.
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
badgePaas: label="Adobe Commerce on Cloud 2.4.4 - 2.4.9 only" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud version 2.4.4 through 2.4.9 only"
nudge: true
---

# Required actions and deadlines to secure Commerce environments

>[!NOTE]
>
> **Applies to:** Adobe Commerce on Cloud (PaaS) environments running Adobe Commerce versions 2.4.4 through 2.4.9.

The cybersecurity landscape is fundamentally changing, and the defensive mechanisms enterprises have in place need to rapidly evolve. Security is critical for ecommerce businesses because online transactions require them to handle sensitive personal and business data, exposing them to financial and identity risks in the event of a breach. PaaS ecommerce environments have a shared responsibility model where the customer is responsible for security and maintenance of application layer dependencies, integrations with third-party software, and deployment pipelines.

At Adobe, we remain committed to addressing the evolving risks and ensuring that we setup our Adobe Commerce on Cloud customers to the highest security standards. This includes:

1. Monthly isolated security fixes for faster and predictable protection against critical vulnerabilities

2. Cloud Patches for Commerce Package to ensure delivery of Adobe patches and hot fixes that improve integration with Cloud environments and allow quick resolution of critical issues

3. Lifecycle enforcement policies

4. Out of cycle hotfixes, if necessary

5. Annual patch releases with long term support


While Adobe takes the necessary steps to help keep our customers secure, the shared responsibility model for Adobe Commerce on Cloud requires that our customers always be on a supported version of Adobe Commerce on Cloud and third-party software, apply application patches, audit third-party extensions, and secure custom code. Software that has passed end of vendor support no longer receives security patches, leaving security issues in the software unaddressed. Continuing to run your ecommerce storefront on unsupported software creates a real and growing security risk.

This page outlines the actions all customers on Adobe Commerce on Cloud (version 2.4.4 to 2.4.9) need to take to ensure their ecommerce environment remains secure, along with the enforcement dates and what to expect when the security requirements are not met.

## Actions required to maintain a secure and compliant environment

To keep your ecommerce environment secure and mitigate risks, all customers on Adobe Commerce on Cloud (version 2.4.4 to 2.4.9) are required to use:

1. Supported versions of all 3rd party software dependencies (PHP, MariaDB, Elasticsearch, OpenSearch, Redis, RabbitMQ)

1. A secure and supported version of Adobe Commerce on Cloud. Fully supported versions include 2.4.8, 2.4.9, or the latest available release. See the [Lifecycle policy](/help/release/lifecycle-policy.md) documentation.

Follow the guidelines below to check if you need to take action to secure your Adobe Commerce on Cloud environment. Environments that do not meet the security requirements by the deadlines outlined in Table 1 below will have inbound traffic suspended, taking the storefront offline. If you have concerns about meeting the deadline, please contact your account team or [Adobe Support](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide?lang=en#submit-ticket) as soon as possible.

>[!NOTE]
>
> This guidance does not apply to [!DNL Adobe Commerce as a Cloud Service] (SaaS) environments or Adobe Commerce on-premises deployments.

**Table 1: Security requirements and deadlines**

| Your Adobe Commerce on Cloud version | Upgrade to supported third-party software dependencies | Upgrade to latest Adobe Commerce on Cloud version, or migrate to [!DNL Adobe Commerce as a Cloud Service] |
| --- | --- | --- |
| 2.4.4 or 2.4.5 | Required by October 30, 2026. | Required by June 1, 2027 |
| 2.4.6 or 2.4.7 | Required by October 30, 2026, or May 31, 2027, depending on the software. | Required by June 1, 2028 |
| 2.4.8 or 2.4.9 | Required by October 30, 2026, or May 31, 2027, depending on the software. | Not required at this time |

## Detailed steps to secure your environment

Engage your Commerce Admin to go through the following steps.

### Action 1: Verify and upgrade third-party software dependencies

Check that your environment is running vendor-supported versions of the following third-party software dependencies: PHP, MariaDB, Elasticsearch, OpenSearch, Redis, RabbitMQ. If not, upgrade the software dependency to a supported version.

#### Step 1: Check your third-party software dependency versions

1. Sign in to the [Cloud Console](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/start/cloud-console) where you can see all of your Cloud projects.
2. Open the relevant project, then select the environment you want to review.
3. Open "Containers" tab, where you can see a list of all the services currently in use on the selected environment.
4. Click each service link to check the exact version currently running in the environment.
See the instructions in [Configure Services](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/service/services-yaml) for more details.

All unsupported software dependencies must be upgraded to the versions outlined by the timelines shared in Table 2 below.

**Table 2: Required dependency upgrades**

| Dependency | Version | Must upgrade to | Deadline |
| --- | --- | --- | --- |
| PHP | 8.1 and below | 8.2 or higher | May 31, 2027 |
| MariaDB/Galera | 10.5 and below | 10.6 or higher | October 30, 2026 |
| MariaDB/Galera | Greater than 10.5 but lower than 10.11 | 10.11 or higher | May 31, 2027 |
| Elasticsearch | any version | OpenSearch: version 2.19 for 2.4.4 and 2.4.5 customers. Version 3 for 2.4.6 and above customers. | October 30, 2026 |
| OpenSearch | 1.x | Version 2.19 for 2.4.4 and 2.4.5 customers. Version 3 for 2.4.6 and above customers. | May 31, 2027 |
| Redis | 5 and below | Valkey version 8 or higher | May 31, 2027 |
| RabbitMQ | 3.9 and below | Version 3.13 or higher | October 30, 2026 |
| RabbitMQ | Greater than 3.9 but lower than 3.13 | 4.3 or higher | May 31, 2027 |

#### Step 2: Prepare for a third-party software dependency upgrade

Adobe will help you upgrade these software dependencies directly.

* **Get started:** Open a [support ticket](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide#support-case) listing the environments you need upgraded and the dependencies involved. Open your ticket at least 30 days before your enforcement date so Adobe can schedule the work.

* **Downtime:** Adobe will confirm the expected window with you when scheduling.

* **Testing:** Upgrade and validate a non-production environment before production. At minimum, validate checkout, search, cart, and any custom integrations. Requirements apply to all your environments, so plan to upgrade every environment rather than production alone.

* **Compatibility:** Most of these changes are version upgrades within the same software and carry low risk. The following changes warrant closer attention:

  * **Elasticsearch to OpenSearch** and **Redis to Valkey** are migrations to different software rather than version upgrades. Custom code, extensions, or configuration referencing the original service may need an update.
  * Upgrading from **PHP 8.1 to 8.2** can surface deprecations in custom code and third-party extensions.

If you use third-party extensions, confirm with your vendors that their current releases support your target versions. If you work with a solution integrator, involve them in planning and validation.

### Action 2: Check your Adobe Commerce on Cloud version and upgrade to a supported version

#### Step 1: Check your Adobe Commerce on Cloud version and required action

1. Log in to your Adobe Commerce Admin panel.

   The current version displays in the bottom-right corner of any Admin page.

1. If the version is hidden from the Admin panel, use the Adobe Commerce [Command-line tool](../configuration/cli/config-cli.md) to see the version by running the following command:

     ```shell
     bin/magento --version
     ```

Check the required actions for your Adobe Commerce version in the table below.

**Table 3: Adobe Commerce on Cloud version upgrade requirements**

| Current version of Adobe Commerce on Cloud | Required action | Deadline |
| --- |--- |--- |
| Version 2.4.4 or 2.4.5 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to [!DNL Adobe Commerce as a Cloud Service].<br>Reason: Versions 2.4.4 and 2.4.5 will receive only limited, isolated security fixes for the core application until May 31, 2027. This does not include quality fixes, compatibility support for application dependencies (for example, PHP), or platform dependency updates. See Adobe's [Lifecycle Policy](/help/release/lifecycle-policy.md). | June 1, 2027 |
| Version 2.4.6 or 2.4.7 | Upgrade to Adobe Commerce on Cloud version 2.4.9 (or the latest version) or migrate to [!DNL Adobe Commerce as a Cloud Service].<br>Reason: Version 2.4.6 will receive extended support through August 30, 2027, and will receive only limited, isolated security fixes for the core application until May 31, 2028. Version 2.4.7 will receive standard support through May 31, 2027, and extended support through May 31, 2028. See Adobe's [Lifecycle Policy](/help/release/lifecycle-policy.md). | June 1, 2028 |
| Version 2.4.8 or 2.4.9 | No Adobe Commerce on Cloud version upgrade action is needed. The third-party software dependency deadlines in Action 1 still apply.<br>Reason: No deadline has been set. | Not Applicable |

#### Step 2: Determine the upgrade or migration path

If you need to upgrade your Adobe Commerce on Cloud version, then you have two options:

1. Upgrade to a supported Adobe Commerce on Cloud version
1. Migrate to [!DNL Adobe Commerce as a Cloud Service] (SaaS)

The following table helps you compare your options and determine the best path for you.

**Table 4: Adobe Commerce on Cloud compared to [!DNL Adobe Commerce as a Cloud Service]**

| | Adobe Commerce on Cloud version 2.4.9 | [!DNL Adobe Commerce as a Cloud Service] |
|---|---|---|
| **What it is** | The latest Adobe Commerce release with full security coverage, quality fixes, and platform dependency updates. | Adobe's fully managed commerce platform, built for continuous innovation without the upgrade overhead. [Learn more](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/overview). |
| **Best for you if** | You want to keep managing your own infrastructure, upgrades, and patches. | You want to leave upgrade cycles behind for good, lower your total cost of ownership, and get Adobe's newest capabilities automatically, with no extra effort. |
| **Key benefit** | Meets the security requirements while preserving your existing setup. | A lightning-fast, edge-delivery storefront, a highly scalable catalog, native digital asset management, and built-in generative AI, all on an infrastructure managed by Adobe. |

## What happens if no action is taken by the deadline?

Adobe remains committed to supporting you in executing the steps you need to take to adopt a supported version of 3rd party software, upgrade to the latest version of Adobe Commerce on Cloud or migrate to Adobe Commerce as a Cloud Service.  If you have concerns about meeting the deadline and need a short extension, please contact your account team or [Adobe Support](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide?lang=en#submit-ticket) as soon as possible.

If an environment has not met the security requirements by the enforcement dates shared above, Adobe will be forced to take appropriate action to maintain security of the Adobe Commerce platform and its customers. This includes suspending traffic to the affected infrastructure, and as a result your Commerce storefront will go offline.

If an environment continues to remain non-compliant following traffic suspension, Adobe may terminate the cloud services, initiating the decommissioning process. As a result of decommissioning, all data and assets within the hosted commerce environment, including all instances, environments, and branches, will be permanently deleted and cannot be restored.

## Resources to support you with upgrades or migration

**If you choose to upgrade to Adobe Commerce on Cloud version 2.4.9:**

* **Upgrade Compatibility Report:** Adobe provides a detailed report identifying exactly what your upgrade to Adobe Commerce version 2.4.9 requires, including identifying what modules and files require updates, number of critical issues, and so on. See the [Site-Wide Analysis Tool](/help/tools/site-wide-analysis-tool/access.md) documentation for details on how to generate your upgrade compatibility report.

* **Software dependency upgrade:** Since you cannot upgrade software dependencies directly, open a [support ticket](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide#support-case) for Adobe to handle the upgrade for you. For details, see [Configure Services](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/service/services-yaml).

**If you choose to migrate to [!DNL Adobe Commerce as a Cloud Service]:**

Adobe provides tools that reduce the cost and time of migrating to [!DNL Adobe Commerce as a Cloud Service]. They are available at no cost to you. These tools apply to migration only. They are not used for Adobe Commerce on Cloud version upgrades. See the [migration overview](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/overview) for the full migration guide, including migration paths and phases.

* **Migration assessment:** Rates the migration complexity of your customizations. See the [Migration Assessment Tool overview](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/migration-tools/assessment).

* **Data migration:** The [bulk and incremental data migration tool](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/migration/migration-tools/bulk-data/migration-tool) moves your data to your new [!DNL Adobe Commerce as a Cloud Service] environment. For access, contact [Adobe Support](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide?lang=en#submit-ticket).

* **AI-assisted migration and developer tools:** Adobe Developer App Builder and Commerce Storefront powered by Edge Delivery Services help accelerate storefront modernization and extension re-platforming.

 If you have questions, please get in touch with your account team or contact [Support Services](https://experienceleague.adobe.com/en/docs/support-resources/adobe-support-tools-guide/adobe-commerce-support/adobe-commerce-help-center-user-guide?lang=en#submit-ticket).

>[!MORELIKETHIS]
>
>* [Lifecycle policy](lifecycle-policy.md)
>* [Version upgrade enforcement policy for Adobe Commerce on Cloud](version-upgrade-enforcement-policy.md)
>* [Shared responsibility security and operational model](../security-and-compliance/shared-responsibility.md)
