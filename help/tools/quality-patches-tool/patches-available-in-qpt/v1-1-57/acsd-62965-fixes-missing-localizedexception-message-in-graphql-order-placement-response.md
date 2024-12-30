---
title: 'ACSD-62965: Fixes missing 'LocalizedException' message in GraphQL order placement response'
description: Apply the ACSD-62965 patch to fix the Adobe Commerce issues where the `LocalizedException` message was not included in the GraphQL response during order placement.
feature: Orders, GraphQL
role: Admin, Developer
---
# ACSD-62965: Fixes missing `LocalizedException` message in GraphQL order placement response

The ACSD-62965 patch fixes the issue where the `LocalizedException` message was not included in the GraphQL response during order placement. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57. The patch ID is ACSD-62965. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The GraphQL response for order placement does not include a `LocalizedException` message, resulting in insufficient error details for debugging.

<u>Steps to reproduce</u>:

1. Install a clean **[!DNL Adobe Commerce]** instance.
1. Add a product to the cart and proceed to the order placement step.
1. Add a `LocalizedException` to `Magento\Framework\Exception\LocalizedException` in `app/code/Magento/QuoteGraphQl/Model/Resolver/PlaceOrder.php`.
1. Insert the exception after the following line:

    ```
    $cart = $this->getCartForCheckout->execute($maskedCartId, $userId, $storeId);
    ```
    
    Add the exception:

    ```
    throw new LocalizedException(new Phrase("Test LocalizedException"));
    ```

1. Execute the place order GraphQL mutation:

    ```
    mutation {
    placeOrder(input: {cart_id: "cart_id"}) {
        order {
        order_number
        }
    }
    }
    ```

1. Observe the response:
    1. The response does not include the `LocalizedException` message.
    1. Example of the incorrect response:

        ```
        {
        "data": {
            "placeOrder": {
            "order": null
            }
        }
        }
        ```

<u>Expected results</u>:

If a `LocalizedException` occurs, the exception message should be included in the order placement GraphQL response for improved error handling.

<u>Actual results</u>:

If a `LocalizedException` occurs, the exception message is not get included in the order place GraphQL response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
