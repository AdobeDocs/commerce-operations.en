---
title: 'ACSD-57394: Incorrect product sorting by multiple sort attributes in [!DNL GraphQL]'
description: Apply the ACSD-57394 patch to fix the Adobe Commerce issue where products are incorrectly sorted when using multiple sort attributes in [!DNL GraphQL].
feature: GraphQL, Products
role: Admin, Developer
exl-id: f2e24daa-43a0-46b2-80b2-4e0ee116b776
---
# ACSD-57394: Incorrect product sorting by multiple sort attributes in [!DNL GraphQL]

The ACSD-57394 patch fixes the issue where products are incorrectly sorted when using multiple sort attributes in [!DNL GraphQL]. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-57394. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Products are incorrectly sorted when using multiple sort attributes in [!DNL GraphQL].

<u>Steps to reproduce</u>:

1. Create a few products with different prices and names.
1. Create a category and assign the created products to it.
1. Send a [!DNL GraphQL] products query for the created category with a few *sort* attributes. For example:
   
    ```
    {
    products(
      currentPage: 1
      pageSize: 10
      filter: {
        category_id: {
          eq :"3"
        }
      }
      sort: {  price: DESC, name: ASC, position: ASC
      }
    ){
    items{
      name
      sku
            
        price_range {
            minimum_price {
          
          regular_price {
            value
            currency
          }
          final_price {
            value
            currency
          }
          discount {
            amount_off
            percent_off
          }
                }
            }
       }
      }
     }
    ```

1. Check the response after creating *sort* attributes.

<u>Expected results</u>:

The products should be returned in the correct order. Sorting the products by multiple attributes should work.

<u>Actual results</u>:

The products are not returned in the correct order. Sorting the products by multiple attributes doesn't work.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.

