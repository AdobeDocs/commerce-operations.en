---
title: 'ACSD-62355:  Improves configurable product edit performance in Adobe Commerce'
description: Apply the ACSD-62355 patch to fix the Adobe Commerce issue where the configurable product edit page experiences slow loading when the product is based on numerous attributes with many values.
feature: Admin Workspace
role: Admin, Developer
exl-id: cd934aa9-901a-4f03-ab83-716131e6bd85
type: Troubleshooting
---
# ACSD-62355: Improves configurable product edit performance in Adobe Commerce

The ACSD-62355 patch fixes the issue of slow loading times and high memory consumption on the configurable product edit page when the product has many attributes with numerous values. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62355. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The configurable product edit page takes a long time to load when the configurable product is based on multiple attributes with many values, causing delays and potential timeout or memory limit issues.

<u>Steps to reproduce</u>:

1. Create 9 new attributes in the default attribute set, each is [!UICONTROL Filterable] and has [!UICONTROL Scope]: [!UICONTROL Global].
    * Attribute 1: 50 options
    * Attribute 2: 20 options
    * Attribute 3: 10 options
    * Attribute 4: 5 options
    * Attribute 5: 5 options
    * Attribute 6: 5 options
    * Attribute 7: 5 options
    * Attribute 8: 3 options
    * Attribute 9: 2 options

1. Create 9 simple products with combinations of options from the newly created attributes.
   * Product 1: First option from each attribute
   * Product 2: Second option from each attribute
   * Product 3: Third option from each attribute
   * Product 4: Fourth option from each attribute
   * If an attribute has fewer options than the number of products, assign the remaining products to random options within that attribute.

1. Create a configurable product that uses the newly created attributes:
   * Add one child product with the following configuration:
      * Use the last option from Attribute 1, and the first option from Attributes 2 to 9.
      * This results in 1 configurable product and 1 child product.
1. Go to the **[!UICONTROL Configurations]** tab of the configurable product.
1. Click **[!UICONTROL Add Products]** manually and start adding the previously created simple products one by one.
1. Save the changes after each addition.
1. As you add products, observe the loading time of the edit configurable product page.
1. After adding 7 products, you should notice a significant increase in RAM consumption and page loading tim

<u>Expected results</u>:

The product edit form should load quickly and efficiently without excessive memory consumption.

<u>Actual results</u>:

Editing the configurable product takes a long time to load and may hit memory limits or timeout errors.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
