---
title: Set Up the GitHub Integration for [!DNL CAPS]
description: Learn how to install the [!DNL Cloud Automation Patching Service (CAPS)] GitHub App to enable patch operations for GitHub-connected Adobe Commerce Cloud projects.
hide: true
---

# Set up the GitHub integration for [!DNL CAPS]

If your Adobe Commerce Cloud project is connected to a GitHub repository, you must install the [!DNL CAPS] GitHub App before you can use the [!DNL Cloud Automation Patching Service] ([!DNL CAPS]) to apply or revert patches. The app grants [!DNL CAPS] the access it needs to make changes to your repository on your behalf.

## Prerequisites

* An active Adobe Commerce Cloud subscription
* A [GitHub integration](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/dev-tools/integrations/github) already configured for your Adobe Commerce Cloud project
* Owner or Admin access to the GitHub organization or repository

## Install the [!DNL CAPS] GitHub App

1. Open the [CAPS GitHub App installation page](https://github.com/apps/caps-connector).
1. Click **[!UICONTROL Install]**.
1. Select the GitHub organization that owns your Adobe Commerce repository.
1. Under **[!UICONTROL Repository access]**, select **[!UICONTROL Only select repositories]** and choose the repository for your Adobe Commerce project.
1. Click **[!UICONTROL Install]** to confirm.

Once installed, [!DNL CAPS] automatically detects your GitHub connection and uses the app for all patch operations. No further setup is required.

## Uninstall the [!DNL CAPS] GitHub App

If you no longer want [!DNL CAPS] to access your repository:

1. In GitHub, go to **[!UICONTROL Settings]** > **[!UICONTROL Applications]** > **[!UICONTROL Installed GitHub Apps]**.
1. Find `caps-connector` and click **[!UICONTROL Configure]**.
1. Click **[!UICONTROL Uninstall]** and confirm.

After uninstalling, [!DNL CAPS] patch operations on that repository fail. Contact [Adobe Commerce Cloud support](https://experienceleague.adobe.com/home#support) if you need assistance.

## Related topics

* [CAPS introduction](intro.md)
* [How to access](access.md)
* [Workflow overview](workflow.md)
* [Best practices](best-practices.md)
* [Troubleshooting](troubleshooting.md)
