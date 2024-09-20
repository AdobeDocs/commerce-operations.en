---
title: 'ACSD-51700: Error switching store views on downloadable product edit page'
description: Apply the ACSD-51700 patch to fix the Adobe Commerce issue where an error occurs when switching store views on a downloadable product edit page in the admin.
feature: Products
role: Admin
exl-id: 652876a5-275d-437f-9cb3-baf4e7b23aae
---
# ACSD-51700: Error switching store views on downloadable product edit page

The ACSD-51700 patch fixes the issue where an error occurs when switching store views on a downloadable product edit page in the admin. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51700. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p1

## Issue

An error occurs when switching store views on a downloadable product edit page in the admin.

<u>Steps to reproduce</u>:

1. Create a downloadable product with a name, [!DNL SKU], and price. Do not add any links, and save the product.
1. Switch from all store views to the default store view.
1. Create a link for the downloadable product and save it.
1. Switch from the default store view to all store views.

<u>Expected results</u>:

The linked products are visible.

<u>Actual results</u>:

The following error is displayed:

*Deprecated Functionality: number_format(): Passing null to parameter #1 ($num) of type float is deprecated in vendor/magento/module-downloadable/Ui/DataProvider/Product/Form/Modifier/Data/Links.php on line 228*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
