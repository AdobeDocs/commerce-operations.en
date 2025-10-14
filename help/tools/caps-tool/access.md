---
title: How to access [!DNL Cloud Automation Patching Service (CAPS)]
description: Learn how to access and use [!DNL Cloud Automation Patching Service (CAPS)]
hide: yes
hidefromtoc: yes
---
# How to access [!DNL Cloud Automation Patching Service (CAPS)]

## Prerequisites

[!DNL CAPS] uses the role-based access control from Adobe Commerce Cloud. Your access level in the Cloud Console determines what you can do with [!DNL CAPS].

### Who can use [!DNL CAPS]

* **Project admin** - Can apply or revert patches on all environments
* **Contributor** - Can apply or revert patches on their assigned environments  
* **Viewer** - Can only view the project and environments, no actions allowed

### How to request access to a project

If you do not see any projects in the [!DNL CAPS] user interface, you need to request access from the appropriate person:

* Contact the account owner or project admin of the project
* They will grant you the appropriate role through the Cloud Console
* Once granted access, you can log in to the Cloud Console to use [!DNL CAPS]

>[!NOTE]
>
>[!DNL CAPS] follows the same permission model as Adobe Commerce Cloud, so your access level in the Cloud Console determines what you can do with [!DNL CAPS].

## Accessing [!DNL CAPS]

The CAPS tool is available from the Site-Wide Analysis Tool dashboard at [https://supportinsights.adobe.com/commerce/](https://supportinsights.adobe.com/commerce/). Under the Patching Automation tab, you can select your project and environment.

1. Navigate to Site-Wide Analysis Tool at [https://supportinsights.adobe.com/commerce/](https://supportinsights.adobe.com/commerce/).
1. Click on the [!UICONTROL Patching Automation] tab in the interface.
1. Select the project and environment where you want to apply patches.
1. Review available patches and their compatibility status.
1. Select patches to apply or revert.

## Production environment access

For production environments, additional safeguards apply:

* **Maintenance mode** - Must be enabled
* **Cron jobs** - Must be disabled
* **Confirmation dialog** - Must be completed before proceeding

>[!IMPORTANT]
>
>Production environment patching requires proper preparation and safeguards to prevent accidental disruptions.

## Related topics

* [CAPS introduction](intro.md)
* [Workflow](workflow.md)
* [Best practices](best-practices.md)
* [Troubleshooting](troubleshooting.md)
