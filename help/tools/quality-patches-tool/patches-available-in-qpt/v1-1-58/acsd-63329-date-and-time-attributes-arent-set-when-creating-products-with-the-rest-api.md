---
title: "ACSD-63329: Date and time attributes aren't set when creating products with the REST API"
description: Apply the ACSD-63299 patch to fix the Adobe Commerce issue where default values are not set for the date and time fields when creating products via the REST API.
feature: REST
Role: Admin, Developers
---

# ACSD-63299: Default values for date and time fields aren't set when creating products with the REST API

The ACSD-63299 patch fixes the issue where the special price attribute no longer affects the display of special prices for configurable products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63299. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Default values are not set for the date and time fields when creating products via the REST API

<u>Steps to reproduce</u>:

1. Create a [!UICONTROL Product] attribute, set its default value to `12/31/2020`, and set the **[!UICONTROL Catalog Input Type]** for **[Store Owner]**.
1. Create another text type attribute and set the default value to *test value*.
1. Create a new product using a REST API POST request to /rest/all/V1/products/

```
    {
        "product": {
            "sku": "testsku2",
            "name": "Test Api Product 2",
            "attribute_set_id": 4,
            "price": 100,
            "status": 1,
            "visibility": 4,
            "type_id": "simple",
            "weight": 20,
            "extension_attributes": {
                "website_ids": [
                    1
                ]
            }
        }
    }
```

1. Check the values saved for the above attributes.

<u>Expected results</u>:

The default value should be saved in Date/Datetime type attributes when creating a product using API.

<u>Actual results</u>:

The default value is saved for the text attribute but not for the Date type attribute. The value for the Date attribute is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
