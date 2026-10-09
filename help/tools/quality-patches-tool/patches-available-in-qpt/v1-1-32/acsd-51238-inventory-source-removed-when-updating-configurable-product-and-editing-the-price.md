---
title: 'ACSD-51238: Inventory source is removed when updating a configurable product and editing the price'
description: Apply the ACSD-51238 patch to fix the Adobe Commerce issue where the inventory source is removed when updating a configurable product and editing the price.
feature: Configuration, Inventory, Orders, Products
role: Admin
exl-id: 785f012f-e064-4ac6-b559-9e9aa42c679c
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: 8dc0e58b-adf0-51bb-8db5-bb36e3e656fb
    internal-label: Inventory
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-51238: Inventory source is removed when updating a configurable product and editing the price

The ACSD-51238 patch fixes the issue where the inventory source is removed when updating a configurable product and editing the price. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-51238. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The inventory source is removed when updating a configurable product and editing the price.

<u>Steps to reproduce</u>:

1. Install **[!DNL Adobe Commerce]** with **[!DNL Inventory module]**
1. Go to the **[!UICONTROL Admin]** -> **[!UICONTROL Stores]** -> **[!UICONTROL Inventory]** and create *two sources* and *two stocks*.
1. Create a **[!UICONTROL configurable product]** and assign it to **[!UICONTROL default sources]** or **[!UICONTROL newly created sources]**.
1. Click on the **[!UICONTROL next button]** and *save* the product.
1. Now edit the same **[!UICONTROL Configurable Product]** and click on **[!UICONTROL Edit Configuration]** inside the **[!UICONTROL Configuration tab]**.
1. In `Step 3: Bulk Images,Price and Quantity`, change the `price` and leave `Quantity` and `Images` to `Skip quantity at this time` and `Skip image uploading at this time` respectively.
1. Click on **[!UICONTROL next button]** and generate the product.

<u>Expected results</u>

The quantity per source inside the **[!UICONTROL Configuration tab]** shouldn't be empty.

<u>Actual results</u>

The quantity per source inside the **[!UICONTROL Configuration tab]** is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
