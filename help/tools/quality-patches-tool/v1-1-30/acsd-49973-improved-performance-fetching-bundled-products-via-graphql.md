---
title: 'ACSD-49973: Improved performance fetching bundled products via [!DNL GraphQL]'
description: Apply the ACSD-49973 patch to fix the Adobe Commerce issue where performance degradation occurs when fetching bundled products via [!DNL GraphQL].
exl-id: 7d7fce0f-40f9-4dec-aee7-1014690ccd7c
feature: GraphQL, Products
role: Admin
---
# ACSD-49973: Improved performance fetching bundled products via [!DNL GraphQL]

The ACSD-49973 patch improves performance fetching bundled products via [!DNL GraphQL]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is ACSD-49973. Please note that the issue is fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Performance degradation occurs when fetching bundled products via [!DNL GraphQL].

<u>Prerequisites</u>:

Create 2000 bundle products using the [Performance toolkit](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/generate-data.html).

<u>Steps to reproduce</u>:

1. Enable the [!DNL DB] query logger:

    ```
    bin/magento dev:query-log:enable
    ```
    
1. Execute the following [!DNL GraphQL] query:

    ```GraphQL
    {
      products(
        search: "bundle"
        pageSize: 2000,
        sort: { relevance: DESC }
      ) {
        total_count
        items {
          name
          sku
        }
      }
    }
    ```
    
1. Check `var/log/db.log` for requests to the `catalog_product_bundle_selection` table.

<u>Expected results</u>:

Requests to the `catalog_product_bundle_selection` table should not be present in the `var/log/db.log`.

<u>Actual results</u>:

There are 2000 requests to `catalog_product_bundle_selection` table which are triggered at the same time, which cause performance degradation.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
