---
title: Best practices for configuring promotions
description: Learn best practices for configuring sales rules and coupon codes to optimize Commerce store performance
role: User
feature: Best Practices
feature-set: Commerce
---

# Best practices for configuring promotions

For best performance, follow these best practices to configure sales and promotions for items in a shopping cart:

- **Sales rules (cart price rules)**–Configure no more than 1000 cart price rules for all websites
  - Manage and remove unused rules.
  - Add strict rule conditions (like attribute or category filter) for the most efficient matching.
- **Coupons**—
  - Verify that the total number of coupons in the database is less than 250,000.
  - Remove unused and expired coupons.
  - Generate only the number of coupons needed to meet campaign requirements.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Potential performance impacts

Having more than the recommended maximum number of cart price rules or coupons can affect site performance in the following ways:

- Increased response time when products are added to the cart. 
- Increased time to load and render the minicart.
- Increased time to render the cart page.
- Increased time to render the **Totals** block on the Checkout page.
- Applying coupons can take more than 2 seconds.

## Additional information

- [Understanding marketing campaigns and promotions](https://devdocs.magento.com/cloud/configure/configure-best-practices.html#campaigns)
- [Cart Price Rules](https://experienceleague.adobe.com/docs/commerce-admin/marketing/promotions/cart-rules/price-rules-cart.html)
- [Tutorial: Create a cart price rule](https://experienceleague.adobe.com/docs/commerce-learn/tutorials/marketing/cart-price-rules.html)
- [Coupon codes](https://experienceleague.adobe.com/docs/commerce-admin/marketing/promotions/cart-rules/price-rules-cart-coupon.html)
- [Adobe Commerce on cloud infrastructure: Best Practices for store configuration](https://devdocs.magento.com/cloud/configure/configure-best-practices.html)
