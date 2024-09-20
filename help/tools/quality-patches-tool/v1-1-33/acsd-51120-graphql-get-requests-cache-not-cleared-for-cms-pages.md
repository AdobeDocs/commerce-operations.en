---
title: 'ACSD-51120: GraphQL GET request cache not cleared for CMS pages that contain CMS blocks'
description: Apply the ACSD-51120 patch to fix the Adobe Commerce issue where GraphQL GET request cache is not cleared for CMS pages that contain CMS blocks.
exl-id: 22abba89-b697-45d7-972e-bf3233e5e9ec
---
# ACSD-51120: GraphQL GET request cache not cleared for CMS pages that contain CMS blocks

The ACSD-51120 patch fixes the issue where GraphQL GET request cache is not cleared for CMS pages that contain CMS blocks that are updated via a staging update. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-51120. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods)  2.3.7 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL GET request cache is not cleared for CMS pages that contain CMS blocks that are updated via a staging update.

<u>Steps to reproduce</u>:

1. Create a CMS block.
1. Include the CMS block into a CMS page using the [!DNL Page Builder].
1. Fetch the CMS page using the given GraphQL query using a GET request: 

    ```GraphQL
    {
    cmsPage( identifier: "<CMS PAGE IDENTIFIER>") {
        content
        content_heading
        identifier
        meta_description
        meta_keywords
        meta_title
        page_layout
        title
        url_key
    }
    }
    ```

1. Make sure the GraphQL response is cached in [!DNL Varnish].
1. Create a scheduled update for the block.
1. Wait for the scheduled update to apply and run the cron job to apply the scheduled update.
1. Fetch the CMS page again using the given GraphQL query using a GET request.

<u>Expected results</u>:

The response shows the updated content.

<u>Actual results</u>:

The response still shows the old content.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
