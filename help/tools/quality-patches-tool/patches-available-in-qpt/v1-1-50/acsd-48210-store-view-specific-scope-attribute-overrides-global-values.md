---
title: 'ACSD-48210: Store view specific scope attribute overrides global values' 
description: Apply the ACSD-48210 patch to fix the Adobe Commerce issue of updating a *[!UICONTROL Website Scope]* attribute in a specific store view overrides the attribute values in the global scope.
feature: Products, Attributes 
role: Admin, Developer
---
# ACSD-48210: Store view specific scope attributes override global values

The ACSD-48210 patch fixes the issue where when updating a *[!UICONTROL Website Scope]* attribute within a specific store view overrides the attribute values in the global scope. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-48210. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When updating a *[!UICONTROL Website Scope]* attribute within a specific store view overrides the attribute values in the global scope.

Importing product prices with multiple rows sharing the same `SKU` and `store_view_code` caused incorrect updates to the prices in the *[!UICONTROL All Store View]* and *[!UICONTROL Default Store]* scopes. Modifying the website scope attribute in a specific store view no longer overrides the attribute's value in the global scope.
<u>Steps to reproduce</u>:

1. Configure the *[!UICONTROL Catalog Price Scope]* to *[!UICONTROL Website]*.
1. Create a simple product named as *SP01* and set the price to *$84.50*.
1. Import the product using the following CSV provided below:
    
    ```
    sku,store_view_code,price
    SP01,default,99.99
    SP01,default,86.59
    ```
    
1. Check the product price in the *[!UICONTROL All Store View]* and *[!UICONTROL Default Store]* scopes.

<u>Expected results</u>:

* The first non-empty value is used for the *[!UICONTROL Default Store]* scope.
* The *[!UICONTROL All Store View]* scope remains unchanged.

<u>Actual results</u>:

* The *[!UICONTROL All Store View]* scope price changes to *$86.59*.
* The *[!UICONTROL Default Store]* scope price changes to *$86.59*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
