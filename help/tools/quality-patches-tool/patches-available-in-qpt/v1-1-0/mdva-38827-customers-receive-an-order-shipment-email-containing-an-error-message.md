---
title: 'MDVA-38827: Customers receive order shipment error via email'
description: "The MDVA-38827 patch fixes the issue where customers receive an order shipment email containing the following error message: *We're sorry, an error has occurred while generating this content*. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.0 is installed. The patch ID is MDVA-38827. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4."
exl-id: f2e5aeab-7d46-46be-9631-c3a863d9bf52
feature: Communications, Marketing Tools, Orders, Shipping/Delivery
role: Admin
---
# MDVA-38827: Customers receive order shipment error via email

The MDVA-38827 patch fixes the issue where customers receive an order shipment email containing the following error message: *We're sorry, an error has occurred while generating this content*. This patch is available when the [Quality Patches Tool (QPT)](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching.html#mqp) 1.1.0 is installed. The patch ID is MDVA-38827. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce on cloud infrastructure 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.3.3-p1 &ndash;  2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

When the Notify Customers by Email option for shipment is selected, customers receive an email containing the following error message: *We're sorry, an error has occurred while generating this content*.

<u>Steps to reproduce</u>:

1. Go to **Marketing** > **Communications** > **Email Templates** and select **Add New Template**.
   * Select **Magento Sales** > **New Shipment**.
   * Click on **Load Template**.
   * Add a template name (e.g., Core Shipping Template) and click **Save**.
1. Go to **Store** > Settings > **Configuration** > **Sales** > **Sales Email**:
   * Enable **Shipment Comments**.
   * Select **Core Shipping Template** (refer to the "Add a template name" part of Step 1) under Shipment Comment Email Template and Shipment Comment Email Template for Guest.
1. Place an order. Go to the Admin panel > **Sales** > **Order**, click **View**, and then ship the order.
1. The order state will change from Pending to Processing.
1. Click **Shipments** on the left sidebar menu and then click **View** to see the order.
1. Add a comment in **Comment Text** below **Shipment History** and check the checkbox **Notify Customer by Email**.
1. Click **Submit Comment**.

<u>Expected results</u>:

Sales email with shipment comments is generated.

<u>Actual results</u>:

The following error message is received in the email: *We're sorry, an error has occurred while generating this content.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
