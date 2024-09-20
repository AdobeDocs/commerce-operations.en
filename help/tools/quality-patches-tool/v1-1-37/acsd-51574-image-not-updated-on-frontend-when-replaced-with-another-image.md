---
title: 'ACSD-51574: Image not updated on frontend when replaced with another image'
description: Apply the ACSD-51574 patch to fix the Adobe Commerce issue where the image is not updated on the frontend after replacing it with another image.
feature: Configuration
role: Admin
exl-id: a6f26126-71c3-43c2-bba4-60a914d7ec11
---
# ACSD-51574: Image not updated on frontend when replaced with another image 

The ACSD-51574 patch fixes the issue where  where the image is not updated on the frontend after replacing it with another image. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-51574. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The image is not updated on the frontend after replacing it with another image. 

<u>Steps to reproduce</u>:

1. Create a product with a few images.
1. Edit the product and upload an image with a known name (Example: *image.jpg*).
1. Save the product.
1. Edit the product again and delete the old version of the image, and upload the new version of the image with the same name. **Make sure the new version is visibly different to see the issue.**
1. Save the product. Both admin and frontend displays the images.
1. Edit the product again and re-upload the same new image again (using the same name).
1. Save the product and check the product page on the frontend.

<u>Expected results</u>:

The image uploaded the second time should be the new image, along with the renamed image name.

<u>Actual results</u>:

The image uploaded the second time is the previously deleted older version of the image, instead of the same new image.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
