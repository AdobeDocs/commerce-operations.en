---
title: 'ACSD-50887: *[!UICONTROL Use in Search Results Layered Navigation]* set to Yes without the *[!UICONTROL Use in Search]* option'
description: Apply the ACSD-50887 patch to fix the Adobe Commerce issue where the product attribute property *[!UICONTROL Use in Search Results Layered Navigation]* can be set to *Yes* without the *[!UICONTROL Use in Search]* option also being set to *Yes*.
feature: Attributes, Products, Search, Storefront
role: Admin, Developer
exl-id: 5e797121-c386-4aca-9139-0a02a60be38a
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 76cfaac4-e563-56dd-8938-708bf8b84956
    internal-label: Attributes
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: a1d22079-48b9-5e69-9ee6-eb236068ef34
    internal-label: Search
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
