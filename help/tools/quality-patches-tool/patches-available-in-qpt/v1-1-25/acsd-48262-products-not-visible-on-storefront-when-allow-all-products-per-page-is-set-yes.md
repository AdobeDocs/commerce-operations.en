---
title: 'ACSD-48262: products not visible on storefront when [!UICONTROL Allow All Products Per Page] is set [!UICONTROL Yes]'
description: Apply the ACSD-48262 patch to fix the Adobe Commerce issue where products are not visible on the storefront when the [!UICONTROL Allow All Products Per Page] setting is set to [!UICONTROL Yes].
feature: Admin Workspace, Cache, Categories, Orders, Products, Storefront
role: Admin
exl-id: 733ac476-5c3c-4cbe-88b7-f436d15f1c7d
---
# ACSD-48262: products not visible on storefront when [!UICONTROL Allow All Products Per Page] is set *[!UICONTROL Yes]*

The ACSD-48262 patch fixes the issue where products are not visible on the storefront when the [!UICONTROL Allow All Products Per Page] setting is set to *[!UICONTROL Yes]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.25 is installed. The patch ID is ACSD-48262. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) >=2.4.5 < 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The ACSD-48262 patch fixes the issue where products are not visible on the storefront when the [!UICONTROL Allow All Products Per Page] setting is set to *[!UICONTROL Yes]*.

<u>Steps to reproduce</u>:

1. Create a test category.
1. Create a test product in the test category.
1. Browse the product to test category page on the storefront and ensure the product is visible.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** and set the [!UICONTROL Allow All Products Per Page] setting to *[!UICONTROL Yes]*. 
1. Clear Cache.
1. Check category page on the storefront.

<u>Expected results</u>:

The product is visible.

<u>Actual results</u>:

The product is not visible.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
