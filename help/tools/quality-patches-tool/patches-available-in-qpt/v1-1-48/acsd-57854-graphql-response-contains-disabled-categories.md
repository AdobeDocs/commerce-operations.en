---
title: 'ACSD-57854: *GraphQL* response contains disabled categories that should not be listed in the category aggregations'
description: Apply the ACSD-57854 patch to fix the Adobe Commerce issue where the *GraphQL* response contains disabled categories that shouldn't be listed in the category aggregations.
feature: GraphQL
role: Admin, Developer
exl-id: b6130a0f-57bc-4719-99f2-beb630c463c7
---
# ACSD-57854: *GraphQL* response contains disabled categories that should not be listed in the category aggregations

The ACSD-57854 patch fixes the issue where the *GraphQL* response contains disabled categories that shouldn't be listed in the category aggregations. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.48 is installed. The patch ID is ACSD-57854. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

*GraphQL* response contains disabled categories that shouldn't be listed in the category aggregations.

<u>Steps to reproduce</u>:

1. Create two categories.
1. Create a product (Test Adobe Product) and assign the product to both the categories.
1. Disable one of the category which was created.
1. Use products *GraphQL* to search the product.
1. Check the list of the product categories in the *GraphQL* response.

<u>Expected results</u>:

The disabled categories are not listed in the *GraphQL* response.

<u>Actual results</u>:

The disabled categories are listed in the category aggregation *GraphQL* response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
