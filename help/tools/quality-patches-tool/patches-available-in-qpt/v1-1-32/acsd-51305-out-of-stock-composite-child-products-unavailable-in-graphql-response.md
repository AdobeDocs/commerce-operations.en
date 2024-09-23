---
title: 'ACSD-51305: Out-of-stock composite child products unavailable in GraphQL response'
description: Apply the ACSD-51305 patch to fix the Adobe Commerce issue where out-of-stock composite child products are not available in the GraphQL response.
exl-id: 0f33eb62-dfd3-4d07-b095-9ee6e9983c4d
feature: Categories, GraphQL, Orders, Products
role: Admin
---
# ACSD-51305: Out-of-stock composite child products unavailable in GraphQL response

The ACSD-51305 patch fixes the issue where out-of-stock composite child products are not available in the GraphQL response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.32 is installed. The patch ID is ACSD-51305. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Out-of-stock composite child products are not available in the GraphQL response.

<u>Steps to reproduce</u>:

1. Log in to the Admin website.
1. Create a category (cat1, id=3).
1. Create a *simple1* product (out of stock, not visible individually, assigned to *cat1*).
1. Create a *simple2* product (in stock, not visible individually, assigned to *cat1*).
1. Create a *bundle1* product with *simple1* and *simple2* child products as radio-button *option1* products and assign it to the *cat1* category.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL System]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Inventory]**. 

    * Set **[!UICONTROL Display Out of Stock Products]** to *Yes*.

1. Open the *bundle1* product on the storefront, and ensure that both *simple1* and *simple2* child products are displayed inside it.
1. Run the following GraphQL query:

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

The **[!UICONTROL Product]** section inside the **[!UICONTROL Options]** block is not empty.

<u>Actual results</u>:

The **[!UICONTROL Product]** section inside the **[!UICONTROL Options]** block is empty.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
