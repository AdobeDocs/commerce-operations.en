---
title: 'ACSD-50887: *[!UICONTROL Use in Search Results Layered Navigation]* set to Yes without the *[!UICONTROL Use in Search]* option'
description: Apply the ACSD-50887 patch to fix the Adobe Commerce issue where the product attribute property *[!UICONTROL Use in Search Results Layered Navigation]* can be set to *Yes* without the *[!UICONTROL Use in Search]* option also being set to *Yes*.
feature: Attributes, Products, Search, Storefront
role: Admin, Developer
exl-id: b597709b-7489-41a0-b1ff-d68d0def0b46
---
# ACSD-50887: *[!UICONTROL Use in Search Results Layered Navigation]* set to *Yes* without the *[!UICONTROL Use in Search]* option

The ACSD-50887 patch fixes the issue where the product attribute property *[!UICONTROL Use in Search Results Layered Navigation]* can be set to *Yes* without the *[!UICONTROL Use in Search]* option also being set to *Yes*. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.36 is installed. The patch ID is ACSD-50887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product attribute property *[!UICONTROL Use in Search Results Layered Navigation]* can be set to *Yes* without the *[!UICONTROL Use in Search]* option also being set to *Yes*. 

These settings were designed to be used together. With the patch applied, when the *[!UICONTROL Use in Search]* option is set to *No*, the *[!UICONTROL Use in Search Results Layered Navigation]* option is hidden to work as if it were also set to *No*.

<u>Steps to reproduce</u>:

1. In the Admin, navigate to **[!UICONTROL Stores]** > **[!UICONTROL Attribute]** > **[!UICONTROL Product]** and create an attribute with the multiselect type and set the following:

    * *[!UICONTROL Use in Search] = No*
    * *[!UICONTROL Use in Layered Navigation] = (Any option)*
    * *[!UICONTROL Use in Search Results Layered Navigation] = Yes*
    * *Name = Test_attribute*
    * *Options*:
        * *Sticker*
        * *Picker*
       
1. Add the new attribute to the default attribute set.
1. Create two products:

    1. First product:
        * Name = Sticker
        * Set Price, QTY, Weight to 1
        * Test_attribute = select option *Sticker*
        
    1. Second product:
        * Name = Picker
        * Set Price, QTY, Weight to 1
        * Test_attribute = select both options

1. Run `catalogsearch_fulltext` reindex:
    
    `bin/magento indexer:reindex catalogsearch_fulltext`

1. Search by the word *sticker* on the storefront.

<u>Expected results</u>:

Only the product *Sticker* is returned, because [!DNL Elasticsearch] won't index Test_attribute when *[!UICONTROL Use in Search]* has been set to *No*.

<u>Actual results</u>:

Both products are returned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
