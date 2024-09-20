---
title: 'ACSD-47292: out-of-stock bundled products are not available in GraphQL response'
description: Apply the ACSD-47292 patch to fix the Adobe Commerce issue where the out-of-stock bundled products are not available in the GraphQL response even if the "show out-of-stock products" is set to Yes.
exl-id: 377dc62f-d1cd-4292-b25d-53c498b772a9
feature: Admin Workspace, Categories, GraphQL, Orders, Products
role: Admin
---
# ACSD-47292: out-of-stock bundled products are not available in GraphQL response

The ACSD-47292 patch fixes the issue where the out-of-stock bundled products are not available in the GraphQL response even if the [!UICONTROL Display Out-of-Stock Products] is set to *[!UICONTROL Yes]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.25 is installed. The patch ID is ACSD-47292. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The out-of-stock bundled products are not available in the GraphQL response even if the [!UICONTROL Display Out-of-Stock Products] is set to *[!UICONTROL Yes]*.

<u>Steps to reproduce</u>:

1. Go to the Adobe Commerce Admin > **[!UICONTROL System]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]** and set the [!UICONTROL Display Out-of-Stock Products] to *[!UICONTROL Yes]*.
1. Create two simple products, s1 and s2. 
1. Make s1 out-of-stock and not visible individually and s2 in-stock and not visible individually, and assign them to a category.
1. Create a bundled product with at least one option product and assign s1 and s2 to this option (input type "RadioButton").
1. Save the bundled product and assign it to a category.
1. Go to the storefront and open this bundled product. You will see the out-of-stock option s1 is greyed but visible.
1. Send a GraphQL request:

```GraphQL
{
  categoryList(filters: { ids: { in: ["3"] } }) {
    id
    name
    products(pageSize: 8, sort: { position: ASC }) {
      total_count
      items {
        id
        sku
        name
        ... on BundleProduct {
          url_key
          items {
            title
            sku
            options {
              quantity
              position
              is_default
              product {
                id
                name
                sku
              }
            }
          }
        }
      }
    }
  }
}
```

<u>Expected results</u>:

s1 bundle option is listed in the GraphQL response since [!UICONTROL Display Out-of-Stock Products] is set to *[!UICONTROL Yes]*, and it is visible on the storefront.

<u>Actual results</u>:

s1 bundle option is not listed in the GraphQL response.

```GraphQL
"items": [
                                {
                                    "title": "oo1",
                                    "sku": "bundle2",
                                    "options": [
                                        {
                                            "quantity": 1,
                                            "position": 2,
                                            "is_default": false,
                                            "product": {
                                                "id": 2,
                                                "name": "s2",
                                                "sku": "s2"
                                            }
                                        }
                                    ]
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
