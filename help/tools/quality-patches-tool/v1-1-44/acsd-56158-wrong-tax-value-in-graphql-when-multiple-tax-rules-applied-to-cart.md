---
title: 'ACSD-56158: Wrong tax value in GraphQL response when multiple tax rules applied to cart'
description: Apply the ACSD-56158 patch to fix the Adobe Commerce issue where the tax value rendering in the GraphQL response is incorrect when multiple tax rules are applied to the cart.
feature: GraphQL, Taxes
role: Admin, Developer
exl-id: 0f030b35-372f-46ce-8f67-29e4b6dd3527
---
# ACSD-56158: Wrong tax value in GraphQL response when multiple tax rules applied to cart

The ACSD-56158 patch fixes the issue where the tax value rendering in the GraphQL response is incorrect when multiple tax rules are applied to the cart. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.44 is installed. The patch ID is ACSD-56158. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5-p5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The tax value rendering in the GraphQL response is incorrect when multiple tax rules are applied to the cart.

<u>Steps to reproduce</u>:

1. Create a customer with a US address.
1. Navigate to the Admin Panel.
1. Create a product with a price of $100.
1. Create two tax rates for the US address: one for 10% and the other for 5%.
1. Configure two tax rules for USA from **[!UICONTROL Stores]** > **[!UICONTROL Taxes]** > **[!UICONTROL Tax Rule]**.
1. Assign one tax rate to one rule.
1. From the frontend, log in as the customer with the US address, and add the product to the cart.
1. Generate a customer token via GraphQL.
1. Generate a cart ID via GraphQL.
1. Check that the tax applied is correct by getting the customer's cart via GraphQL:

    ```GraphQL
    {
        cart(cart_id: "o3Yqt6zkn8ncOzFxGnR1IWdT..") {
            id
            email
            billing_address {
                city
                country {
                    code
                    label
                }
                firstname
                lastname
                company
                postcode
                vat_id
                region {
                    code
                    label
                }
                street
                telephone
            }
            shipping_addresses {
                firstname
                lastname
                company
                street
                city
                postcode
                vat_id
                region {
                    code
                    label
                }
                country {
                    code
                    label
                }
                telephone
                available_shipping_methods {
                    amount {
                        currency
                        value
                    }
                    available
                    carrier_code
                    carrier_title
                    error_message
                    method_code
                    method_title
                    price_excl_tax {
                        value
                        currency
                    }
                    price_incl_tax {
                        value
                        currency
                    }
                }
                selected_shipping_method {
                    amount {
                        value
                        currency
                    }
                    carrier_code
                    carrier_title
                    method_code
                    method_title
                }
            }
            available_payment_methods {
                code
                title
            }
            selected_payment_method {
                code
                title
            }
            applied_coupons {
                code
            }
            prices {
                grand_total {
                    value
                    currency
                }
                subtotal_excluding_tax {
                    value
                    currency
                }
                subtotal_including_tax {
                    value
                    currency
                }
                applied_taxes {
                    label
                    amount {
                        currency
                        value
                    }
                }
            }
        }
    }    
    ```

<u>Expected results</u>:

Each tax rate shows its own tax amount:

```
"applied_taxes": [
    {
        "label": "US-CA-*-Rate 1",
        "amount": {
            "currency": "USD",
            "value": 10
        }
    },
    {
        "label": "US-CA-*-Rate 2",
        "amount": {
            "currency": "USD",
            "value": 5
        }
    }
]
```

<u>Actual results</u>:

Total tax amount returned for each rule:

```
"applied_taxes": [
    {
        "label": "US-CA-*-Rate 1",
        "amount": {
            "currency": "USD",
            "value": 15
        }
    },
    {
        "label": "US-CA-*-Rate 2",
        "amount": {
            "currency": "USD",
            "value": 15
        }
    }
]
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
