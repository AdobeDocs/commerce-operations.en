---
title: 'ACP2E-3789: Media files duplicated on product update via WebAPI'
description: Apply the ACP2E-3789 patch to fix the Adobe Commerce issue where product updates via WebAPI duplicate media files when a media ID is provided.
feature: Catalog Management, Media, REST, Products, Cache
role: Admin, Developer
type: Troubleshooting
exl-id: 1eaa8ed0-fde6-47c4-9339-8f5e7bce7b19
---
# ACP2E-3789: Media files duplicated on product update via WebAPI

The ACP2E-3789 patch fixes the issue where product updates via WebAPI duplicate media files when a media ID is provided. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACP2E-3789. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Updating a product via WebAPI with a media ID causes the system to duplicate media files instead of replacing them, creating new files with each API call and resulting in a buildup of images that overloads the `/pub/media/catalog/products/cache/` directory.

<u>Steps to reproduce</u>:

1. Create a product and add an image.
1. Get product details using the REST API at `base_url/rest/V1/products/<sku>`.
1. Perform a PUT request to update the product, keeping the `media_gallery_entrie`s unchanged (same image name and file).
1. Check the `pub/media/catalog/product/xx/yy` directory before and after the update.

<u>Expected results</u>:

The image file is replaced when the media ID is included in the request.

<u>Actual results</u>:

The image is duplicated with a new name (for example, wb04-blue-1.jpg), causing unnecessary file buildup.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
