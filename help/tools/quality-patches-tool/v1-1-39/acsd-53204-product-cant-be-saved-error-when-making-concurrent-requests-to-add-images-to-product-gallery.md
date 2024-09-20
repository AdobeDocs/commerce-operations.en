---
title: 'ACSD-53204: *The product cannot be saved* error on concurrent requests to add images to gallery'
description: Apply the ACSD-53204 patch to fix the Adobe Commerce issue where *The product can't be saved* error is thrown when making concurrent requests to add images to the product gallery using the rest/V1/products/&lt;sku&gt;/media endpoint.
feature: Catalog Management, Media, Products, REST
role: Admin, Developer
exl-id: dcea2621-66cf-49d1-bba6-b61c70716e84
---
# ACSD-53204: "*The product can't be saved*" error on concurrent requests to add images to gallery

The ACSD-53204 patch fixes the issue where "*The product can't be saved*" error is thrown when making concurrent requests to add images to the product gallery using the `rest/V1/products/<sku>/media` endpoint. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.39 is installed. The patch ID is ACSD-53204. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

"*The product can't be saved*" error is thrown when making concurrent requests to add images to the product gallery using the `rest/V1/products/<sku>/media` endpoint.

<u>Steps to reproduce</u>:

1. Log in to the Admin Panel.
1. Create a product with SKU p1.
1. Make multiple concurrent requests to the `rest/V1/products/<sku>/media` endpoint to upload multiple images simultaneously.

<u>Expected results</u>:

The images are saved without errors.

<u>Actual results</u>:

"*The product can't be saved*" error is returned from time to time.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
