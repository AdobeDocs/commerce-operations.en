---
title: "ACSD-61322: Products/Categories not assigned to [!UICONTROL Shared Catalog]"
description: Apply the ACSD-61322 patch to fix the Adobe Commerce issue where Products/Categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General Group) are still included in the XML Sitemap.
feature: Site Navigation, Products, Categories
role: Admin, Developer
---
# ACSD-61322: Products/Categories not assigned to [!UICONTROL Shared Catalogue] are included in the XML Sitemap

The ACSD-61322 patch fixes the issue where Products/Categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General Group) are still included in the XML Sitemap. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.52 is installed. The patch ID is ACSD-61322. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The Products/Categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General Group) are still included in the XML Sitemap.

<u>Steps to reproduce</u>:

1. Create a few categories and add products (for example, Category 1 with Category 2).
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]** and enable [!UICONTROL Company and Shared Catalog].
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Shared Catalogs]** and modify the Default Catalog.
1. From the **[!UICONTROL Select]** dropdown, select **[!UICONTROL Set Pricing and Structure]**, and click **[!UICONTROL Configure]**.
1. Under the **[!UICONTROL Category1]** > **[!UICONTROL Category2]** category, unselect some products that shouldn't be in the [!UICONTROL Shared Catalog].
1. Click on **[!UICONTROL Next]** and generate the catalog.
1. On the Storefront, create a customer account.
1. Go to the **[!UICONTROL Category1]** > **[!UICONTROL Category2]** category and you will only see the products that were assigned to the [!UICONTROL Shared Catalog].
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL SEO & Search]** > **[!UICONTROL Site Map]** and generate a new sitemap.
1. Open the `sitemap.xml` on the Storefront.
1. Search for the product(s) that you didn't include in the [!UICONTROL Shared Catalog].

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