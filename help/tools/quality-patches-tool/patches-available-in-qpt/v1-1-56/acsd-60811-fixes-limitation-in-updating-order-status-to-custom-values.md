---
title: 'ACSD-60811: Fixes limitation in updating order status to custom values'
description: Apply the ACSD-60811 patch to fix the Adobe Commerce issue where updating order status with custom value or comment is only possible if the current status is either 'processing' or 'fraud.'
feature: Orders, Admin Workspace
role: Admin, Developer
exl-id: 6d5391b3-7014-4d0a-b4ab-799f0733bbca
type: Troubleshooting
---
# ACSD-60811: Fixes limitation in updating order status to custom values

The ACSD-60811 patch fixes the issue where updating the order status with a custom value or comment is only possible if the current status is either '[!UICONTROL Processing]' or '[!UICONTROL Suspected Fraud].' This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-60811. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7. 2.4.7-p1, 2.4.7-p2, 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Updating the order status with a custom value or comment is only possible if the current status is either *processing* or *fraud*. The order status remains unchanged when a new status is selected and submitted.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Order Status]** to create a custom order status in the admin panel.
1. Click **[!UICONTROL Assign Status to State]** to assign the custom status to order state.
1. Change the order status from the order view page in the admin panel.

<u>Expected results</u>:

The admin user should be able to change the order status to a custom order status in the admin panel.

<u>Actual results</u>:

The order status remains the same when a new order status is selected and submitted.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
