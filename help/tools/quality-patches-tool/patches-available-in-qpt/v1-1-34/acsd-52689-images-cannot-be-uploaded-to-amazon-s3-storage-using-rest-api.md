---
title: "ACSD-52689: Images can't upload to Amazon S3 storage via REST API"
description: Apply the ACSD-52689 patch to fix the Adobe Commerce issue where the images can't be uploaded to Amazon S3 storage via REST API.
feature: REST, Storage, Iaas
role: Admin
exl-id: ad072cbf-53b2-49b6-8b33-f0e23e921a1a
---
# ACSD-52689: Images can't upload to Amazon S3 storage via REST API

The ACSD-52689 patch fixes the issue where the images can't be uploaded to Amazon S3 storage using REST API This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.34 is installed. The patch ID is ACSD-52689. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:** 

* Adobe Commerce (all deployment methods) 2.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Images can't be uploaded to Amazon S3 storage using REST API

<u>Steps to reproduce</u>:

1. Configure REMOTE_STORAGE for the Amazon S3 bucket.
1. Add an image to the product using the Bulk API.

    ```POST .../rest/all/async/bulk/V1/products/bySku/media```

    ```
    [
        {
            "sku": "p1",
            "entry": {
                "media_type": "image",
                "position": 0,
                "disabled": false,
                "types": [
                    "image",
                    "thumbnail",
                    "small_image",
                    "swatch_image"
                ],
                "content": {
                 "type": "image\/jpeg",
                    "name": "adobe_commerce_test_3",
                    "base64_encoded_data": "/9j/4AAQSkZJRgABAQAAAQABA..."
                }
            }
        }
    ]
    ```

1. Wait for the bulk operation to be processed.

<u>Expected results</u>

Image should be uploaded to the Amazon S3 bucket.

<u>Actual results</u>

Image is not automatically uploaded to the Amazon S3 bucket.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
