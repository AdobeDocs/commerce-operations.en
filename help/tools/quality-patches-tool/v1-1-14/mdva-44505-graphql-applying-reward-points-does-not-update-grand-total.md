---
title: 'MDVA-44505: GraphQL query for cart applying reward points does not update grand total'
description: The MDVA-44505 patch solves the issue where the GraphQL query for a cart applying reward points does not consider the reward points and returns an incorrect grand total. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-44505. Please note that the issue was fixed in Adobe Commerce 2.4.3.
exl-id: 724273ba-b020-4dba-88ae-94968bbd83de
feature: GraphQL, Orders, Rewards, Shopping Cart
role: Admin
---
# MDVA-44505: GraphQL query for cart applying reward points does not update grand total

The MDVA-44505 patch solves the issue where the GraphQL query for a cart applying reward points does not consider the reward points and returns an incorrect grand total. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-44505. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
