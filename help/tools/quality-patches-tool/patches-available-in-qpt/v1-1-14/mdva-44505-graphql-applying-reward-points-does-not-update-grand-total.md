---
title: 'MDVA-44505: GraphQL query for cart applying reward points does not update grand total'
description: The MDVA-44505 patch solves the issue where the GraphQL query for a cart applying reward points does not consider the reward points and returns an incorrect grand total. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-44505. Please note that the issue was fixed in Adobe Commerce 2.4.3.
feature: GraphQL, Orders, Rewards, Shopping Cart
role: Admin
exl-id: 543698d8-8963-4bf7-af82-11c2498e882e
type: Troubleshooting
---
# MDVA-44505: GraphQL query for cart applying reward points does not update grand total

The MDVA-44505 patch solves the issue where the GraphQL query for a cart applying reward points does not consider the reward points and returns an incorrect grand total. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.14 is installed. The patch ID is MDVA-44505. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The GraphQL query for a cart applying reward points does not consider the reward points and returns an incorrect grand total.

<u>Steps to reproduce</u>:

1. Configure reward points.
1. Create a cart and apply some reward points.
1. Call the `GetCart` query from the `GraphQL` endpoint and retrieve your cart:

    ```GraphQL
    query {
      cart(cart_id: "{CART_ID}") {
        prices {
          discounts {
            amount {
              value
            }
          }
          grand_total {
            value
          }
        }
      }
    }
    ```
    
1. Check the grand total entry.
1. Now check the customer's cart total using rest API (`/rest/V1/carts/mine/totals`).

<u>Expected results</u>:

The GraphQL query for the cart returns the correct grand total which considers the reward points.

<u>Actual results</u>:

The GraphQL query does not consider the reward points and returns an incorrect grand total.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
