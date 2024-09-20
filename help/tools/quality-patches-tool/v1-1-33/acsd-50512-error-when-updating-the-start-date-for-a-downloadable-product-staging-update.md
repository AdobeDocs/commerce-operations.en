---
title: 'ACSD-50512: Error when updating the start date for a downloadable product staging update'
description: Apply the ACSD-51892 patch to fix the Adobe Commerce performance issue where the error *The downloadable link isn't related to the product.Verify the link and try again*, occurs when updating the start date for a downloadable product staging update.
feature: Products, Staging
role: Admin
exl-id: 873357ef-49c3-48f8-a98e-41c48cb9ba8b
---
# ACSD-50512: Error when updating start date for downloadable product staging update

The ACSD-50512 patch fixes the issue where the error *The downloadable link isn't related to the product. Verify the link and try again*, occurs when updating the start date for a downloadable product staging update. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51502. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The error *The downloadable link isn't related to the product. Verify the link and try again*, occurs when updating the start date for a downloadable product staging update.

<u>Steps to reproduce</u>:

1. Create a downloadable product, with *downloadable links* and *sample links*.
1. Create a scheduled update for the same product and save the product.
1. Edit the preconfigured scheduled update (from step 2) and change the start date.
1. Save the scheduled update.

<u>Expected results</u>:

The changes to the scheduled update are saved successfully.

<u>Actual results</u>:

You get the error: *The downloadable link isn't related to the product. Verify link and try again*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
