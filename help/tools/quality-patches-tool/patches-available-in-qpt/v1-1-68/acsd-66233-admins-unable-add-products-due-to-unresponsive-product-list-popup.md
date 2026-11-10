---
title: 'ACSD-66233: Admins unable add products due to unresponsive product list popup'
description: Apply the ACSD-66233 patch to fix the Adobe Commerce issue where admins are unable to add products to categories because the [!UICONTROL Add Product] popup in Visual Merchandiser loads indefinitely.
feature: Inventory, Merchandising
role: Admin, Developer
type: Troubleshooting
exl-id: 2e01e62d-b6f9-4aa5-9040-7908aa83d422
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 8dc0e58b-adf0-51bb-8db5-bb36e3e656fb
    internal-label: Inventory
  - id: 58c984c2-e237-5c50-9718-500e40d1e82c
    internal-label: Merchandising
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-66233: Admins unable to add products due to unresponsive product list popup

The ACSD-66233 patch fixes an issue where admins are unable to add products to categories because the [!UICONTROL Add Product] popup in Visual Merchandiser loads indefinitely. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66233. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the [!UICONTROL Add Product] popup in Visual Merchandiser loads indefinitely, preventing admins from adding products to categories.

<u>Steps to reproduce</u>:

1. Install and enable the inventory modules.
1. Create a large number of inventory sources (for example, 700).
1. Create multiple inventory stocks (for example, 12) and assign the inventory sources to them.
1. Create some products and assign them to the inventory sources.
1. Create a category.
1. Expand the [!UICONTROL Products in Category] section.
1. Click the [!UICONTROL Add Product] button.
1. Observe the pop-up with the list of products.

<u>Expected results</u>:

The product list loads in the popup within a reasonable time.

<u>Actual results</u>:

The popup loads indefinitely and fails to display the product list.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
