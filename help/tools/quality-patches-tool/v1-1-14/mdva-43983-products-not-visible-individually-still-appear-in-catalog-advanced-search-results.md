---
title: 'MDVA-43983: Products set as "Not Visible Individually" appear in search results'
description: The MDVA-43983 patch solves the issue where the products that are set as "Not Visible Individually" still appear in catalog advanced search results. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-43983. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 2599fb6c-5b27-461b-9740-f586ae7df9f5
feature: Catalog Management, Products, Search
role: Admin
---
# MDVA-43983: Products set as "Not Visible Individually" appear in search results

The MDVA-43983 patch solves the issue where the products that are set as "Not Visible Individually" still appear in catalog advanced search results. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.14 is installed. The patch ID is MDVA-43983. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The products that are set as "Not Visible Individually" still appear in catalog advanced search results.

<u>Steps to reproduce</u>:

1. Create an attribute with **Catalog Input Type for Store Owner** as **Dropdown** or **Visual Swatch** (for example, Color).
1. Set **Use in Search** as **Yes** and **Visible in Advanced Search** as **Yes**.
1. Add some attribute options.
1. Create products with **Visibility** as **Not Visible Individually**.
1. Assign Color attribute options.
1. Go to the **Catalog Advanced Search** page on the storefront.
1. Select only the Color attribute option from the Color attribute field, and leave the rest of the fields blank or as it is.
1. Submit an advanced search form.
1. Observe the search results.

<u>Expected results</u>:

Products that are set as "Not Visible Individually" do not appear in the catalog advanced search results.

<u>Actual results</u>:

Products that are set as "Not Visible Individually" appear in the catalog advanced search results.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
