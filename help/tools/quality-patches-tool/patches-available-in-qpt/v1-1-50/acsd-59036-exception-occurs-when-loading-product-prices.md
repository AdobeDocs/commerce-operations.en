---
title: 'ACSD-59036: An exception occurs when loading product prices with both lower and upper bounds set to $0'
description: Apply the ACSD-59036 patch to fix the Adobe Commerce issue where an exception occurs when loading product prices with both lower and upper bounds set to *$0*.
feature: Categories, Products, Storefront, Search
role: Admin, Developer
exl-id: 40f13aee-5cba-4367-94e2-d8c0e86e96c9
---
# ACSD-59036: An exception occurs when loading product prices with both lower and upper bounds set to *$0*

The ACSD-59036 patch fixes the issue where an exception occurs when loading product prices with both lower and upper bounds set to *$0*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-59036. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An exception occurs when loading product prices with both lower and upper bounds set to *$0*.

The issue is occurring because the algorithm does not account for NULL values when loading the query with price ranges. To fix this, we can check if both the lower and upper ranges are NULL, and if they are, assign a value of *0* for both limits. This should prevent any errors from being thrown.

<u>Steps to reproduce</u>:

1. Create *13* simple products.
1. Assign all *13* products to a category.
1. Set the price of one product to *$1322.94*.
1. Set the price of all other products to *$0*.
1. Configure [!DNL OpenSearch] as a search engine.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Storefront]** and set the **[!UICONTROL PLP]** count to *16*.
1. Set **[!UICONTROL Price Navigation Step Calculation]** to *Automatic (equalize product counts)*.
1. Run full reindex.
1. Open the *[!UICONTROL Category]* page.
   
<u>Expected results</u>:

The *[!UICONTROL Category]* page displays all the products.

<u>Actual results</u>:

An error occurs:

```JSON
report.CRITICAL: OpenSearch\Common\Exceptions\BadRequest400Exception: {"error":{"root_cause":[{"type":"x_content_parse_exception","reason":"[1:193] [bool] failed to parse field [must]"}],"type":"x_content_parse_exception","reason":"[1:193] [bool] failed to parse field [filter]","caused_by":{"type":"x_content_parse_exception","reason":"[1:193] [bool] failed to parse field [must]","caused_by":{"type":"illegal_argument_exception","reason":"field name is null or empty"}}},"status":400} in /vendor/opensearch-project/opensearch-php/src/OpenSearch/Connections/Connection.php:664
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
