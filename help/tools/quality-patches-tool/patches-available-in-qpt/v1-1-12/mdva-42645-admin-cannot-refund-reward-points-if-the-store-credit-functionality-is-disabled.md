---
title: "MDVA-42645: Admin can't refund reward points for disabled store credit"
description: The MDVA-42645 patch solves the issue where the admin cannot refund reward points if the store credit functionality is disabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-42645. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 8e8f8c07-c1a2-4031-a2fb-cb737165dc2c
feature: Admin Workspace, Orders, Rewards, Returns
role: Admin
---
# MDVA-42645: Admin can't refund reward points for disabled store credit

The MDVA-42645 patch solves the issue where the admin cannot refund reward points if the store credit functionality is disabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-42645. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The Admin cannot refund reward points if the store credit functionality is disabled.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Create a new customer account and add some reward points.
1. Disable the Store Credit Functionality by going to **Store** > Settings > **Configuration** > **Customer** > **Customer Configuration** > **Store Credit Options**.
1. Log in as the customer to whom the reward points are assigned.
1. Add a product to the cart and navigate to checkout.
1. Use the reward points in the payment section and place the order.
1. Open the order in the admin and invoice the order.
1. Click on the **Credit Memo** link to create a new credit memo.
1. Tick the Refund Reward Points option at the bottom and click the **Refund Offline**.

<u>Expected results</u>:

* The Credit Memo is created successfully.
* The reward points are refunded successfully.

<u>Actual results</u>:

You get the following error message: *You can't use more store credit than the order amount.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
