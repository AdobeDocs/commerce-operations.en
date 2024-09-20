---
title: 'ACSD-54989: Company admin cannot order when [!UICONTROL Enable Purchase Orders] set to Yes and [!UICONTROL Purchase Order] set to No'
description: Apply the ACSD-54989 patch to fix the Adobe Commerce issue where company admin cannot place orders if [!UICONTROL Enable Purchase Orders] is set to Yes and [!UICONTROL Purchase Order] is set to No.
feature: Orders, Companies, Purchase Orders
role: Admin, Developer
exl-id: c2850409-d310-4681-80ec-af8ba347854c
---
# ACSD-54989: Company admin cannot order when *[!UICONTROL Enable Purchase Orders]* set to *Yes* and *[!UICONTROL Purchase Order]* set to *No*

The ACSD-54989 patch fixes the issue where orders cannot be placed if **[!UICONTROL Enable Purchase Orders]** set to *Yes* and **[!UICONTROL Purchase Order]** set to *No*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.40 is installed. The patch ID is ACSD-54989. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Company admins cannot place orders when **[!UICONTROL Enable Purchase Orders]** is set to *Yes* and **Purchase Order** set to *No*.

<u>Prerequisites</u>:

Install [!DNL B2B] modules.

<u>Steps to reproduce</u>:

1. Enable company and leave [!UICONTROL **Order Approval Configuration]** > **[!UICONTROL Purchase Order**] = *No*.
1. Create a simple product with a price of 100.
1. Create a new company through the Admin.
1. Set [!UICONTROL **Enable Purchase Orders**] to *Yes*.
1. Log in as the company admin on the storefront.
1. Add the created simple product to the cart.
1. Proceed to the checkout page and click **[!UICONTROL Place Order]** to complete the purchase.

<u>Expected results</u>:

You are able to place an order successfully.

<u>Actual results</u>:

The **[!UICONTROL My Account]** page opens up and the order is not placed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
