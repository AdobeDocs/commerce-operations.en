---
title: How to access [!DNL Cloud Automated Patching Service (CAPS)]
description: Learn how to access and use [!DNL Cloud Automated Patching Service (CAPS)]
hide: yes
hidefromtoc: yes
---
# How to access [!DNL Cloud Automated Patching Service (CAPS)]

## Prerequisites

[!DNL CAPS] uses the role-based access control from Adobe Commerce Cloud. Your access level in the Cloud Console determines what you can do with [!DNL CAPS].

### Who can use [!DNL CAPS]

* **Project admin**: Can apply or revert patches on all environments
* **Contributor**: Can apply or revert patches on their assigned environments  
* **Viewer**: Can only view the project and environments, no actions allowed

### How to request access to a project

If you do not see any projects in the [!DNL CAPS] user interface, you need to request access from the appropriate person:

* **Contact the account owner or project admin** of the project
* **They will grant you the appropriate role** through the Cloud Console
* **Once granted access**, you can log in to the Cloud Console to use [!DNL CAPS]

>[!NOTE]
>
>[!DNL CAPS] follows the same permission model as Adobe Commerce Cloud, so your access level in the Cloud Console determines what you can do with [!DNL CAPS].

## Accessing [!DNL CAPS]

You can access CAPS via Site-Wide Analysis Tool at [https://supportinsights.adobe.com/commerce/](https://supportinsights.adobe.com/commerce/). Under the Patching Automation tab, you can select your project and environment.

* **Navigate to Site-Wide Analysis Tool** at [https://supportinsights.adobe.com/commerce/](https://supportinsights.adobe.com/commerce/)
* **Click on the Patching Automation tab** in the interface
* **Select your project and environment** where you want to apply patches
* **Review available patches** and their compatibility status
* **Select patches** for application or reversion

## Production environment access

For production environments, additional safeguards apply:

* **Maintenance mode** must be enabled
* **Cron jobs** must be disabled
* **Confirmation dialog** must be completed before proceeding

>[!IMPORTANT]
>
>Production environment patching requires proper preparation and safeguards to prevent accidental disruptions.
