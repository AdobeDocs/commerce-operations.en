---
title: 'ACSD-59378: Store-level [!DNL URL] rewrites incorrectly updated during import'
description: Apply the ACSD-59378 patch to fix the Adobe Commerce issue where store-level [!DNL URL] rewrites are incorrectly updated during import.
feature: Data Import/Export
role: Admin, Developer
exl-id: 4ba567e3-323d-4068-90cc-50aacd45d397
---
# ACSD-59378: Store-level [!DNL URL] rewrites incorrectly updated during import

The ACSD-59378 patch fixes the issue where the store-level [!DNL URL] rewrites are incorrectly updated during import. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-59378. Please note that this issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p5

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.5x (all versions of 2.4.5)

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Store-level [!DNL URL] rewrites are incorrectly updated during import.

<u>Steps to reproduce</u>:

1. Create a product with `url_key = key_default` on the **All Store Views** scope.
1. Set `url_key = key_store` in the **Default Store View** scope.
1. Export the product.
1. Import a [!DNL CSV] file for this product with the following data in it:
    * `store_view_code` column is set to *empty* so that it applies for the **All Store Views** scope.
    * `url_key` is set to the default key *`key_default`*.

<u>Expected Results</u>:

[!DNL URL] rewrites are only regenerated for store views where there's no overridden `url_key` (where the default `url_key` applies).

<u>Actual Results</u>:

`key_store` [!DNL URL] rewrites are deleted, but the [!DNL URL] rewrite on the **Default Store View** level for the product is still set to *`key_store`*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
