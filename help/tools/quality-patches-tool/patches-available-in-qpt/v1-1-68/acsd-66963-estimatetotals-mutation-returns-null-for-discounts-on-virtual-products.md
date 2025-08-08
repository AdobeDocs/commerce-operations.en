---
title: 'ACSD-66963: EstimateTotals mutation returns null for discounts on virtual products'
description: Apply the ACSD-66963 patch to fix the Adobe Commerce issue where `estimateTotals` returns *null* for discounts when a discount code is applied to a cart with only virtual products.
feature: GraphQL
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66963: EstimateTotals mutation returns null for discounts on virtual products

The ACSD-66963 patch fixes the issue where `estimateTotals` returns *null* for discounts when a discount code is applied to a cart with only virtual products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66963. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `estimateTotals` mutation returns *null* for discounts when a discount code is applied to a cart containing only virtual products.

<u>Steps to reproduce</u>:

1. Create a cart containing only virtual products.
1. Apply a discount code:

```
mutation {
  estimateTotals(
		input: {
			cart_id: "cart_id",
			address: {
				country_code: US,
				postcode: "78732"
				region: {
					region_code: "TX"
				}
			},
			shipping_method: {
				carrier_code: "{$shipping}",
				method_code: "{$shipping}"
			}
  	}
	) {
    cart {
      prices {
        discounts {
					amount {
						value
						currency
					}
					label
					coupon {
						code
					}
					applied_to
					type
				}
      }
    }
  }
}
```

<u>Expected results</u>:

Discount information is included for carts containing only virtual products.

```
{
    "data": {
        "estimateTotals": {
            "cart": {
                "prices": {
                    "discounts": [
                        {
                            "amount": {
                                "value": 100.5,
                                "currency": "USD"
                            },
                            "label": "A second discount code for testing",
                            "coupon": {
                                "code": "z3r0c00l"
                            },
                            "applied_to": "ITEM",
                            "type": null
                        }
                    ]
                }
            }
        }
    },
    "extensions": {}
}
```

<u>Actual results</u>:

Discount information returns as *null* for carts with only virtual products.

```
{
    "data": {
        "estimateTotals": {
            "cart": {
                "prices": {
                    "discounts": null
                }
            }
        }
    },
    "extensions": {}
}
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
