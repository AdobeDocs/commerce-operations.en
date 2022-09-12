---
title: "Overview of the [!DNL Upgrade Compatibility Tool]"
description: Learn about the [!DNL Upgrade Compatibility Tool] and how it can help you with your Adobe Commerce project.
---

# Guide overview

{{commerce-only}}

This guide is intended for administrators and software engineers of Adobe Commerce. It includes detailed information about installation of the [!DNL Upgrade Compatibility Tool], as well as its configuration and management. It assumes a basic understanding of the core Commerce configuration and functionality.

## Overview of the [!DNL Upgrade Compatibility Tool]

The [!DNL Upgrade Compatibility Tool] is a tool that checks an Adobe Commerce customized instance against a specific version by analyzing all modules and core code installed in it. It returns a list of critical issues, errors, and warnings that must be addressed before upgrading to a newer version of Adobe Commerce.

## Use the [!DNL Upgrade Compatibility Tool]

You can use the [!DNL Upgrade Compatibility Tool] via:

- As a standalone [command-line interface](../upgrade-compatibility-tool/run.md) tool.
- Integrating the [!DNL Upgrade Compatibility Tool] with the [[!DNL Site-Wide Analysis Tool]](../upgrade-compatibility-tool/integrate-analysis-tool.md).
- A run configuration within the [Magento PHPStorm plugin](../upgrade-compatibility-tool/run-configuration-phpstorm-plugin.md).

## Workflow

The following diagram shows the possible workflows when running the [!DNL Upgrade Compatibility Tool]:

![[!DNL Upgrade Compatibility Tool] Diagram](../../assets/upgrade-guide/uct-diagram-v5.png)

## [!DNL Upgrade Compatibility Tool] demo

Watch this video to learn about the [!DNL Upgrade Compatibility Tool]:

>[!VIDEO](https://video.tv.adobe.com/v/341245?quality=12)

## Help improve the [!DNL Upgrade Compatibility Tool]

If you need information or have questions that are not covered in this guide, use the following resources:

To connect with the [!DNL Upgrade Compatibility Tool] team, contact us on the Engineering Slack channel [#upgrade-compatibility-tool](https://magentocommeng.slack.com/archives/C019Y143U9F). We want to hear your feedback, issues, and suggestions to help us improve the tool.

The [!DNL Upgrade Compatibility Tool] uses rules defined within our [Coding Standards](https://devdocs.magento.com/guides/v2.4/coding-standards/bk-coding-standards.html) to ensure that your project is following Adobe Commerce best practices and to help you improve and extend the [!DNL Upgrade Compatibility Tool].

Refer to the [Contribute](https://devdocs.magento.com/guides/v2.4/coding-standards/contributing.html) topic for more information on contributing coding standards.

## Resources

See the following resources to help you understand Adobe Commerce upgrades:

- The [upgrade guide](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/overview.html) provides an overview of the typical Adobe Commerce or Magento Open Source upgrade journey and best practices to follow along that journey.
- The [upcoming releases](https://devdocs.magento.com/release/) page provides the dates for scheduled and upcoming releases.
- The [community resources](https://developer.adobe.com/commerce/contributor/community/) page is to place to start discussions, or finding more information.
- Check the [related tools](../upgrade-compatibility-tool/related-tools.md) page for useful tools in your typical upgrade journey.
