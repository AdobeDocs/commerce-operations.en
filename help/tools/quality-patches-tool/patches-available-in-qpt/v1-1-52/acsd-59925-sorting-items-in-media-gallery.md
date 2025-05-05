---
title: 'ACSD-59925: Sorting items in [!UICONTROL Media Gallery] by position in GraphQL'
description: Apply the ACSD-59925 patch to fix the Adobe Commerce issue where items in the [!UICONTROL Media Gallery] are not sorted by position, leading to an incorrect display order.
feature: Media, GraphQL
role: Admin, Developer
exl-id: a4dd840f-44d2-40dc-b0e1-13d55b688204
---
# ACSD-59925: Sorting items in the [!UICONTROL Media Gallery] by position in GraphQL

The ACSD-59925 patch fixes the issue where items in the [!UICONTROL Media Gallery] are not sorted by position, leading to an incorrect display order. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-59925. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Items in the [!UICONTROL Media Gallery] are not sorted by position, leading to an incorrect display order.

<u>Steps to reproduce</u>:

1. Create/Edit the product.
1. Add two or more images and save it.
1. Edit the same product, but this time, drag the last image to the first position.
1. Save the product.
1. Reindex.
1. Go to GraphQL client.
1. Run GraphQL query:

    ```GraphQL
    {
      products(filter: { sku: { eq: "24-MB01" } }) {
         items {
           name
           sku
           url_key
           stock_status
           media_gallery {
              __typename
              ... on ProductVideo {
                video_content {
                  video_url
                  video_title
                  __typename
                }
                __typename
              }
              ... on ProductImage {
                url
                __typename
              }
                position
                disabled
             }
          }
          total_count
          page_info {
          page_size
         }
       }
     }
    ``` 

<u>Expected results</u>:

Items in the `media_gallery` are sorted by position.

<u>Actual results</u>:

Items in the `media_gallery` are not sorted by position.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
