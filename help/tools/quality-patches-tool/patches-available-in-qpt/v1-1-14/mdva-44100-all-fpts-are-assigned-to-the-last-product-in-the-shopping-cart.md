---
title: 'MDVA-44100: All FPTs are assigned to the last product in shopping cart'
description: The MDVA-44100 patch solves the issue where all FPTs are assigned to the last product in the shopping cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-44100. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Orders, Products, Shopping Cart
role: Admin
exl-id: b370dcbb-cbe9-4f5d-9b8f-1722ab521fcb
---
# MDVA-44100: All FPTs are assigned to the last product in shopping cart

The MDVA-44100 patch solves the issue where all FPTs are assigned to the last product in the shopping cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-44100. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

All FPTs are assigned to the last product in the shopping cart, and the FPT values for the rest of the products are reset.

<u>Steps to reproduce</u>:

1. Go to **Stores** > **Configuration** > **Sales** > **Tax** and set:
    * Enable FPT = Yes
    * Apply Tax To FPT = Yes
    * Include FPT In Subtotal = Yes
1. Go to **Stores** > **Attribute** > **Product**, and create a new attribute with type = Fixed Product Tax.
1. Add the attribute to an attribute set.
1. Create two products from the attribute set and configure the FPT attribute for your Country and State.
1. Add both items to the order.
1. Enter an address that requires FPT to be paid.
1. Place the order.
1. Check the items list on the order.

<u>Expected results</u>:

The FPTs are displayed under each product.

<u>Actual results</u>:

The FPT values from both items are shown under the second item.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
