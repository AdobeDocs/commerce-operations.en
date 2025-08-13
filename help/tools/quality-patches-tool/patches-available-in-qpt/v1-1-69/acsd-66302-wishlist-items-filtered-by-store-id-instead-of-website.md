---
title: 'ACSD-66302: Wishlist items filtered by store ID instead of website'
description: Apply the ACSD-66302 patch to fix the Adobe Commerce issue where wishlist items were not shared between store views within the same website in a GraphQL request.
feature: GraphQL
role: Admin, Developer
---

# ACSD-66302: Wishlist items filtered by store ID instead of website

The ACSD-66302 patch fixes the issue where wishlist items are incorrectly filtered by store ID instead of being filtered by website. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66302. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where wishlist items are incorrectly filtered by store ID instead of being filtered by website.

<u>Steps to reproduce</u>:

1. create a simple product
2. Create additional storeview
3. Go to Configurations -> Customers -> Wish List -> General Options -> Enable Multiple Wish Lists is set to Yes
4. Go to Configurations -> General -> Web -> Add Store Code to Urls is set to Yes
5. Create customer
6. Get Customer Auth Token via the GraphQL request
7. login as the customer
8. Choose default store and add product into wishlist
9. Change store view to test
10. You will see that product shared between stores in scope of the website (correct behavior)
11. Execute below GraphQL Query

```
{
  customer {
    wishlists {
      id
      name
      items_count
      items_v2 {
        items {
          id
          product {
            uid
            name
            sku
          }
        }
      }
    }
  }
}
```

12. Perform GraphQL request to wishlist on default store, returns correct details
13. Perform GraphQL request to wishlist on test store and no product is shown.

<u>Expected results</u>:

Product should be visible when store view changed because it's the same website

<u>Actual results</u>:

Product disappears from wishlist when store view changed

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.