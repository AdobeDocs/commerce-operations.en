---
title: How to Access [!DNL Adobe Commerce Patching Automation]
description: Learn how to access and use [!DNL Adobe Commerce Patching Automation]
hide: true
---
# How to access [!DNL Adobe Commerce Patching Automation]

## Prerequisites

[!DNL Patching Automation] uses the role-based access control from Adobe Commerce Cloud. Your access level in the Cloud Console determines what you can do with the service.

### Who can use [!DNL Patching Automation]

* **Project admin** - Can apply or revert patches on all environments
* **Contributor** - Can apply or revert patches on their assigned environments
* **Viewer** - Can only view the project and environments, no actions allowed

### How to request access to a project

If you do not see any projects in the [!DNL Patching Automation] user interface, request access from the appropriate person:

* Contact the account owner or project admin of the project
* They will grant you the appropriate role through the Cloud Console
* Once granted access, you can log in to the Cloud Console to use the service

>[!NOTE]
>
>[!DNL Patching Automation] follows the same permission model as Adobe Commerce Cloud, so your access level in the Cloud Console determines what you can do with the service.

## Accessing [!DNL Patching Automation]

[!DNL Patching Automation] is available as a tab within the [!DNL Site-Wide Analysis Tool] dashboard. You can access it from your Admin Panel by going to **Reports** > **System Insights** > **Site-Wide Analysis Tool** on the Admin sidebar. See [How to access the Site-Wide Analysis Tool](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/site-wide-analysis-tool/access) for prerequisites and permission setup.

Once you're in the dashboard:

1. Click on the [!UICONTROL Patching Automation] tab in the interface.
1. Select the project and environment where you want to apply patches.
1. Review available patches and their compatibility status.
1. Select patches to apply or revert.

## Production environment access

For production environments, additional safeguards apply by default:

* **Maintenance mode** - Must be enabled
* **Cron jobs** - Must be disabled
* **Confirmation dialog** - Must be completed before proceeding

>[!IMPORTANT]
>
>Production environment patching requires proper preparation and safeguards to prevent accidental disruptions.

>[!NOTE]
>
>You can skip the maintenance-mode and cron-job checks by selecting the override checkbox in the UI (*[!UICONTROL I want to skip maintenance mode and cron checks before applying patches to production environment]*). Only use this if you understand the risk of patching production without those safeguards in place.

## Related topics

* [Patching Automation introduction](intro.md)
* [Workflow overview](workflow.md)
* [GitHub integration](github-integration.md)
* [Best practices](best-practices.md)
* [Troubleshooting](troubleshooting.md)
