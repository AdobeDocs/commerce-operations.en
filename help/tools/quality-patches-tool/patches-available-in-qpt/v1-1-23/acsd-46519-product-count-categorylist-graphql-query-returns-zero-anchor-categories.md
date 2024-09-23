---
title: 'ACSD-46519: [!UICONTROL product_count] in [!UICONTROL categoryList] [!DNL GraphQL] query returns 0 for anchor categories'
description: Apply the ACSD-46519 patch to fix the Adobe Commerce issue where when you use the [!UICONTROL categoryList] [!DNL GraphQL] method to get child categories it shows the [!UICONTROL product_count] as 0 for parent categories.
exl-id: b71be3e6-6235-4e96-848b-d61eda973d98
feature: Categories, GraphQL, Products
role: Admin
---
# ACSD-46519: [!UICONTROL product_count] in [!UICONTROL categoryList] [!DNL GraphQL] query returns 0 for anchor categories

The ACSD-46519 patch solves the issue where the [!UICONTROL product_count] in [!UICONTROL categoryList] [!DNL GraphQL] query returns 0 for anchor categories. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.23 is installed. The patch ID is ACSD-46519. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When the [!UICONTROL categoryList] [!DNL GraphQL] method is used to get child categories it shows the [!UICONTROL product_count] as 0 for parent categories.

<u>Steps to reproduce</u>:

1. Use the following [!DNL GraphQL] request to get the category hierarchy with [!UICONTROL product_count]:

<pre><code>
{
  categoryList(filters: { ids: { eq: "2" } }) {
    id
    name
    product_count
    level
    children {
      name
      product_count
      level
      children {
        name
        product_count
        level
        children {
          name
          product_count
          level
          children {
            name
            product_count
            level
          }
        }
      }
    }
  }
}
</code></pre>

<u>Expected results</u>:

If the parent category is an anchored category, then the [!UICONTROL product_count] should show the sum of child category product counts on every level.

<u>Actual results</u>:

If the parent category is an anchored category, then the products are shown as 0 for category level 2 and downwards.

<pre><code>
{
    "data": {
        "categoryList": [
            {
                "id": 2,
                "name": "Default Category",
                "product_count": 186,
                "level": 1,
                "children": [
                    {
                        "name": "What's New",
                        "product_count": 0,
                        "level": 2,
                        "children": []
                    },
                    {
                        "name": "Women",
                        "product_count": 0,
                        "level": 2,
                        "children": [
                            {
                                "name": "Tops",
                                "product_count": 0,
                                "level": 3,
                                "children": []
                            },
                            {
                                "name": "Bottoms",
                                "product_count": 0,
                                "level": 3,
                                "children": []
                            }
                        ]
                    },
                    ...
                ]
            }
        ]
    }
}
</code></pre>

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
