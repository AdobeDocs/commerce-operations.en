---
title: 'ACSD-49129: "Content" attribute not returned in product media API responses'
description: Apply the ACSD-49129 patch to fix the Adobe Commerce issue where the *content* attribute (*base64 image code*) is not returned in the `rest/V1/products/sku/media` product media API responses.
exl-id: b7022046-3f52-4880-81b8-977ed270773f
feature: REST, Attributes, Media, Page Content, Products
role: Admin
---
# ACSD-49129: "Content" attribute not returned in product media API responses

The ACSD-49129 patch fixes the issue where the *content* attribute (*[!UICONTROL base64 image code]*) is not returned in the `rest/V1/products/sku/media` product media API responses. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.30 is installed. The patch ID is ACSD-49129. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The *content* attribute (*[!UICONTROL base64 image code]*) is not returned in the `rest/V1/products/sku/media` product media API responses.

<u>Steps to reproduce</u>:

1. Create a product with an image.
1. Send *GET REST API* request to `rest/V1/products/<sku>/media` and `rest/V1/products/<sku>/media/<entryId>`.
1. Check the API responses.

<u>Expected results</u>

The *content* attribute with the data is available via REST API.

<u>Actual results</u>

The *content* attribute is not present in the API responses.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
