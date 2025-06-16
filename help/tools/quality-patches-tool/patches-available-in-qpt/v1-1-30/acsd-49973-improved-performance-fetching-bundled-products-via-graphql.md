---
title: 'ACSD-49973: Improved performance fetching bundled products via [!DNL GraphQL]'
description: Apply the ACSD-49973 patch to fix the Adobe Commerce issue where performance degradation occurs when fetching bundled products via [!DNL GraphQL].
feature: GraphQL, Products
role: Admin
exl-id: d4817522-65dd-4ac8-8759-8518818684ed
---
# ACSD-49973: Improved performance fetching bundled products via [!DNL GraphQL]

The ACSD-49973 patch improves performance fetching bundled products via [!DNL GraphQL]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.30 is installed. The patch ID is ACSD-49973. Please note that the issue is fixed in Adobe Commerce 2.4.7.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide
* [Best practices for modifying database tables](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/development/modifying-core-and-third-party-tables#why-adobe-recommends-avoiding-modifications) in the Commerce Implementation Playbook

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
