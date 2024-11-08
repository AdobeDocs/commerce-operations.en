---
title: 'MDVA-38929: Invoice with FPT shows wrong total'
description: The MDVA-38929 patch solves the issue where the invoice with FPT shows a wrong grand total when the order is paid with store credit. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-38929. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Invoices, Orders
role: Admin
exl-id: fd0ca2f3-c6bf-4f09-a0fa-c931df94158b
---
# MDVA-38929: Invoice with FPT shows wrong total

The MDVA-38929 patch solves the issue where the invoice with FPT shows a wrong grand total when the order is paid with store credit. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-38929. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

The invoice with FPT shows a wrong grand total when the order is paid with store credit.

<u>Steps to reproduce</u>:

1. Create a customer and make sure that the customer has store credit enough to cover the order.
1. Enable FPT and add FPT to a product.
1. From the front end, log in as the customer just created.
1. Add the product with FPT to the cart.
1. Checkout and pay with store credit. It should be a zero pay order.
1. Go to Orders and manually invoice the order.
1. Check the invoice grand total.

<u>Expected results</u>:

* The invoice grand total is zero.
* The order total paid amount is zero.

<u>Actual results</u>:

* The invoice grand total still shows the FPT amount.
* The total paid still shows the FPT amount.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
