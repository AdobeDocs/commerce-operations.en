---
title: 'ACSD-61322: Products not assigned to [!UICONTROL Shared Catalogue] are included in XML Sitemap'
description: Apply the ACSD-61322 patch to fix the Adobe Commerce issue where products/categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General) group are still included in the XML Sitemap.
feature: Site Navigation, B2B
role: Admin, Developer
exl-id: 4698ba5a-673e-4bf0-b36c-39f6122dab26
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 48c59cc5-3c2e-5df1-8756-f5c139a28932
    internal-label: Site Navigation
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-61322: Products not assigned to [!UICONTROL Shared Catalogue] are included in XML Sitemap

The ACSD-61322 patch fixes the issue where products/categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General) group are still included in the XML Sitemap. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.52 is installed. The patch ID is ACSD-61322. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Products/categories not assigned to the [!UICONTROL Shared Catalog] for the Default (General) group are still included in the XML Sitemap.

<u>Steps to reproduce</u>:

1. Create a few categories and add products (for example, Category 1 with Category 2).
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]** and enable *[!UICONTROL Company and Shared Catalog]*.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Shared Catalogs]** and modify the Default Catalog.
1. From the **[!UICONTROL Select]** dropdown, select **[!UICONTROL Set Pricing and Structure]**, and click **[!UICONTROL Configure]**.
1. Under the *Category 1 > Category 2* category, unselect some products that shouldn't be in the [!UICONTROL Shared Catalog].
1. Click **[!UICONTROL Next]** and generate the catalog.
1. On the Storefront, create a customer account.
1. Go to the *Category 1 > Category 2* category. It displays only the products that were assigned to the [!UICONTROL Shared Catalog].
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL SEO & Search]** > **[!UICONTROL Site Map]** and generate a new sitemap.
1. Open the `sitemap.xml` on the Storefront.
1. Search for the product(s) that you didn't include in the [!UICONTROL Shared Catalog].

<u>Expected results</u>:

The sitemap doesn't contain links to products and categories that are not assigned to the [!UICONTROL Shared Catalog].

<u>Actual results</u>:

The sitemap contains links to products and categories that are not assigned to the [!UICONTROL Shared Catalog].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
