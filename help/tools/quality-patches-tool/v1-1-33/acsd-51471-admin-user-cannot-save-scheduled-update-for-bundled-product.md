---
title: 'ACSD-51471: Admin user cannot save scheduled update for bundled product'
description: Apply the ACSD-51471 patch to fix the Adobe Commerce issue where an admin user cannot save a scheduled update for a bundled product that uses a simple product with a scheduled update.
exl-id: 7d80aef0-8505-4491-bde3-5b1a30b840f6
---
# ACSD-51471: Admin user cannot save scheduled update for bundled product

The ACSD-51471 patch fixes the issue where an admin user cannot save a scheduled update for a bundled product that uses a simple product with a scheduled update. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-51471. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin users cannot save a scheduled update for a bundled product that uses a simple product that itself has a scheduled update.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Add a scheduled update for the simple product with only the *Start Date* and no *End Date*.
1. After the update is applied, change the SKU of the product.
1. Create a bundled product and add the simple product created in Step 1 as a child product.
1. Create a scheduled update for the bundled product to enable the bundled product. Provide both *Start Date* and *End Date* for the scheduled update.
1. Save the scheduled update.

<u>Expected results</u>:

The scheduled update is successfully saved.

<u>Actual results</u>:

The following error occurs when saving the scheduled update: *The product that was requested doesn't exist. Verify the product and try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
