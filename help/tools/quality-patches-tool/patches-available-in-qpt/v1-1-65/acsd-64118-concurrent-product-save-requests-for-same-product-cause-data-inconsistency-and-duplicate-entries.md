---
title: 'ACSD-64118: Concurrent product save requests for same product cause data inconsistency and duplicate entries'
description: Apply the ACSD-64118 patch to fix the Adobe Commerce issue where concurrent requests to save and update the same product result in data inconsistency or duplicated products.
feature: REST
role: Admin, Developer
type: Troubleshooting
---

# ACSD-64118: Concurrent product save requests for same product cause data inconsistency and duplicate entries

The ACSD-64118 patch fixes the issue where concurrent requests to save and update the same product result in data inconsistency or duplicated products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-64118. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p10

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Concurrent requests to save and update the same product result in data inconsistency or duplicated products.

<u>Steps to reproduce</u>:

1. Set up multi-process for consumers in `env.php`:

    ```
    'multiple_processes' =>
        array (
            'async.operations.all' => 4,
        ),
    ```

1. Add an additional store and a new storeview to the main website.
1. Send a bulk API request to the default storeview endpoint `/rest/default/async/bulk/V1/products` with the following payload to create a product:

    ```
    [
      {
        "product": {
          "sku": "Test_Prod",
          "name": "Test Product",
          "attribute_set_id": 4
        }
      }
    ]
    ```

1. Use the same payload to send a bulk API request to the new storeview endpoint `/rest/store/async/bulk/V1/products` to update the product.
1. Flush cache.
1. Run cron jobs.
1. Check the `catalog_product_entity` table for entries of the product from the previous steps.

<u>Expected results</u>:

* A single entry for the product SKU should be present in the `catalog_product_entity` table.
* The first REST API request should create one database entry, and all subsequent requests should update the database entry.

<u>Actual results</u>:

Multiple entries for the same SKU are present in `catalog_product_entity` table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
