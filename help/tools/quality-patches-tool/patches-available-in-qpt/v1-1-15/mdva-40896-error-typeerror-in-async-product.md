---
title: "MDVA-40896: 'Error: TypeError: Argument 3' error in async product"
description: 'The MDVA-40896 patch fixes the issue where the `Error: TypeError: Argument 3 passed to Magento\Framework\Webapi\ServiceInputProcessor::process() must be of the type array, string given` error is shown in async product bulk API. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-40896. Please note that the issue is fixed in Adobe Commerce 2.4.4.'
exl-id: d9b73e7a-c228-492c-9fdf-c57cceafb330
feature: Products
role: Admin
---
# MDVA-40896: 'Error: TypeError: Argument 3' error in async product

The MDVA-40896 patch fixes the issue where the `Error: TypeError: Argument 3 passed to Magento\Framework\Webapi\ServiceInputProcessor::process() must be of the type array, string given` error is shown in async product bulk API. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-40896. Please note that the issue is fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

`Error: TypeError: Argument 3 passed to Magento\Framework\Webapi\ServiceInputProcessor::process() must be of the type array, string given` error is shown in async product bulk API.

<u>Steps to reproduce</u>:

1. Send a request to `rest/all/async/bulk/V1/products/bySKU` endpoint using the following payload:

```RESTAPI
[
  {
    "product": {
      "sku": "24-MB01",
      "price": 36,
      "extension_attributes": {
        "stock_item": {
          "qty": 100,
          "is_in_stock": true
        }
      },
      "custom_attributes": [
        {
          "attribute_code": "new",
          "value": "1"
        }
      ]
    }
  },
  {
    "product": {
      "sku": "24-MB04",
      "price": 28,
      "extension_attributes": {
        "stock_item": {
          "qty": 50,
          "is_in_stock": true
        }
      },
      "custom_attributes": [
        {
          "attribute_code": "new",
          "value": "0"
        }
      ]
    }
  }
]
```

<u>Expected results</u>:

Product details are returned.

<u>Actual results</u>:

The error `Error: TypeError: Argument 3 passed to Magento\Framework\Webapi\ServiceInputProcessor::process() must be of the type array, string given` occurs.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
