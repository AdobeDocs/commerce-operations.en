---
title: 'ACSD-54965: [!UICONTROL Visual Merchandising] grid does not display the correct stock'
description: Apply the ACSD-54965 patch to fix the Adobe Commerce issue where the [!UICONTROL Visual Merchandising] grid does not display the correct stock when a product is assigned to custom stock.
feature: Merchandising, Categories
role: Admin, Developer
exl-id: bd8a3547-1d84-4a17-b006-b35d92256211
---
# ACSD-54965: [!UICONTROL Visual Merchandising] grid does not display the correct stock

The ACSD-54965 patch fixes the issue where the [!UICONTROL Visual Merchandising] grid does not display the correct stock when a product is assigned to custom stock. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.45 is installed. The patch ID is ACSD-54965. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.5-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL Visual Merchandising] grid does not display the correct stock when a product is assigned to custom stock. 

<u>Steps to reproduce</u>:

1. Create a new source.
1. Create a new stock.
1. Create two products:
   * One product with the custom stock only.
   * One product with the default stock only.
1. Add these products to a category.
1. Go to the [!UICONTROL visual Merchandising] grid (*[!UICONTROL Products in Category]*).

<u>Actual Results</u>:

In the *[!UICONTROL All Store Views]* scopes, the product with custom stock does not show any quantity. It is only when the *[!UICONTROL Default Store View]* scope is selected the custom stock shows the quantity of the product.

<u>Expected Results</u>:

The grid shows all stock information if the scope is *[!UICONTROL All Store Views]*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
