---
title: 'ACSD-66965: [!UICONTROL Print] option on [!UICONTROL Requisition List] page causes an error'
description: Apply the ACSD-66965 patch to fix an issue in Adobe Commerce where the [!UICONTROL Print] option on the [!UICONTROL Requisition List] page causes an error.
feature: B2B
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66965: **[!UICONTROL Print]** option on **[!UICONTROL Requisition List]** page causes an error

The ACSD-66965 patch fixes the issue where the **[!UICONTROL Print]** option on the **[!UICONTROL Requisition List]** page causes an error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66965. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p3 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

**[!UICONTROL Print]** option on the **[!UICONTROL Requisition List]** page causes an error due to a null object reference in `Grid.php`.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]**.
1. Set **[!UICONTROL Enable Company]**, **[!UICONTROL Enable Shared Catalog]** and **[!UICONTROL Enable Requisition List]** to `Yes`.
1. Create two simple products.
1. Login to **[!UICONTROL Storefront]** and open **[!UICONTROL My Account]** page.
1. Create a requisition list.
1. Assign both the products to the requisition list.
1. Access the requisition list and list the products.
1. Click **[!UICONTROL Print]**.

<u>Expected results</u>:

The **[!UICONTROL Print]** option on the **[!UICONTROL Requisition List]** page displays the print preview without errors.

<u>Actual results</u>:

The following error message appears: *An error has happened during application run. See exception log for details.*

```
Call to a member function setCollection() on null in /vendor/magento/module-requisition-list/Block/Requisition/View/Items/Grid.php:146
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
