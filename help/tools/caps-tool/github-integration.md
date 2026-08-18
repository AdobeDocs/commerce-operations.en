---
title: Set Up the GitHub Integration for [!DNL Adobe Commerce Patching Automation]
description: Learn how to install the [!DNL Adobe Commerce Patching Automation] GitHub App to enable patch operations for GitHub-connected Adobe Commerce Cloud projects.
hide: true
---

# Set up the GitHub integration for [!DNL Patching Automation]

If your Adobe Commerce Cloud project is connected to a GitHub repository, you must install the [!DNL Patching Automation] GitHub App before you can use the service to apply or revert patches. The app grants the service the access it needs to make changes to your repository on your behalf.

## Prerequisites

* An active Adobe Commerce Cloud subscription
* A [GitHub integration](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/dev-tools/integrations/github) already configured for your Adobe Commerce Cloud project, with its [`fetch-branches` option enabled](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/dev-tools/integrations/github#enable-the-github-integration). [!DNL Patching Automation] creates and pushes temporary integration-environment branches, so patch operations fail to create the environment when this option is disabled.
* A repository hosted on [!DNL github.com]. GitHub integrations configured with a custom domain are not supported.
* Owner or Admin access to the GitHub organization or repository

## Install the [!DNL Patching Automation] GitHub App

1. Open the [Patching Automation GitHub App installation page](https://github.com/apps/adobe-commerce-patching-automation).
1. Click **[!UICONTROL Install]**.
1. Select the GitHub organization that owns your Adobe Commerce repository.
1. Under **[!UICONTROL Repository access]**, select **[!UICONTROL Only select repositories]** and choose the repository for your Adobe Commerce project.
1. Click **[!UICONTROL Install]** to confirm.

Once installed, the service automatically detects your GitHub connection and uses the app for all patch operations. No further setup is required.

## Uninstall the [!DNL Patching Automation] GitHub App

If you no longer want the service to access your repository:

1. In GitHub, open the settings for the account that owns the installation:
   * For an **organization-owned** repository: **[!UICONTROL Organization settings]** > **[!UICONTROL Third-party Access]** > **[!UICONTROL GitHub Apps]**.
   * For a **personal** repository: **[!UICONTROL Settings]** > **[!UICONTROL Applications]** > **[!UICONTROL Installed GitHub Apps]**.
1. Find `adobe-commerce-patching-automation` and click **[!UICONTROL Configure]**.
1. Click **[!UICONTROL Uninstall]** and confirm.

>[!WARNING]
>
>If any apply or revert operations are still in progress when the GitHub App is uninstalled, those operations may fail. After uninstalling the app, users also cannot start new operations because the action buttons become inactive.

## Related topics

* [Patching Automation introduction](intro.md)
* [How to access](access.md)
* [Workflow overview](workflow.md)
* [Best practices](best-practices.md)
* [Troubleshooting](troubleshooting.md)
