---
title: 'ACSD-46192: Issue with async/bulk/V1/configurable-products/bySku/options endpoint'
description: The ACSD-46192 patch fixes the issue with the `async/bulk/V1/configurable-products/bySku/options` endpoint. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46192. Please note that the issue was fixed in Adobe Commerce 2.4.5.
feature: Configuration, Products
role: Admin
exl-id: 5a54f4b5-8467-40de-9d8f-ba46880ed5ad
---
# ACSD-46192: Issue with async/bulk/V1/configurable-products/bySku/options endpoint

>[!NOTE]
>
>The ACSD-46192 patch is partially deprecated, as this issue is addressed by the mandatory security patch [APSB25-08](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/security-update-available-for-adobe-commerce-apsb25-08).

The ACSD-46192 patch fixes the issue with the `async/bulk/V1/configurable-products/bySku/options` endpoint. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.19 is installed. The patch ID is ACSD-46192. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.6 - 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.6 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
