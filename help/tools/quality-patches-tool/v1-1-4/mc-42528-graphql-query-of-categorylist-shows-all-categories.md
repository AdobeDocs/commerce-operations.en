---
title: 'MC-42528: GraphQL query of categoryList shows all categories'
description: The MC-42528 patch solves the issue where the GraphQL query of `categoryList` returns both assigned and unassigned categories when the Browsing Category of a particular category is set to "Deny". This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.4 is installed. The patch ID is MC-42528. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
exl-id: 8bb29f43-92ae-4f37-b147-7121b55c185b
feature: Catalog Management, Categories, GraphQL, Customer Service
role: Admin
---
# MC-42528: GraphQL query of categoryList shows all categories

The MC-42528 patch solves the issue where the GraphQL query of `categoryList` returns both assigned and unassigned categories when the Browsing Category of a particular category is set to "Deny". This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.4 is installed. The patch ID is MC-42528. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

GraphQL query of `categoryList` returns both assigned and unassigned categories.

<u>Steps to reproduce</u>:

1. Create two categories, CAT1 and CAT2, and assign few products to each category.
1. Create a private shared catalog.
1. Create a company user and assign it to the created shared catalog.
1. Assign CAT1 to the custom catalog and set the category permission to "Allow" Browsing Category for the customer group of the private catalog.
1. Set the category permission for CAT2 to "Deny" Browsing Category for the customer group of private catalog.
1. Run the `categoryList` or `categories` GraphQL query as the company user.

<u>Expected results</u>:

Only the CAT1 shows up in the response.

<u>Actual results</u>:

All the categories show up in the response regardless of the browsing permissions of category.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://support.magento.com/hc/en-us/sections/360010506631-Patches-available-in-MQP-tool-) section.
