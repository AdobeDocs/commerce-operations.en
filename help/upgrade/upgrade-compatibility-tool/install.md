---
title: "Download the [!DNL Upgrade Compatibility Tool]"
description: Follow these steps to download the [!DNL Upgrade Compatibility Tool] for your Adobe Commerce project.
---

# Download the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

To get started with the [!DNL Upgrade Compatibility Tool], download it by running the following command:

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

   >[!NOTE]
   >
   > See the [prerequisites](../upgrade-compatibility-tool/prerequisites.md) page for more information about the minimum requirements to use the tool.

## Use the [!DNL Upgrade Compatibility Tool]

You can use the [!DNL Upgrade Compatibility Tool] via:

- As a standalone [command-line interface](../upgrade-compatibility-tool/run.md) tool.
- Integrating the [!DNL Upgrade Compatibility Tool] with the [[!DNL Site-Wide Analysis Tool]](../upgrade-compatibility-tool/integrate-analysis-tool.md).
- A run configuration within the [Magento PHPStorm plugin](../upgrade-compatibility-tool/run-configuration-phpstorm-plugin.md).

### Example of an [!DNL Upgrade Compatibility Tool] use case

{{commerce-only}}

The following use case describes the typical process for an Adobe Commerce partner to upgrade a client's instance:

1. Download the [!DNL Upgrade Compatibility Tool] package from the Adobe Commerce repository (`https://repo.magento.com/`). See the [Download the [!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/install.md#download-the-upgrade-compatibility-tool) topic for more information.
1. Execute the [!DNL Upgrade Compatibility Tool] during the [beta](https://devdocs.magento.com/release/beta-program.html) phase of newest [Adobe Commerce release](https://devdocs.magento.com/release/). 
1. Generate a vanilla instance for the specific version of Adobe Commerce that is currently installed. See the [Contributor guide](https://devdocs.magento.com/contributor-guide/contributing.html#vanilla-pr) for more information on using the `instance` command to generate a vanilla installation.

   >[!NOTE]
   >
   >A vanilla instance is a clean installation of a specified version tag or branch for a specific release version.

1. The [!DNL Upgrade Compatibility Tool] Identifies upgrade issues that will help software engineers understand the complexity and estimate the effort of the upgrade.
1. This information is shared with stakeholders.
1. A budget and timeline will be defined for the upgrade.
1. Software Engineers can then work on the required code modifications to fix the broken modules.
1. The [!DNL Upgrade Compatibility Tool] can be executed to track upgrade progress.
1. Everything checks out and engineering can now push the code to a staging environment where regression tests confirm that all tests are green, which allows them to release the latest Adobe Commerce version to production the same day that the Adobe Commerce pre-release is released.

   ![[!DNL Upgrade Compatibility Tool] audience](../../assets/upgrade-guide/audience-uct-v3.png)

See [Run the tool](../upgrade-compatibility-tool/run.md) for information about executing the [!DNL Upgrade Compatibility Tool] in a command-line interface.

## Third-party extensions

Adobe recommends that you contact your extension vendor to determine whether your extension is fully compatible with Adobe Commerce latest released version.
