---
title: Checkout performance best practices
description: Learn how to optimize the performance of checkout experiences on your Adobe Commerce site.
feature: Best Practices, Orders
exl-id: dc2d0399-0d7f-42d8-a6cf-ce126e0b052d
---

# Checkout performance best practices

The [checkout](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/point-of-purchase/checkout/checkout-process) process in Adobe Commerce is a critical aspect of the storefront experience. It relies on the built-in [cart](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#shopping-cart) and [checkout](https://experienceleague.adobe.com/en/docs/commerce-admin/start/storefront/storefront#checkout-page) capabilities.

Performance is key in maintaining a good user experience. You can optimize checkout performance by configuring the following options for **high-throughput order processing**:

- [AsyncOrder](#asynchronous-order-placement)—Asynchronously processes orders using a queue.
- [Deferred Total Calculation](#deferred-total-calculation)—Defer calculations for order totals until checkout begins.
- [Inventory Check on Cart Load](#disable-inventory-check)—Choose to skip inventory validation of cart items.
- [Load balancing](#load-balancing)—Enable secondary connections for the MySQL database and Redis instance.

The AsyncOrder, Deferred Total Calculation, and Inventory Check on Cart Load configuration options all work independently. You can use all three features simultaneously or enable and disable the features in any combination.

>[!NOTE]
>
>Do not use custom PHP code to customize the built-in cart and checkout capabilities. In addition to potential performance issues, using custom PHP code can result in complex upgrades and maintenance challenges. These issues increase your total cost of ownership. If PHP-based cart and checkout customization is unavoidable, use [Adobe Commerce Marketplace](https://commercemarketplace.adobe.com/)-approved extensions only. All marketplace extensions are subject to [extensive review](https://developer.adobe.com/commerce/marketplace/guides/sellers/extension-quality-program/) to verify that they meet Adobe Commerce coding standards and best practices.

## Asynchronous order placement

The _Async Order_ module enables asynchronous order placement, which marks the order as `received`, places the order in a queue, and processes orders from the queue on a first-in-first-out basis. AsyncOrder is **disabled** by default.

For example, a customer adds a product to their shopping cart and selects **[!UICONTROL Proceed to Checkout]**. They fill out the **[!UICONTROL Shipping Address]** form, select their preferred **[!UICONTROL Shipping Method]**, select a payment method, and place the order. The shopping cart is cleared, the order is marked as **[!UICONTROL Received]**, but the Product quantity is not adjusted yet, nor is a sales email sent to the customer. The order is received, but the order details are not yet available because the order has not been fully processed. It remains in the queue until the `placeOrderProcess` consumer begins, verifies the order with the [inventory check](#disable-inventory-check) feature (enabled by default), and updates the order as follows:

- **Product available**—the order status changes to _Pending_, the product quantity is adjusted, an email with order details is sent to the customer, and the successful order details become available for viewing in the **Orders and Returns** list with actionable options, such as reorder.
- **Product out of stock or low supply**—the order status changes to _Rejected_, the Product quantity is not adjusted, an email with order details about the issue is sent to the customer, and the rejected order details become available in the **Orders and Returns** list with no actionable options.

Use the command-line interface to enable these features, or edit the `app/etc/env.php` file according to the corresponding README files defined in the [_Module Reference Guide_](https://developer.adobe.com/commerce/php/module-reference/).

**To enable AsyncOrder**:

You can enable AsyncOrder using the command-line interface:

```bash
bin/magento setup:config:set --checkout-async 1
```

The `set` command writes the following to the `app/etc/env.php` file:

```conf
...
   'checkout' => [
       'async' => 1
   ]
```

See [AsyncOrder](https://developer.adobe.com/commerce/php/module-reference/module-async-order/) in the _Module Reference Guide_.

**To disable AsyncOrder**:

>[!WARNING]
>
>Before disabling the AsyncOrder module, you must verify that _all_ asynchronous order processes are complete.

You can disable AsyncOrder using the command-line interface:

```bash
bin/magento setup:config:set --checkout-async 0
```

The `set` command writes the following to the `app/etc/env.php` file:

```conf
...
   'checkout' => [
       'async' => 0
   ]
```

### AsyncOrder compatibility

AsyncOrder supports a limited set of Adobe Commerce features.

| Category         | Supported Feature                                                        |
|------------------|--------------------------------------------------------------------------|
| Checkout types   | OnePage Checkout<br>Standard Checkout<br>B2B Negotiable Quote            |
| Payment methods  | Check/Money Order<br>Cash on Delivery<br>Braintree<br>PayPal PayFlow Pro |
| Shipping methods | All shipping methods are supported.                                      |

The following features are **not** supported by AsyncOrder, but continue to work synchronously:

- Payment Methods not included in the supported feature list
- Multi-Address Checkout
- Admin Order Creation

#### Web API support

When the AsyncOrder module is enabled, the following REST endpoints and GraphQL mutations run asynchronously:

**REST:**

- [`POST /V1/carts/mine/payment-information`](https://adobe-commerce.redoc.ly/2.4.7-admin/tag/cartsminepayment-information#operation/PostV1CartsMinePaymentinformation)
- [`POST /V1/guest-carts/{cartId}/payment-information`](https://adobe-commerce.redoc.ly/2.4.7-admin/tag/guest-cartscartIdpayment-information#operation/PostV1GuestcartsCartIdPaymentinformation)
- [`POST /V1/negotiable-carts/{cartId}/payment-information`](https://adobe-commerce.redoc.ly/2.4.7-admin/tag/negotiable-cartscartIdpayment-information#operation/PostV1NegotiablecartsCartIdPaymentinformation)

**GraphQL:**

- [`placeOrder`](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/place-order/)
- [`setPaymentMethodAndPlaceOrder`](https://developer.adobe.com/commerce/webapi/graphql/schema/cart/mutations/set-payment-place-order/)

>[!INFO]
>
>GraphQL does not support placing negotiable quote orders asynchronously.

#### Excluding payment methods

Developers can explicitly exclude certain payments methods from asynchronous order placement by adding them to the `Magento\AsyncOrder\Model\OrderManagement::paymentMethods` array. Orders that use excluded payment methods are processed synchronously.

### Negotiable Quote Async Order

The _Negotiable Quote Async Order_ B2B module enables you to save order items asynchronously for the `NegotiableQuote` functionality. You must have AsyncOrder and NegotiableQuote enabled.

## Deferred Total Calculation

The _Deferred Total Calculation_ module optimizes the checkout process by deferring the total calculation until it is requested for the shopping cart or during the final checkout steps. When enabled, only the subtotal calculates as a customer adds products to the shopping cart.

Deferred Total Calculation is **disabled** by default. Use the command-line interface to enable these features, or edit the `app/etc/env.php` file according to the corresponding README files defined in the [_Module Reference Guide_](https://developer.adobe.com/commerce/php/module-reference/).

**To enable DeferredTotalCalculation**:

You can enable DeferredTotalCalculation using the command-line interface:

```bash
bin/magento setup:config:set --deferred-total-calculating 1
```

The `set` command writes the following to the `app/etc/env.php` file:

```conf
...
   'checkout' => [
       'deferred_total_calculating' => 1
   ]
```

**To disable DeferredTotalCalculation**:

You can disable DeferredTotalCalculation using the command-line interface:

```bash
bin/magento setup:config:set --deferred-total-calculating 0
```

The `set` command writes the following to the `app/etc/env.php` file:

```conf
...
   'checkout' => [
       'deferred_total_calculating' => 0
   ]
```

See [DeferredTotalCalculating](https://developer.adobe.com/commerce/php/module-reference/module-deferred-total-calculating/) in the _Module Reference Guide_.

### Fixed Product Tax

When Deferred Total Calculation is enabled, the Fixed Product Tax (FPT) is not included in the product price and cart subtotal of the mini cart after adding the product to the shopping cart. The FPT calculation is deferred when adding a product to the mini cart. The FPT displays correctly in the shopping cart after proceeding to final checkout.

## Disable Inventory check

The _Enable Inventory On Cart Load_ global setting determines whether to perform an inventory check when loading a product in the cart. Disabling the inventory check process improves performance for all checkout steps, particularly when dealing with bulk products in the cart.

When disabled, inventory check does not occur when adding a product to the shopping cart. If this inventory check is skipped, some out-of-stock scenarios could throw other types of errors. An inventory check _always_ occurs at the order placement step, even when disabled.

**Enable Inventory Check On Cart Load** is enabled (set to Yes) by default. To disable the inventory check when loading the cart, set **[!UICONTROL Enable Inventory Check On Cart Load]** to `No` in the Admin UI **Stores** > **Configuration** > **Catalog** > **Inventory** > **Stock Options** section. See [Configure Global Options](https://experienceleague.adobe.com/en/docs/commerce-admin/inventory/configuration/global-options) and [Catalog Inventory](https://experienceleague.adobe.com/en/docs/commerce-admin/inventory/guide-overview) in the _User Guide_.

## Load balancing

You can help balance the load across different nodes by enabling secondary connections for the MySQL database and Redis instance.

Adobe Commerce can read multiple databases or Redis instances asynchronously. If you are using Commerce on cloud infrastructure, you can configure the secondary connections by editing the [MYSQL_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy#mysql_use_slave_connection) and [REDIS_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy#redis_use_slave_connection) values in the `.magento.env.yaml` file. Only one node needs to handle read-write traffic, so setting the variables to `true` results in creating a secondary connection for read-only traffic. Set the values to `false` to remove any existing read-only connection array from the `env.php` file.

Example of the `.magento.env.yaml` file:

```yaml
stage:
  deploy:
    MYSQL_USE_SLAVE_CONNECTION: true
    REDIS_USE_SLAVE_CONNECTION: true
```
