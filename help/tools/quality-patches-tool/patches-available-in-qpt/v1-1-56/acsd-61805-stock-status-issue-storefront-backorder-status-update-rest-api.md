---
title: 'ACSD-61805: Fixes stock issue on storefront after backorder status update via REST API'
description: Apply the ACSD-61805 patch to fix the Adobe Commerce issue where products remain out of stock on the storefront after updating the backorder status via the REST API
feature: REST, Catalog Management, Inventory
role: Admin, Developer
---

# ACSD-61805: Fixes stock issue on storefront after backorder status update via REST API

The ACSD-61805 patch fixes the issue where the products remain out of stock on the storefront after updating the backorder status via the REST API. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-61805. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where products remain out of stock on the storefront after updating the backorder status via the REST API.

<u>Steps to reproduce</u>:

1. Install a clean instance with sample data.
1. Create a new inventory source.
1. Create a new inventory stock and assign the new source.
1. Assign the new source to product 24-MB01.
1. Set the source item status to "In Stock" for both product sources.
1. Set the quantity (**[!UICONTROL QTY]**) to "0" for both product quantities.
1. Save the product.
1. Fetch the admin token from this endpoint URL: /rest/default/V1/integration/admin/token

    ```json
    {
      "username":"admin", 
      "password":"password" 
    }
    ```
    
1. Update the product using the endpoint: /rest/default/V1/products

    ```json
    {
      "product":{
        "sku": "24-MB01",
        "extension_attributes": {
            "stock_item": {
                "stock_id": "1",
                "is_in_stock": "0",
                "use_config_backorders": "false",
                "backorders": "0"
            }
        }
      }
    }
    ```

1. Run the cron jobs twice (once to create schedules and once to run the schedule):

    ```bash
    bin/magento cron:run
    ```

1. Go to the frontend and check the product.

<u>Expected results</u>:

The product should be "In Stock"

<u>Actual results</u>:

The product is "Out of Stock"

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
