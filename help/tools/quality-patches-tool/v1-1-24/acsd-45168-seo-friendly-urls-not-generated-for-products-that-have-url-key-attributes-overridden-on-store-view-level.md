---
title: 'ACSD-45168: SEO-friendly URLs not generated for products that have url_key attributes overridden'
description: Apply the ACSD-45168 patch to fix the Adobe Commerce issue where SEO-friendly URLs not generated for products that have url_key attributes overridden on store-view level.
exl-id: cdba42ac-3c96-439b-befa-f0a13587b5d9
feature: Attributes, Cache, Categories, Marketing Tools, Products
role: Admin
---
# ACSD-45168: SEO-friendly URLs not generated for products that have url_key attributes overridden

The ACSD-45168 patch fixes the issue where SEO-friendly URLs are not generated for products that have url_key attributes overridden on the store-view level. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.24 is installed. The patch ID is ACSD-45168. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

SEO-friendly URLs are not generated for products that have url_key attributes overridden on the store-view level.

<u>Steps to reproduce</u>:

1. Set the configuration as follows by going to the **[!UICONTROL Commerce Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Search Engine Optimization]**:
    * [!UICONTROL Use Categories Path for Product URLs] = *Yes*
    * [!UICONTROL Generate "category/product" URL Rewrites] = *Yes*
1. Clean the configuration cache.
1. Create two categories: [!UICONTROL Category 1] and [!UICONTROL Category 2].
1. Create two products: [!UICONTROL Product 1] in [!UICONTROL Category 1], [!UICONTROL Product 2] in [!UICONTROL Category 1].
1. Change the scope to [!UICONTROL Default Store View] for [!UICONTROL Product 1].
1. Uncheck the optional URL [!UICONTROL Key] in [!UICONTROL Search Engine Optimization].
1. Save the product.
1. Switch back to [!UICONTROL All Store Views].
1. Add [!UICONTROL Product 1] to [!UICONTROL Category 2], and add [!UICONTROL Product 2] to [!UICONTROL Category 2].
1. Check the [!UICONTROL url_rewrite] table or [!UICONTROL Marketing] > [!UICONTROL SEO & Search] > [!UICONTROL URL Rewrites].

<u>Expected results</u>:

The SEO-friendly URL for [!UICONTROL Category 2] is created for [!UICONTROL Product 1].

<u>Actual results</u>:

The SEO-friendly URL for [!UICONTROL Category 2] is missing for [!UICONTROL Product 1] because it had the URL key attribute overwritten for the store view scope.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
