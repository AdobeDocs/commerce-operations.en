---
title: 'ACSD-50794: Cannot remove gift wrapping from customer order via GraphQL'
description: Apply the ACSD-50794 patch to fix the Adobe Commerce issue where users cannot remove gift wrapping from the customer order via GraphQL.
exl-id: 4983910c-9ea0-451e-a2b6-81485184bbce
feature: Gift, GraphQL, Orders
role: Admin
---
# ACSD-50794: Cannot remove gift wrapping from customer order via GraphQL

The ACSD-50794 patch fixes the issue where users cannot remove gift wrapping from the customer order via GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.32 is installed. The patch ID is ACSD-50794. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Users cannot remove gift wrapping from the customer order via GraphQL.

<u>Steps to reproduce</u>:

1. Create a customer from the frontend.
1. Create a simple product.
1. Enable *[!UICONTROL Gift Messages]* by going to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Gift Options]** and set *[!UICONTROL Allow Gift Messages]* = *[!UICONTROL Yes]*.
1. Create *[!UICONTROL Gift Wrapping]* by going to **[!UICONTROL Stores]** > **[!UICONTROL Other Settings]** > **[!UICONTROL Gift Wrapping]**.
1. Get customer token.
1. Create an empty cart, customerCart.
    * Add products to the cart: `addProductsToCart` mutation
    * Set billing address: `setBillingAddressOnCart` mutation
    * Set shipping address: `setShippingAddressesOnCart` mutation
    * Set shipping method: `setShippingMethodsOnCart` mutation (flatrate)
    * Set payment method: `setPaymentMethodOnCart` mutation (checkmo)
1. Now check the gift wrapping *Uid* with this cart query: 

    <pre><code class="language-GraphQL">
    {
      cart(cart_id: "{{CART_ID}}") {
        available_gift_wrappings{
            uid
        }
    }
    }
    </code></pre>
    
1. Set gift wrap using `setGiftOptionsOnCart`.
1. Check the cart: cart query.
1. Unset gift wrap using `setGiftOptionsOnCart` (set value to null).
1. Again, check the cart: cart query.
1. Place order: `placeOrder` mutation.
1. Run customer query: customer.

    <pre><code class="language-graphql">
    query {
      customer {
        firstname
        middlename
        lastname
        suffix
        email
        orders {
            items {
                order_date
                gift_wrapping {
                    design
                    uid
                }
            }
        }
        addresses {
          firstname
          middlename
          lastname
          street
          city
          region {
            region_code
            region
          }
          postcode
          country_code
          telephone
        }
      }
    }
    </code></pre>

<u>Expected results</u>:

Once a user sets a gift wrap and unsets it, the customer query returns null.

<u>Actual results</u>:

Customer query still returns gift wrapping as applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
