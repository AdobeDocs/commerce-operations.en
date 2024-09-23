---
title: 'ACSD-46703:  Product customization drag and drop does not work'
description: This article provides a solution for the issue where the product customizable options drag and drop does not work as expected.
exl-id: 49b29495-d225-4f34-ac76-b7294a86aea6
feature: Products
role: Developer
---
# ACSD-46703: Product customization drag and drop does not work

The ACSD-46703 patch fixes the issue where the product customizable options (drag and drop) do not work as expected. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-46703. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are not able to drag and drop the customizable options from one page to another.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Add customizable options to the simple product and make sure you add over 20 options resulting in pagination.
1. Try to move a customizable option (drag and drop) within the same page.
1. Now try to move a customizable option from page two to page one.

<u>Expected results</u>:

* You are able to drag and drop the customizable options from one page to another.
* You are able to sort the values using the drag and drop functionality, even for multiple pages.

<u>Actual results</u>:

You are not able to move any value to another page using the drag and drop functionality.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Quality Patches Tools > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the Quality Patches Tool guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/check-patch-for-magento-issue-with-magento-quality-patches.html) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Quality Patches Tool guide.
