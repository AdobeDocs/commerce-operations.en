---
title: 'ACSD-48587: product widget not working with SKUs containing HTML characters'
description: Apply the ACSD-48587 patch to fix the Adobe Commerce issue where HTML special characters in the products widget matching rules prevent them from displaying matching products.
exl-id: 9f8f436c-f3ef-4510-a941-12f701e7524e
feature: Admin Workspace, CMS, Orders, Products
role: Admin
---
# ACSD-48587: product widget not working with SKUs containing HTML characters

The ACSD-48587 patch fixes the issue where HTML special characters in the products widget matching rules prevent them from displaying matching products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.26 is installed. The patch ID is ACSD-48587. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product widget is not working with SKUs containing *"&"* symbols.

<u>Steps to reproduce</u>:

1. Create a product containing *"&"* in the SKU (e.g., s000&01).
1. Edit the content of a CMS page on the *Page Builder*.
1. Add a products widget.
1. Edit the widget and set **[!UICONTROL Select Products by]** = **[!UICONTROL SKU]**.
1. Enter the SKU that contains *"&"* in the product SKUs field.
1. Save the content and the CMS page.
1. Check the *CMS Page* content for the *Page Builder preview* and product storefront.

<u>Expected results</u>:

The product with *"&"* in the SKU is displayed in the Page Builder preview and on the storefront.

<u>Actual results</u>:

The product with *"&"* in the SKU is not displayed in the Page Builder preview.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
