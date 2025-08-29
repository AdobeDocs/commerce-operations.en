---
title: 'ACSD-66302: Wishlist items filtered by store ID instead of website'
description: Apply the ACSD-66302 patch to fix the Adobe Commerce issue where wishlist items being filtered by store ID instead of website in [!DNL GraphQL] requests.
feature: GraphQL
role: Admin, Developer
type: Troubleshooting
exl-id: c1a9eadc-0321-4f5c-ba82-533286a1f24f
---
# ACSD-66302: Wishlist items filtered by store ID instead of website

The ACSD-66302 patch fixes the issue where wishlist items being filtered by store ID instead of website in [!DNL GraphQL] requests. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-66302. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Wishlist items are incorrectly filtered by store ID instead of by website.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Create an additional storeview.
1. In Admin, go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Wish List]** > **[!UICONTROL General Options]**, and set **[!UICONTROL Enable Multiple Wish Lists]** to `Yes`.
1. Go to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL Web]** > **[!UICONTROL Url Options]**, and set **[!UICONTROL Add Store Code to Urls]** to `Yes`.
1. Create a customer account.
1. Use a [!DNL GraphQL] request to retrieve the customer auth token.
1. Login as the customer.
1. Select the **[!UICONTROL Default Store View]** and add the product to the wishlist.
1. Switch store view to *test*.
1. Confirm that the product still appears in the wishlist (correct behavior).
1. Execute the following [!DNL GraphQL] query:

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

1. Perform the query on the default store – the product appears as expected.
1. Perform the same query on the test store – the product does not appear.

<u>Expected results</u>:

Product should be visible across all store views within the same website via [!DNL GraphQL] queries.

<u>Actual results</u>:

Product disappears from wishlist when switching store views.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
