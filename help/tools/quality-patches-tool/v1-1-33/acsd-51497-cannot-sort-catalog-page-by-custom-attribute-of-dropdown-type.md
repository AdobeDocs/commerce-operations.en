---
title: 'ACSD-51497: Cannot sort catalog page by custom attribute of type Dropdown'
description: Apply the ACSD-51497 patch to fix the Adobe Commerce issue where a customer cannot sort a catalog page by custom attribute of the type Dropdown.
feature: Attributes, Cache, Catalog Management, Categories
role: Developer
exl-id: 60a4f375-9b9a-4026-9dc7-d9f847a75656
---
# ACSD-51497: Cannot sort catalog page by custom attribute of type *Dropdown*

The ACSD-51497 patch fixes the issue where a customer cannot sort a catalog page by a custom attribute of the type *Dropdown*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-51497. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.3.7-p4, 2.4.1 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A customer is unable to sort a catalog page by a custom attribute of the type *Dropdown*.

<u>Steps to reproduce</u>

1. Create about six simple products and assign them to a single category.
1. Create a product attribute in order to add it as a sorting option on the listing pages.

    * Go to **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Add New Attribute]**.
    * In the **[!UICONTROL Properties]** tab, set the following:

        * *[!UICONTROL Default Label]* = *test*
        * *[!UICONTROL Catalog Input Type]* for Store Owner = *Dropdown*
        * *[!UICONTROL Options]*:

            * *first*
            * *second*
            * *third*
            * *fourth*

    * In the **[!UICONTROL Storefront Properties]** tab, set the following:

        * *[!UICONTROL Used for sorting in product listing]* = *Yes*
        * Leave all the other options as *Default*.

1. Assign the *test* attribute to the *Default* attribute set in **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Attributes]** > **[!UICONTROL Attribute Set]**.
1. Configure the products to have *test* attribute values.

    * SKU: s00001, test: fourth
    * SKU: s00002, test: third
    * SKU: s00003, test: second
    * SKU: s00004, test: first
    * SKU: s00005, test: fourth
    * SKU: s00006, test: third

1. Reindex and clear cache.
1. Go to the category on the storefront.
1. Sort by the *test* attribute.

<u>Expected results</u>:

The products are sorted by the *test* attribute.

<u>Actual results</u>:

The products are not sorted by the *test* attribute.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
