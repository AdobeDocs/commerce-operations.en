---
title: 'ACSD-56616: Storefront display of bundled products during simple stock shortage'
description: Apply the ACSD-56616 patch to fix the Adobe Commerce issue where bundled products unexpectedly appear on the storefront when all associated simple products are out of stock.
feature: Products
role: Admin, Developer
exl-id: 6cf8e15d-38a5-42b6-aee7-67410b501404
---
# ACSD-56616: Storefront display of bundled products during simple stock shortage.

The ACSD-56616 patch fixes the issue where bundled products unexpectedly appear on the storefront when all associated simple products are out of stock. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.45 is installed. The patch ID is ACSD-56616. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Incorrect storefront display of bundled products during simple stock shortage.

<u>Steps to reproduce</u>:

1. Create a new website/store/storefront.
1. Create a new source.
1. Create a new stock and assign it to the newly created website.
1. Configure indexers to update on schedule.
1. Generate two simple products, S1 (qty = 1) and S2 (qty = 1), and assign them to the new stock and new website.
1. Create *bundled1* product and associate it with new website, placing it in category *CAT*.
1. Define two required dropdown options and link simple product *S1* to option1 and *S2* to option2.
1. Save the products.
1. Navigate to **[!UICONTROL System]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL Web]** and enable *Add store code to URL* = *Yes*.
1. Open the storefront and purchase the bundled product.
1. Run cron twice.
1. Return to the *CAT* category.

<u>Expected results</u>:

The *bundle1* product is out of stock.

<u>Actual results</u>:

The *bundle1* product is visible with price = *$0*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
