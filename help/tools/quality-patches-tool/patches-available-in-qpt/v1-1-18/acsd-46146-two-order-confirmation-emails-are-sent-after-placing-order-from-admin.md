---
title: 'ACSD-46146: Two order confirmation emails sent after placing order from admin'
description: The ACSD-46146 patch solves the issue where two order confirmation emails are sent after placing an order from the admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.18 is installed. The patch ID is ACSD-46146. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: 3bf2cccf-7a40-48ca-ab51-ffb5939f8802
feature: Admin Workspace, Communications, Orders
role: Admin
---
# ACSD-46146: Two order confirmation emails sent after placing order from admin

The ACSD-46146 patch solves the issue where two order confirmation emails are sent after placing an order from the admin. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.18 is installed. The patch ID is ACSD-46146. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Two order confirmation emails are sent after placing an order from the admin.

<u>Steps to reproduce</u>:

1. Open the Commerce Admin > **Sales** > **Orders** > **Create new order**.
1. Place an order with the default payment (Check/money order) and shipping (Flat rate) settings.

<u>Expected results</u>:

Only one order confirmation email is sent.

<u>Actual results</u>:

Two order confirmation emails are sent after placing an order from the admin.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
