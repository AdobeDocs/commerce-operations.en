---
title: "MDVA-43167: Admin order grid mass action doesn't apply for multi-page"
description: The MDVA-43167 patch fixes the issue where the admin order grid mass action doesn't apply for multi-page when the admin user selects all orders. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-43167. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: 58a126db-8a4f-4e20-8fe5-3ce2e25edf7e
feature: Admin Workspace, Orders
role: Admin
---
# MDVA-43167: Admin order grid mass action doesn't apply for multi-page

The MDVA-43167 patch fixes the issue where the admin order grid mass action doesn't apply for multi-page when the admin user selects all orders. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.16 is installed. The patch ID is MDVA-43167. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin order grid mass action doesn't apply for multi-page when the admin user selects all orders.

<u>Steps to reproduce</u>:

1. Purchase any product three times to create three orders.
1. Navigate to **Sales Order Grid**.
1. Change the pagination to a custom value of 2.
1. Select all.
1. Select **Hold Mass Action**.

<u>Expected results</u>:

All three orders are placed on hold.

<u>Actual results</u>:

Only the two visible orders are placed on hold.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
