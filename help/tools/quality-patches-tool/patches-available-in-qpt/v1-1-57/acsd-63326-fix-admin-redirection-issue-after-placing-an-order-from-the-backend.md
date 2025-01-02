---
title: 'ACSD-63326: Fix admin redirection issue after placing an order from the backend'
description: Apply the ACSD-63326 patch to fix the Adobe Commerce issue where the admin is redirected to a broken page after placing an order from the backend.
feature: Orders, Admin Workspace
role: Admin, Developer
exl-id: 8fffc3ad-11a4-4e62-b747-1c4c7b493ada
---
# ACSD-63326: Fix admin redirection issue after placing an order from the backend

The ACSD-63326 patch fixes the issue where the admin is redirected to a broken page after placing an order from the backend. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-63326. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Admins are redirected to a page with a broken layout after successfully placing an order for a customer from the backend.

<u>Steps to reproduce</u>:

1. Navigate to the **[!UICONTROL Customers]** section in the Admin panel.
1. Select any customer and click **[!UICONTROL Edit]**.
1. On the customer detail page, click **[!UICONTROL Create Order]** from the top menu.
1. Select the [!UICONTROL FR French] store and add any available product to the order.
1. Fill in the required details at checkout and click **[!UICONTROL Get shipping methods and rates]**.
1. Click **[Submit Order]** to place the order.

<u>Expected results</u>:

The admin is redirected to the order confirmation or thank you page with the correct layout.

<u>Actual results</u>:

The admin is redirected to a page with a broken layout. The layout is corrected only after refreshing the page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
