---
title: 'MDVA-39993: Inventory changes done through API are not reflected on storefront'
description: The MDVA-39993 patch solves the issue where the inventory changes done through API are not reflected on the storefront. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-39993. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: REST, Inventory, Orders, Storefront
role: Admin
exl-id: 5fa13635-bd58-470b-a4d5-e50cda8a46e3
type: Troubleshooting
---
# MDVA-39993: Inventory changes done through API are not reflected on storefront

The MDVA-39993 patch solves the issue where the inventory changes done through API are not reflected on the storefront. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-39993. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.3.7-p2, and 2.4.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The inventory changes done through API are not reflected on the storefront product page.

<u>Prerequisites</u>:

Inventory modules installed.

<u>Steps to reproduce</u>:

1. Make sure the queue is set to execute with cron and cron is installed and running.
1. Create a configurable product (COC001), with two colors (Black and Red), and two sizes (M and L).
1. Make one option out of stock (COC001-Red-M).
1. Load the configurable product page on the storefront and try clicking on each color. When you click **Red**, the size **M** should be crossed out because it is out of stock.
1. Make COC001-Red-M in stock using the following API endpoint and the payload:

    ```json
    POST http://{domain}/rest/V1/inventory/source-items

    {
      "sourceItems": [
        {
          "sku": "COC001-Red-M",
          "source_code": "default",
          "quantity": 1000,
          "status": 1
        }
      ]
    }
    ```

1. Check this simple product from the backend and verify that it is updated to In Stock.
1. Load the configurable product from the frontend and click on each color. Notice the size **M** when you click on **Red**.

<u>Expected results</u>:

COC001-Red-M option is not crossed out because we have updated it to In Stock through API.

<u>Actual results</u>:

COC001-Red-M option is still crossed out, even though it is In Stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
