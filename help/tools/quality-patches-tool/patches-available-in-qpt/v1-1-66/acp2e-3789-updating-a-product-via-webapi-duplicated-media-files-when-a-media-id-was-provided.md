---
title: 'ACP2E-3789: Updating a product via WebAPI duplicated media files when a media ID was provided'
description: Apply the ACP2E-3789 patch to fix the Adobe Commerce issue where updating a product via WebAPI duplicated media files when a media ID was provided. The system duplicates images instead of replacing them, creating new files with each API call. This can lead to a significant buildup of images, overloading /pub/media/catalog/products/cache/.
feature: Catalog Management, Media, REST, Products, Cache
role: Admin, Developer
---

# ACP2E-3789: Updating a product via WebAPI duplicated media files when a media ID was provided

The ACP2E-3789 patch fixes the issue where updating a product via WebAPI duplicated media files when a media ID was provided. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACP2E-3789. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where updating a product via WebAPI duplicated media files when a media ID was provided.

<u>Steps to reproduce</u>:

1. Create a product and add an image
1. Get product details using the REST API: base_url/rest/V1/products/<sku>
1. Perform a PUT request to update the product without changing the image name and file, but keeping the media_gallery_entries field
1. Check the pub/media/catalog/product/xx/yy directory before and after the update

<u>Expected results</u>:

1. The image file should be replaced, not duplicated, when the media ID is included in the request.

<u>Actual results</u>:

1. The image is duplicated under a different name (e.g., wb04-blue-1.jpg), leading to unnecessary file buildup.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.