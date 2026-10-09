---
title: 'ACSD-47908: *A value less than or equal to 0 is expected* error during checkout'
description: Apply the ACSD-47908 patch to fix the Adobe Commerce error *A value less than or equal to 0 is expected* when selecting the source and quantity on the shipping step during checkout.
feature: Admin Workspace, Checkout, Orders
role: Admin
exl-id: f1429bd9-652d-43c0-af52-b2258e2a7643
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 8cd50456-5eb0-5364-922a-f14161feb828
    internal-label: Checkout
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: bb2df8be-afdd-4818-b6b5-95ca1dd3bc3a
    internal-label: Admin workspace
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-47908: *A value less than or equal to 0 is expected* error during checkout

The ACSD-47908 patch fixes the error *A value less than or equal to 0 is expected* when selecting the source and quantity in the shipping step during checkout. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-47908. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The following error is thrown when selecting the source and quantity in the shipping step during checkout: *A value less than or equal to 0 is expected*.

<u>Prerequisites</u>:

Install Adobe Commerce Inventory Management (MSI) modules.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Inventory]** > **[!UICONTROL Sources]** and configure multiple sources.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Inventory]** > **[!UICONTROL Stock]** and create a new stock. 
    * Now assign the sources to the new stock.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** and edit at least one product. 
    * Make sure that the products are assigned to the new sources, and specify the available quantity.
1. Go to **[!UICONTROL Sales]** > **[!UICONTROL Orders]** and create a new order.
1. Add those products to the order and place it.
1. Click **[!UICONTROL Ship]**.
1. Select the source to be shipped from.
1. Specify the quantity of each item to be shipped.
1. Reload the page.
1. Click on **[!UICONTROL Proceed to Shipment]**.

<u>Expected results</u>:

The new shipment page opens without any error.

<u>Actual results</u>:

* The quantity entered cannot be validated.
* The following error is thrown: *Please enter a value less than or equal to 0*.

  The error is, however, inconsistent and may not always appear.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
