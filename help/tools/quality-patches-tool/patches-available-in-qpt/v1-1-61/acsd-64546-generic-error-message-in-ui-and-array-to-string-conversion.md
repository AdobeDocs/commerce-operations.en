---
title: 'ACSD-64546: Generic error message in UI and Array to string conversion exception during UPS label creation'
description: Apply the ACSD-64546 patch to fix the Adobe Commerce issue where a generic error message appears in the UI and an Array to string conversion exception is logged during UPS label creation. The patch ensures that the correct error is shown in the UI and the logs.
feature: Shipping/Delivery
role: Admin, Developer
---

# ACSD-64546: Generic error message in UI and *Array to string conversion* exception during UPS label creation

The ACSD-64546 patch fixes the issue where a generic error message appears in the UI and the *Array to string conversion* exception is logged during UPS label creation, ensuring the correct error is shown in the UI and logs. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64546. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A generic error message shows up in the UI and the *Array to string conversion* exception occurs during UPS label creation.

<u>Steps to reproduce</u>:

1. Create a customer account with a valid address.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL GENERAL]** > **[!UICONTROL General]** > **[!UICONTROL Store Information]** and add a valid address.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL SALES]** > **[!UICONTROL Shipping settings]** > **[!UICONTROL Origin]** and add a valid address.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL SALES]** > **[!UICONTROL Delivery methods]** > **[!UICONTROL UPS]** and configure UPS.
1. Place an order using [!UICONTROL UPS].
1. Remove the UPS user ID and password from `core_config_data` in the database.
1. Clean config cache.
1. Open the created order in the **[!UICONTROL Admin]**.
1. Create a new shipment.
    1. Select the **[!UICONTROL Create Shipping Label]** checkbox.
    1. Click **[!UICONTROL Submit shipment]**.
    1. Add the product to a package. Specify the package size (Length, Width, and Height).
    1. Click **[!UICONTROL Save]**.

<u>Expected results</u>:

The actual error message is displayed in the UI and the logs.

<u>Actual results</u>:

* The following error appears in the UI:
    *An error occurred while creating shipping label.*  
* The *Array to string conversion* exception prevents the actual error message from being displayed or stored in the logs.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:
* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:
* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
