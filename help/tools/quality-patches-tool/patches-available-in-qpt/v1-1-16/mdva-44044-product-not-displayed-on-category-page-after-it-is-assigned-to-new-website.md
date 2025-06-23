---
title: 'MDVA-44044: Product not displayed on category page after it is assigned to new website'
description: The MDVA-44044 patch solves the issue where a product is not displayed on the category page after it is assigned to a new website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44044. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Categories, Products
role: Admin
exl-id: ae797cdc-5977-40b8-82da-ccf364466bdf
type: Troubleshooting
---
# MDVA-44044: Product not displayed on category page after it is assigned to new website

The MDVA-44044 patch solves the issue where a product is not displayed on the category page after it is assigned to a new website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44044. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Product is not displayed on the category page after it is assigned to a new website.

<u>Steps to reproduce</u>:

1. Set the indexer mode to schedule.
1. Create a secondary website, store, and store view.
1. Add a secondary store code in `index.php`:

    ```php
    $_SERVER["MAGE_RUN_CODE"]="en_us";
    $_SERVER["MAGE_RUN_TYPE"]="store";
    ```

1. Create a new category.
1. Create a new product assigned to the newly created category. Make sure to only assign it to the primary website.
1. Run the cron.
1. Open the category from the storefront.
1. Assign the product to the secondary website.
1. Run the cron again.

<u>Expected results</u>:

The product appears on the category page after a scheduled indexer.

<u>Actual results</u>:

The product does not appear on the category page until a full reindex.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
