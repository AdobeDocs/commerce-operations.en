---
title: 'ACSD-46520: Incorrect order status when refunded using store credits'
description: This article provides a solution for the issue where users get an incorrect order status when refunded using store credits.
feature: Orders, Returns
role: Admin
exl-id: 67740003-a71e-41bf-afda-ca3e32290115
---
# ACSD-46520: Incorrect order status when refunded using store credits

The ACSD-46520 patch solves the issue where users get an incorrect order status when refunded using store credits. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.20 is installed. The patch ID is ACSD-46520. Please note that the issue was fixed in Adobe Commerce 2.4.5.

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

* Adobe Commerce or [!DNL Magento Open Source] on-premises: [Quality Patches Tools > Usage](/help/tools/quality-patches-tool/usage.md) in the Quality Patches Tool guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
