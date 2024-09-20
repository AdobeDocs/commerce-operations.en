---
title: 'ACSD-56193: [!DNL Fastly] cache is not cleared for content staging update'
description: Apply the ACSD-56193 patch to fix the Adobe Commerce issue where the [!DNL Fastly] cache is not cleared for content staging update.
feature: Cache, GraphQL, Staging
role: Admin, Developer
exl-id: d4bbfafa-2d24-44cf-a08b-f7dd9111a65b
---
# ACSD-56193: [!DNL Fastly] cache is not cleared for content staging update

The ACSD-56193 patch fixes the issue where the [!DNL Fastly] cache is not cleared for content staging update. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56193. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!DNL Fastly/Varnish] cache is not cleared for content staging update

<u>Steps to reproduce</u>:

1. Install and configure [!DNL Varnish] cache.
1. Create a static block with a scheduled update.
1. Create a category embedding the static block. 
1. Fetch the content of the category using the below GraphQL query:

    ```GraphQL
       query GetCategories($id: String!) {
          categoryList(filters: { category_uid: { eq: $id } }) 
        {
            meta_title
            meta_keywords
            meta_description
            description
            path
            cms_block {
              content
              identifier
              title
              __typename
            }
            __typename
        }
      }
      {"id":"Mwo="}
    ```

1. Run this query multiple times and make sure the response is cached in the [!DNL Varnish].
1. Run the cron to apply the scheduled change.
1. Run the above GraphQL query again.
1. Create a new schedule for the same static block.
1. Repeat the steps numbered 5-9.

<u>Expected results</u>:

The updated content is returned after the scheduled updates run.

<u>Actual results</u>:

The outdated content is returned after the scheduled updates run.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
