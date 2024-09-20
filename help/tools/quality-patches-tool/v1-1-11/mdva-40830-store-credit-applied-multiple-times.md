---
title: 'MDVA-40830: Store credit applied multiple times during order'
description: The MDVA-40830 patch fixes the issue where the store credit is applied multiple times during order placement. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.11 is installed. The patch ID is MDVA-40830. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 218a100a-4500-4ef5-bbdb-fbbd12f2fa26
feature: Orders, Returns
role: Admin
---
# MDVA-40830: Store credit applied multiple times during order

The MDVA-40830 patch fixes the issue where the store credit is applied multiple times during order placement. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.11 is installed. The patch ID is MDVA-40830. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.3.7-p2, 2.4.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The store credit is applied multiple times during order placement.

<u>Steps to reproduce</u>:

1. Create a customer and add store credit to the customer account.
1. Add a simple product to the cart.
1. Set shipping address and billing address for the cart.
1. Check the cart's grand_total.
1. Apply store credit to the cart using the following GraphQL request:

<pre>
<code class="language-graphql">
mutation {
  applyStoreCreditToCart(
    input: { cart_id: "%cartId%" }
  ) {
    cart {
      prices {
        grand_total {
          currency
          value
        }
      }
      applied_store_credit {
        applied_balance {
          currency
          value
        }
        current_balance {
          currency
          value
        }
      }
    }
  }
}
</code>
</pre>

<u>Expected results</u>:

The value of applied_store_credit is applied accurately, and cart totals are correctly reflected in the API response.

<u>Actual results</u>:

The value of applied_store_credit is applied twice, affecting both the cart and grand_total.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
