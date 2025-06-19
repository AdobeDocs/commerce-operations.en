---
title: 'MDVA-43102: Salable quantity not updated correctly'
description: The MDVA-43102 patch fixes the issue where the salable quantity is not updated correctly when a refund is done via REST API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43102. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Variables
role: Admin
exl-id: 6a10f586-bbde-4252-9b8e-9b2b712f0fb3
type: Troubleshooting
---
# MDVA-43102: Salable quantity not updated correctly

The MDVA-43102 patch fixes the issue where the salable quantity is not updated correctly when a refund is done via REST API. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-43102. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.1 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Salable quantity is not updated correctly when a refund is done using REST API.

<u>Steps to reproduce</u>:

1. Add an item to the cart.
1. Check the Stock Qty and Salable Qty.
1. Create an order.
1. Create an invoice if needed.
1. Submit a REST request to refund the invoice using the following payload:

    * offline method/order/`<order_id>`/refund
    * online method/invoice/`<invoice_id>`/refund

    ```rest
    {
      "items": [
      {
        "order_item_id": <order_item_id>,
        "qty": 1
      }
      ],
      "notify": true,
      "arguments": {
        "shipping_amount": 5,
        "extension_attributes": {
          "return_to_stock_items": [
          <order_item_id>
          ]
        }
      }
    }
    ```

1. Do not ship the items.
1. Compare the Stock Qty and the Salable Qty from before. They should both be updated by the same amount.

<u>Expected results</u>:

Salable quantity is updated correctly when a refund is issued before shipping the order, and the product is returned to the stock.

<u>Actual results</u>:

Salable quantity is not updated when a refund is issued before shipping the order, and the product is returned to the stock.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
