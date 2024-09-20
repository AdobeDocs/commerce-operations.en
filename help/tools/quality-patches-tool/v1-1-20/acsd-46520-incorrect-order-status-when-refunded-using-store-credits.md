---
title: 'ACSD-46520: Incorrect order status when refunded using store credits'
description: This article provides a solution for the issue where users get an incorrect order status when refunded using store credits.
exl-id: 8464df22-0223-4ded-a15f-ce06eacdf77c
feature: Orders, Returns
role: Admin
---
# ACSD-46520: Incorrect order status when refunded using store credits

The ACSD-46520 patch solves the issue where users get an incorrect order status when refunded using store credits. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-46520. Please note that the issue was fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3 and 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Users get an incorrect order status when refunded using store credits.

<u>Steps to reproduce</u>:

1. Create a customer account on the storefront and log in.
1. Assign store credits to the customer from the Admin. The store credits should cover the whole order.
1. Place an order using the store credits.
1. Invoice the order.
1. Create a credit memo to refund the full amount of the order.
    Select the **[!UICONTROL Refund to store credit]** checkbox.
1. Check the order status.

<u>Expected results</u>:

The order status is *Closed*.

<u>Actual results</u>:

The order status is *Complete*, which is not the correct status.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or [!DNL Magento Open Source] on-premises: [Quality Patches Tools > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the Quality Patches Tool guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/check-patch-for-magento-issue-with-magento-quality-patches.html) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Quality Patches Tool guide.
