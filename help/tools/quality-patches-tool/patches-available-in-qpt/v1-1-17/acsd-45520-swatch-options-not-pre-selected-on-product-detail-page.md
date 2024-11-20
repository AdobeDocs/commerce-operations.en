---
title: 'ACSD-45520: Swatch options not selected on product detail page'
description: The ACSD-45520 patch fixes the issue where swatch options are not pre-selected on the product detail page when a user edits configurable products from the shopping cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Products
role: Admin
exl-id: a8b37dba-5a02-45a9-8e43-5288352a9d75
---
# ACSD-45520: Swatch options not selected on product detail page

The ACSD-45520 patch fixes the issue where swatch options are not pre-selected on the product detail page when a user edits configurable products from the shopping cart. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.17 is installed. The patch ID is ACSD-45520. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Swatch options are not selected on the product detail page when a user edits configurable products from the cart.

<u>Steps to reproduce</u>:

1. Create a configurable product with product options (e.g. color).
1. Add the configurable product to the cart.
1. Go to the My Cart page.
1. Click the edit button on the configurable product added in Step 1.
1. Observe the product options on the edit page.

<u>Expected results</u>:

Product options are selected.

<u>Actual results</u>:

Product options are not selected.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
