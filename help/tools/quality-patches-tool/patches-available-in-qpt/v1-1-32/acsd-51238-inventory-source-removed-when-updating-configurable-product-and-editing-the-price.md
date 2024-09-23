---
title: 'ACSD-51238: Inventory source is removed when updating a configurable product and editing the price'
description: Apply the ACSD-51238 patch to fix the Adobe Commerce issue where the inventory source is removed when updating a configurable product and editing the price.
exl-id: ab2f60fd-5da3-45f7-a489-6f4f9d34e1f1
feature: Configuration, Inventory, Orders, Products
role: Admin
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
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
