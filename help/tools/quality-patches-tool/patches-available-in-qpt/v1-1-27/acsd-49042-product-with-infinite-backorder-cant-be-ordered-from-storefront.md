---
title: 'ACSD-49042: Product with infinite backorder can''t be ordered from storefront'
description: Apply the ACSD-49042 patch to fix the Adobe Commerce issue where a product with infinite backorder cannot be ordered from the storefront.
feature: Admin Workspace, Orders, Products, Storefront
role: Admin
exl-id: b94d06c0-806a-40be-bcd4-d6b8e5e474c3
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
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
# ACSD-49042: Product with infinite backorder can't be ordered from storefront

The ACSD-49042 patch fixes the issue where a product with infinite backorder cannot be ordered from the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-49042. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The error occurs when a product with infinite backorder cannot be ordered from the storefront.

<u>Steps to reproduce</u>:

1. Set the following configuration settings:
    * **[!UICONTROL Display Out of Stock Products]** set to *[!UICONTROL Yes]*.
    * **[!UICONTROL Backorders]** set to *[!UICONTROL Allow Qty Below 0]*.
1. Add a new **[!DNL custom stock]** and **[!DNL custom source]**.
1. Assign a product to the **[!DNL custom source]** and make sure there is an inventory number set for it (For Example: *10*).
1. On the product edit page, open **[!UICONTROL Advanced Inventory]**. Set the **[!UICONTROL minimum quantity]** in the cart, (For Example: *160*). The quantity must be above inventory.
1. Go to the storefront and buy a product to create a reservation.
1. Change the **[!UICONTROL product quantity]** to *0*. The critical point is to save the product from the **[!DNL Admin panel]** when there is a reservation.
1. Open the **[!UICONTROL product page]** on the storefront and try to add the product to the cart.

<u>Expected results</u>:

It's possible to add the product to the cart because backorders for a quantity below *0* are allowed.

<u>Actual results</u>:

The product is displayed to be out of stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
