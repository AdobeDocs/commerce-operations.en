---
title: "ACSD-60538: Attributes don't show correctly if product is disabled in [!UICONTROL All Store Views]"
description: Apply the ACSD-60538 patch to fix the Adobe Commerce issue where if a product is disabled in *All Store Views* and enabled only in specific store view scopes, the product attributes don't show correctly in the GraphQL response, leading to the product not being displayed properly.
feature: Attributes, GraphQL
role: Admin, Developer
exl-id: 2ea9de11-b750-4ab6-9cc7-e940e1791f22
---
# ACSD-60538: Attributes don't show correctly if product is disabled in *[!UICONTROL All Store Views]*

The ACSD-60538 patch fixes the issue where if a product is disabled in *[!UICONTROL All Store Views]* and enabled only in specific store view scopes, the product attributes don't show correctly in the GraphQL response, leading to the product not being displayed properly. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.51 is installed. The patch ID is ACSD-60538. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

If a product is disabled in *[!UICONTROL All Store Views]* and enabled only in specific store view scopes, the product attributes don't show correctly in the GraphQL response, leading to the product not being displayed properly.

<u>Prerequisites</u>:

Inventory module is installed.

<u>Steps to reproduce</u>:

1. Create a configurable product with the *color* attribute and three child products (*blue*, *black*, and *brown*).
1. Disable two associated child products (*blue* and *black*) on the *[!UICONTROL All Store Views]* scope.
1. Go to **[!UICONTROL Store View]** scope.
1. Enable child products (*blue* and *black*) on *[!UICONTROL Store View]* scope. 
1. Run the below GraphQL request:

    ```GraphQL
    {
      products(filter: { sku: { eq: "SKU" } }) {
        items {
            ... on ConfigurableProduct {
              configurable_options {
                attribute_id,
                attribute_code,
             values {
              value_index
              label
            }
        }
        variants {
          product {
            sku
          }
          attributes {
            label
            code
            value_index
           }
          }
         }
        }
       }
      }  
    ```

<u>Expected results</u>:

GraphQL response includes the attribute values for the child associated product that is disabled on *[!UICONTROL All Store Views]* and enabled on the *[!UICONTROL Store View]* scope.

<u>Actual results</u>:

GraphQL response has empty attribute values for the child associated product when the product is disabled on *[!UICONTROL All Store Views]* and enabled on the *[!UICONTROL Store View]* scope.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
