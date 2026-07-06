---
title: Set up the GitHub integration for [!DNL CAPS]
description: Learn how to install the CAPS GitHub App to enable patch operations on Adobe Commerce Cloud projects that use GitHub as an external Git repository.
hide: true
---

# Set up the GitHub integration for [!DNL CAPS]

If your Adobe Commerce Cloud project is connected to a GitHub repository, you must install the **[!DNL CAPS] GitHub App** before you can use [!DNL CAPS] to apply or revert patches. The app gives [!DNL CAPS] the access it needs to make changes to your repository on your behalf.

## Prerequisites

- An active Adobe Commerce Cloud subscription
- A [GitHub integration](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/project/integrations) already configured for your Adobe Commerce Cloud project
- Owner or Admin access to the GitHub organization or repository

## Install the [!DNL CAPS] GitHub App

1. Open [https://github.com/apps/caps-connector](https://github.com/apps/caps-connector).
1. Click **Install**.
1. Select the GitHub organization that owns your Adobe Commerce repository.
1. Under **Repository access**, select **Only select repositories** and choose the repository for your Adobe Commerce project.
1. Click **Install** to confirm.

Once installed, [!DNL CAPS] automatically detects your GitHub connection and uses the app for all patch operations. No further setup is required.

## Uninstall the [!DNL CAPS] GitHub App

If you no longer want [!DNL CAPS] to access your repository:

1. In GitHub, go to **Settings > Applications > Installed GitHub Apps**.
1. Find **caps-connector** and click **Configure**.
1. Click **Uninstall** and confirm.

After uninstalling, [!DNL CAPS] patch operations on that repository will fail. Contact [Adobe Commerce Cloud support](https://experienceleague.adobe.com/home#support) if you need assistance.

## Related topics

- [CAPS introduction](intro.md)
- [How to access](access.md)
- [Workflow](workflow.md)
- [Troubleshooting](troubleshooting.md)
