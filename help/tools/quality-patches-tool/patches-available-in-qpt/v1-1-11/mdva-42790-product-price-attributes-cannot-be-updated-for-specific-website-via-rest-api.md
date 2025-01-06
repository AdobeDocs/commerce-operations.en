---
title: 'MDVA-42790: Product price attributes cannot be updated for specific website via REST API'
description: The MDVA-42790 patch fixes the issue where users are not able to update product price attributes for specific websites via REST API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-42790. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: REST, Attributes, Orders, Products
role: Admin
exl-id: bb8dc764-d2d5-4e00-884a-2b4c1a567f58
---
# MDVA-42790: Product price attributes cannot be updated for specific website via REST API

The MDVA-42790 patch fixes the issue where users are not able to update product price attributes for specific websites via REST API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-42790. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are not able to update product price attributes for specific websites via REST API.

<u>Steps to reproduce</u>:

1. In the Admin go to **Stores** > **Configuration** > **Catalog** > **Price** > and set **Catalog Price Scope** to Website.
1. Update special price for a bundled product using REST API, `POST rest/V1/products/`.

    ```JSON
    {
      "product": {
        "id": 46,
        "sku": "24-WG080",
        "name": "Sprite Yoga Companion Kit",
        "attribute_set_id": 4,
        "price": 10,
        "status": 1,
        "visibility": 1,
        "type_id": "bundle",
        "weight": 0,
        "custom_attributes": [
          {
            "attribute_code": "special_price",
            "value": "2"
          }
        ]
      }
    }
    ```
    
<u>Expected results</u>:

Special price is updated for the bundled product when the **Catalog Price Scope** is set to Website.

<u>Actual results</u>:

Special price is not updated for the bundled product when the **Catalog Price Scope** is set to Website.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
