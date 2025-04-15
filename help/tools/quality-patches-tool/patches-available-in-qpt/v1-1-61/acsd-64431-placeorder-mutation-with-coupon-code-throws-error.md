---
title: 'ACSD-64431: The "placeOrder" mutation with coupon code in the request throws an internal server error'
description: Apply the ACSD-64431 patch to fix the Adobe Commerce issue where the "placeOrder" mutation containing the coupon code information in the request throws an internal server error instead of placing the order successfully.
feature: GraphQL, Orders, Promotions/Events 
role: Admin, Developer
---

# ACSD-64431: The "placeOrder" mutation with coupon code in the request throws an internal error

The ACSD-64431 patch fixes the issue where the `placeOrder` mutation containing the coupon code information in the request throws an internal server error instead of placing the order successfully. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64431. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `placeOrder` mutation that contains the coupon code information in the request throws an internal error, instead of placing the order successfully.

<u>Steps to reproduce</u>:

1. Create a simple product with _SKU 2836611_.
1. Create a **[!UICONTROL Cart Price Rule]**, set **[!UICONTROL Coupon]** to `Specific Coupon` and enter _TEST1234_ as the coupon code.
1. Create a customer:

    ```
    mutation {
    createCustomer(
        input: {
        firstname: "John"
        lastname: "Doe"
        email: "john.doe@example.com"
        password: "b1b2b3l@w+"
        is_subscribed: true
        }
    ) {
        customer {
        firstname
        lastname
        email
        is_subscribed
        }
    }
    }
    ```

1. Generate a customer token. You can use this token for subsequent requests.

    ```
    mutation {
    generateCustomerToken(email: "john.doe@example.com", password: "b1b2b3l@w+") {
        token
    }
    }
    ```

1. Create an empty cart. Save the cart ID and use it for the subsequent requests.

    ```
    mutation {
        createEmptyCart
    } 
    ```    

1. Add the product to the cart:

    ```
    mutation {
        addProductsToCart(
            cartId: "xxxx"
            cartItems: [{ quantity: 1, sku: "2836611" }]
        ) {
            cart {
                itemsV2 {
                    items {
                        product {
                            name
                            sku
                        }
                        ... on ConfigurableCartItem {
                            configurable_options {
                                configurable_product_option_uid
                                value_label
                            }
                        }
                        quantity
                    }
                    total_count
                    page_info {
                        page_size
                        current_page
                        total_pages
                    }
                }
            }
            user_errors {
                code
                message
            }
        }
    }
    ```

1. Apply the coupon:

    ```
    mutation {
        applyCouponToCart(input: { cart_id: "xxxx", coupon_code: "TEST1234" }) {
            cart {
                itemsV2 {
                    items {
                        product {
                            name
                        }
                        quantity
                    }
                    total_count
                    page_info {
                        page_size
                        current_page
                        total_pages
                    }
                }
                applied_coupons {
                    code
                }
                prices {
                    grand_total {
                        value
                        currency
                    }
                }
            }
        }
    }
    ```

1. Set a shipping address:

    ```
    mutation {
        setShippingAddressesOnCart(
            input: {
                cart_id: "xxxxx"
                shipping_addresses: [
                    {
                        address: {
                            firstname: "John"
                            lastname: "Doe"
                            company: "Company Name"
                            street: ["3320 N Crescent Dr", "Beverly Hills"]
                            city: "Los Angeles"
                            region: "CA"
                            region_id: 12
                            postcode: "90210"
                            country_code: "US"
                            telephone: "123-456-0000"
                            save_in_address_book: false
                        }
                    }
                ]
            }
        ) {
            cart {
                shipping_addresses {
                    firstname
                    lastname
                    company
                    street
                    city
                    region {
                        code
                        label
                    }
                    postcode
                    telephone
                    country {
                        code
                        label
                    }
                    available_shipping_methods {
                        carrier_code
                        carrier_title
                        method_code
                        method_title
                    }
                }
            }
        }
    }
    ```

1. Set a shipping method:

    ```
    mutation {
        setShippingMethodsOnCart(
            input: {
                cart_id: "xxxx"
                shipping_methods: [{ carrier_code: "flatrate", method_code: "flatrate" }]
            }
        ) {
            cart {
                shipping_addresses {
                    selected_shipping_method {
                        carrier_code
                        carrier_title
                        method_code
                        method_title
                        amount {
                            value
                            currency
                        }
                    }
                }
            }
        }
    }
    ```

1. Set a billing address:

    ```
    mutation {
        setBillingAddressOnCart(
            input: {
                cart_id: "xxxx"
                billing_address: {
                    address: {
                        firstname: "John"
                        lastname: "Doe"
                        company: "Company Name"
                        street: ["64 Strawberry Dr", "Beverly Hills"]
                        city: "Los Angeles"
                        region: "CA"
                        region_id: 12
                        postcode: "90210"
                        country_code: "US"
                        telephone: "123-456-0000"
                        save_in_address_book: true
                    }
                }
            }
        ) {
            cart {
                billing_address {
                    firstname
                    lastname
                    company
                    street
                    city
                    region {
                        code
                        label
                    }
                    postcode
                    telephone
                    country {
                        code
                        label
                    }
                }
            }
        }
    }
    ```

1. Set a payment method:

    ```
    mutation {
        setPaymentMethodOnCart(
            input: { cart_id: "xxxx", payment_method: { code: "checkmo" } }
        ) {
            cart {
                selected_payment_method {
                    code
                }
            }
        }
    }
    ```

1. Place the order:

    ```
    mutation {
    placeOrder(
        input: {
        cart_id: "{{cart_id}}"
        }
    ) {
        orderV2 {
        number
        token
        }
        errors {
        message
        code
        }
    }
    }
    ```


<u>Expected results</u>:

The order should be placed.

<u>Actual results</u>:

The following error message appears:
    `"message": "Internal server error"` 

`exception.log` contains the following error:

```
    report.ERROR: "discount_model" value should be specifiedGraphQL (1:135)
    1: mutation { placeOrder(input: {cart_id: "xxxx"}) { orderV2 { total { discounts { amount { currency value } coupon { code } } } } errors { message code } } }
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Additional steps required after the patch installation

(This section is optional; there might be some steps required after applying the patch to fix the issue.) 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
