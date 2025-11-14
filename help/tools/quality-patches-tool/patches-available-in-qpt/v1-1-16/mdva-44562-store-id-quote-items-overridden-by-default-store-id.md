---
title: 'MDVA-44562: Store id for quote items overridden by default store id'
description: The MDVA-44562 patch fixes the issue where the default store id overrides the store id for quote items for GraphQL requests. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44562. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Quotes
role: Admin
exl-id: 007a82f7-4bc9-4a51-8b18-05f6c0867ea7
type: Troubleshooting
---
# MDVA-44562: Store id for quote items overridden by default store id

The MDVA-44562 patch fixes the issue where the default store id overrides the store id for quote items for GraphQL requests. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44562. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The store id for quote items is overridden by the default store id for GraphQL requests.

<u>Steps to reproduce</u>:

1. Create a new store view.
1. Create a new simple product with different names per store view.
1. Create a new customer.
1. Obtain the customer authorization token.

    ```GraphQL
     POST /rest/all/V1/integration/customer/token
     {
       "username": "test@example.com",
       "password": "password"
      }
    ```

1. Create a new quote for the customer using the authorization token.

    ```GraphQL
    POST rest/default/V1/carts/mine
    ```

1. Add a product to the cart.

    ```GraphQL
    POST /rest/default/V1/carts/mine/items
    {
      "cartItem": {
        "sku": "simple1",
        "qty": 1,
        "quote_id": "1"
      }
    }
    ```

1. Get the cart content for the default store view.

    ```GraphQL
    GET rest/default/V1/carts/mine/
    ```

1. Get the cart content for the new store view.

    ```GraphQL
    GET rest/<store_view_2>/V1/carts/mine/
    ```

<u>Expected results</u>:

Response from the new store view shows the product name from the new store view.

<u>Actual results</u>:

Response from the new store view shows the product name setup under the default store view.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
