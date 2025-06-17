---
title: 'MDVA-41229: Images available on backend not displayed on frontend after configurable products import'
description: The MDVA-41229 patch solves the issue where images available on the backend are not displayed on the frontend after configurable products import. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-41229. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Data Import/Export, Configuration, Products
role: Admin
exl-id: 894fdc5b-545c-4ed8-ae1b-573d1d8d3cd6
---
# MDVA-41229: Images available on backend not displayed on frontend after configurable products import

The MDVA-41229 patch solves the issue where images available on the backend are not displayed on the frontend after configurable products import. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-41229. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.2-p2 and 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Images available on the backend are not displayed on the frontend after configurable products import.

<u>Steps to reproduce</u>:

1. Install a clean Adobe Commerce.
1. Add a custom attribute by going to **Stores** > **Attributes** > **Product** > **Add New Attribute** with the settings below:

    * Properties:
        * Attribute Properties:

          * Default Label: Set Size
          * Catalog Input Type for Store Owner: Text Swatch
          * Values Required: No
          * Update Product Preview Image: Yes
        
        * Manage Swatch (values of your attribute):

           | Is Default | Admin Swatch | Admin Description | Default Store View Swatch | Default Store View Description |
           |---|---|---|---|---|
           | no | 4 | 4 | 4 | 4 |
           | no | 24 | 24 | 24 | 24 |
           | no | 30 | 30 | 30 | 30 |
           | no | 60 | 60 | 60 | 60 |
           | no | 68 | 68 | 68 | 68 |

        * Advanced Attribute Properties:

            * Attribute Code: set_size
            * Scope: Global
            * Unique Value: No
            * Input Validation for Store Owner: None
            * Add to Column Options: No
            * Use in Filter Options: No

    * Manage Labels:

        * Manage Titles (Size, Color, etc.)

            * Default Store View: Set Size

    * Storefront Properties:

        * Use in Search: Yes
        * Search Weight: 1
        * Visible in Advanced Search: No
        * Comparable on Storefront: Yes
        * Use in Layered Navigation: Filterable (with results)
        * Use in Search Results Layered Navigation: Yes
        * Use for Promo Rule Conditions: No
        * Visible on Catalog Pages on Storefront: Yes
        * Used in Product Listing: Yes
        * Used for Sorting in Product Listing: No

1. Add this attribute to the Default Attribute Set inside the Product Details Group (**Stores** > **Attributes** > **Attribute Set**).
1. Download images set into var folder inside Adobe Commerce root directory.
1. Go to **System** > **Data Transfer** > and import the file using the below options:

    * Import Settings:

        * Entity Type: Products

    * Import Behavior:

        * Import Behavior: Add/Update
        * Validation Strategy: Stop on Error
        * Allowed Errors Count: 1
        * Field separator: `;`
        * Multiple value separator: `,`
        * Attribute value constant: EMPTYVALUE
        * Fields enclosure: unchecked

    * File to Import:

        * Select File to Import
        * Images File Directory: leave it empty

1. Go to storefront to `/product-set.html` page and switch between different Set Sizes. For Set Size 24, there will be no gallery.

<u>Expected results</u>:

The gallery for all simple products inside a configurable product is visible with all related images.

<u>Actual results</u>:

There is no gallery for the products.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
