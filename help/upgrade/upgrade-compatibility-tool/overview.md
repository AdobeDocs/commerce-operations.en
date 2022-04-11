---
title: Overview of the [!DNL Upgrade Compatibility Tool]
description: Learn about the [!DNL Upgrade Compatibility Tool] and how it can help you with your Adobe Commerce project.
---

# Overview of the [!DNL Upgrade Compatibility Tool]

{{commerce-only}}

The [!DNL Upgrade Compatibility Tool] is a command-line tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules and core code installed in it. It returns a list of critical issues, errors, and warnings that must be addressed before upgrading to the latest version of Adobe Commerce. It also identifies potential problems that must be fixed in your code before attempting to upgrade to a newer version of Adobe Commerce.

The [!DNL Upgrade Compatibility Tool] allows you to identify when core code changes have been made to customized features. See the [Run the tool](../upgrade-compatibility-tool/run.md) topic for more information.

It is distributed as a Composer package with every release of an Adobe Commerce version. See the [Developer](../upgrade-compatibility-tool/developer.md) topic for more information.

Refer to the [Install](../upgrade-compatibility-tool/install.md) topic for the first steps with the [!DNL Upgrade Compatibility Tool].

## Workflow

The following diagram shows the expected workflow when running the [!DNL Upgrade Compatibility Tool]:

![[!DNL Upgrade Compatibility Tool] Diagram](../../assets/upgrade-guide/mvp-diagram-v3.png)

## The [!DNL Upgrade Compatibility Tool] use case

The following use case describes the typical process for an Adobe Commerce partner to upgrade a client's instance:

1. Download the [!DNL Upgrade Compatibility Tool] package from the Adobe Commerce repository (`https://repo.magento.com/`). See the [Download the [!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/install.md#download-the-upgrade-compatibility-tool) topic for more information.
1. Execute the [!DNL Upgrade Compatibility Tool] during the [beta](https://devdocs.magento.com/release/beta-program.html) phase of newest [Adobe Commerce release](https://devdocs.magento.com/release/). 
1. The main command is `upgrade:check`. This command analyzes your instance and checks for errors, warnings, and critical issues in the instance. To optimize results:

   - Add option `--ignore-current-version-compatibility-issues` to ignore all known critical issues, errors and warnings against your current Adobe Commerce version. Only shows results of the desired version.
   - Use option `--min-issue-level` to set the minimum issue level. Helps prioritize only the most important issues with the upgrade. If you want to analyze only a certain vendor, module, or even directory, you can specify the path as well. See the [Run the tool](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/upgrade-compatibility-tool/run.html?lang=en) topic for more details.

1. Generate a vanilla instance for the specific version of Adobe Commerce that is currently installed. See the [Contributor guide](https://devdocs.magento.com/contributor-guide/contributing.html#vanilla-pr) for more information on using the `instance` command to generate a vanilla installation.

   >[!NOTE]
   >
   >A vanilla instance is a clean installation of a specified version tag or branch for a specific release version.

1. The [!DNL Upgrade Compatibility Tool] Identifies customized broken areas. The Software Engineer is able to understand the complexity and estimate the effort of the upgrade. This information is shared with stakeholders.
1. A budget and timeline will be defined for the upgrade.
1. Software Engineers can then work on the required code modifications to fix the broken modules.
1. The [!DNL Upgrade Compatibility Tool] can be executed to track upgrade progress.
1. Everything checks out and engineering can now push the code to a staging environment where regression tests confirm that all tests are green, which allows them to release the latest Adobe Commerce version to production the same day that the Adobe Commerce pre-release is released.

   ![[!DNL Upgrade Compatibility Tool] audience](../../assets/upgrade-guide/audience-uct-v3.png)

## Help improve the [!DNL Upgrade Compatibility Tool]

To connect with the [!DNL Upgrade Compatibility Tool] team, contact us on the Engineering Slack channel [[!DNL Upgrade Compatibility Tool]](https://magentocommeng.slack.com/archives/C019Y143U9F). We want to hear your feedback, issues, and suggestions to help us improve the tool.

The [!DNL Upgrade Compatibility Tool] uses rules defined within our [Coding Standards](https://devdocs.magento.com/guides/v2.4/coding-standards/bk-coding-standards.html) to ensure that your project is following Adobe Commerce best practices and to help you improve and extend the [!DNL Upgrade Compatibility Tool].

Refer to the [Contribute](https://devdocs.magento.com/guides/v2.4/coding-standards/contributing.html)  topic for more information on contributing to this project.

## Resources

We have developed the following resources to help you understand Adobe Commerce upgrades:

- [Upgrade guide](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/overview.html)
- [Upcoming releases](https://devdocs.magento.com/release/)
- [Community Resources](https://devdocs.magento.com/community/resources/resources.html) page for more information.
