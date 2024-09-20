---
title: 'ACSD-46192: Issue with async/bulk/V1/configurable-products/bySku/options endpoint'
description: The ACSD-46192 patch fixes the issue with the `async/bulk/V1/configurable-products/bySku/options` endpoint. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.19 is installed. The patch ID is ACSD-46192. Please note that the issue was fixed in Adobe Commerce 2.4.5.
exl-id: fed49708-868a-48ec-8dbc-638d75506a40
feature: Configuration, Products
role: Admin
---
# ACSD-46192: Issue with async/bulk/V1/configurable-products/bySku/options endpoint

The ACSD-46192 patch fixes the issue with the `async/bulk/V1/configurable-products/bySku/options` endpoint. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.19 is installed. The patch ID is ACSD-46192. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.6 - 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 and 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs when a POST request is sent to `async/bulk/V1/configurable-products/bySku/`.

<u>Steps to reproduce</u>:

1. Send a POST request to `async/bulk/V1/configurable-products/bySku/`.

```JSON
[{
  "sku": "MS-Champ",
  "option": {
    "attribute_id": "141",
    "label": "Size",
    "position": 0,
    "is_use_default": true,
    "values": [
      {
        "value_index": 9
      }
    ]
  }
}]
```

<u>Expected results</u>:

There is no error. You get the following response:

```JSON
{
  "bulk_uuid": "e5a94361-e16e-432b-a000-c1351a0d01b3",
  "request_items": [
    {
      "id": 0,
      "data_hash": "3e7369ffc0a1602c1f25601a2e11b130f65fd01e68b5091ad746d0cac5b7f35d",
      "status": "accepted"
    }
  ],
  "errors": false
}
```

<u>Actual results</u>:

The following error occurs:

```PHP
TypeError: Argument 3 passed to Magento\Framework\Webapi\ServiceInputProcessor::process() must be of the type array, string given, called in /var/www/html/vendor/magento/module-webapi-async/Controller/Rest/Asynchronous/InputParamsResolver.php on line 154 and defined in /var/www/html/vendor/magento/framework/Webapi/ServiceInputProcessor.php:172
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
