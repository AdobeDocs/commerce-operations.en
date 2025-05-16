---
title: 'ACSD-64523: REST Endpoint fails to validate mandatory fields'
description: Apply the ACSD-64523 patch to fix the issue where the REST endpoint `[V1/import/csv]` fails to validate mandatory fields, allowing the creation of products without providing the required mandatory fields.
feature: REST, Products, Admin Workspace
role: Admin, Developer
exl-id: 21aecd6d-06e4-4f2b-904a-27487ba74968
---
# ACSD-64523: REST Endpoint fails to validate mandatory fields

The ACSD-64523 patch fixes an issue where the REST endpoint [V1/import/csv] fails to validate mandatory fields, allowing product creation without required data. To resolve this, update the Authorization header.This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The REST endpoint `[V1/import/csv]` fails to validate mandatory fields, allowing the creation of products without providing these required fields.

<u>Steps to reproduce</u>:

1. Execute the following payload (update the Authorization header):

    ```
    curl --location 'http://<domain>/rest/default/V1/import/json' \
    --header 'Content-Type: application/json' \
    --header 'Authorization: Bearer xxxxx' \
    --data '{
        "source": {
            "locale": "en_AU",
            "entity": "catalog_product",
            "behavior": "append",
            "validation_strategy": "validation-stop-on-errors",
            "allowed_error_count": 0,
            "items": [
                {
                    "sku": "product_sku",
                    "product_online": "no",
                    "attribute_set_code": "Default",
                    "product_type": "configurable",
                    "product_websites": "base",
                    "store_view_code": "default",
                    "name": null,
                    "description": null,
                    "short_description": null,
                    "weight": null,
                    "tax_class_name": null,
                    "visibility": null,
                    "price": null,
                    "url_key": null,
                    "cost": null,
                    "additional_attributes": {
                        "special_price": "",
                        "retail_price": ""
                    },
                    "configurable_variations": []
                }
            ]
        }
    }'
    ```

<u>Expected results</u>:

The application should prevent saving a product without mandatory fields.

<u>Actual results</u>:

The product was saved successfully without specifying the product name, which is a required attribute. As a result, we can't access the backend product grid, and it gives the following error.

`Warning: Undefined array key "name" in /app/code/Magento/Catalog/Ui/Component/Listing/Columns/Thumbnail.php on line 91`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
