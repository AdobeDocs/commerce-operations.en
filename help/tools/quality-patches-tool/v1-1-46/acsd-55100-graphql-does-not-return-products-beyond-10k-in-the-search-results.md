---
title: "ACSD-55100: [!DNL GraphQL] doesn't return products beyond 10k in search results"
description: Apply the ACSD-55100 patch to fix the Adobe Commerce issue where the GraphQL does not return products beyond *10k* in the search results.
feature: GraphQL, Products, Search
role: Admin, Developer
exl-id: 951e5cd4-9690-43df-9e51-deab73f9eb54
---
# ACSD-55100: [!DNL GraphQL] doesn't return products beyond 10k in search results

The ACSD-55100 patch fixes the issue where [!DNL GraphQL] does not return products beyond *10k* in the search results. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.46 is installed. The patch ID is ACSD-55100. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL GraphQL] does not return products beyond *10k* in the search results.

<u>Prerequisites</u>:

In case of **[!DNL OpenSearch]**, ensure that you are using the latest available version. 

To resolve the reported issue, the Point in Time functionality is introduced, which is available after **[!DNL OpenSearch]** 2.5.0 and requires version 2.2 of the `opensearch-project/opensearch-php` package. 

However, there is a conflict with the `magento/magento-cloud-metapackage`, which specifies a dependency on the `opensearch-project/opensearch-php` package that should be less than version 2.0.1.  


This dependency prevents updating the [opensearch-project/opensearch-php] package to the latest version 2.2. 

As a result, the system encounters the following error and returns null results for products exceeding *10,000*.

`Namespace [createPointInTime] not found in /vendor/opensearch-project/opensearch-php/src/OpenSearch/Client.php:135`

The existing dependency makes it challenging to directly add a version to the `composer.json` file and update the `opensearch-project/opensearch-php` package to version 2.2.

To resolve the issue, include the following line in your main `composer.json` file under the require block. Afterward, redeploy to update the problematic package to the latest version.

`"opensearch-project/opensearch-php": "2.2.0 as 2.0.0",`

<u>Steps to reproduce</u>:

1. Generate the catalog with *15k* products.
1. Send the [!DNL GraphQL]:

```
    query {
    products(
    filter: {
    # category_id:{eq:""}
    }
    , pageSize: 5, currentPage: 1

    ) {
    total_count
    page_info {
    current_page
    page_size
    total_pages
     }

     aggregations {

    attribute_code
    count
    label
    options {
    label
    value

    }
    }

    items {
    uid
    sku
    is_for_clearance
    categories {
    name
    breadcrumbs {
    category_name
    category_uid
    }
    display_mode
    description
    }
    }
    }
    }
```

<u>Expected results</u>:

Total_count = *15k*
You should be able to show all of the products.

<u>Actual results</u>:

Total_count = *10k*
You can't get any more products to show after the *10k* batch.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
