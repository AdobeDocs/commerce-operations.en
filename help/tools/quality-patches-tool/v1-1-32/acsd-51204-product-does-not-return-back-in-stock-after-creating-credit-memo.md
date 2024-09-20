---
title: 'ACSD-51204: Product does not return back in stock after creating the credit memo'
description: Apply the ACSD-51204 patch to fix the Adobe Commerce issue where the product does not return back in stock after creating the credit memo.
feature: Orders, Products, Returns
role: Admin
exl-id: 302033bc-2ca5-40d6-b692-24ae46b21c31
---
# ACSD-51204: Product does not return back in stock after creating the credit memo

The ACSD-51204 patch fixes the issue where the product does not return back in stock after creating the credit memo. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.32 is installed. The patch ID is ACSD-51204. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods)  2.4.3 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Use the patch ID as a search keyword to locate the patch.

## Issue

The sold-out product does not return back in stock after creating the credit memo.

<u>Steps to reproduce</u>:

1. Install **[!UICONTROL Adobe Commerce]** and enable the **[!UICONTROL Inventory Management Module]** with default *source* and *stock* only.
1. Add a **[!UICONTROL new product]** with a quantity of *10*.
1. Assign the product to the **[!UICONTROL default stock]**.
1. On the Storefront, add the product to the cart and place an order for a whole available quantity 10.
1. In the admin panel, generate an *invoice* and *shipment* for the order.
1. Create a **[!UICONTROL Credit Memo]** with the *return to stock* checkbox selected for all items.
1. Check the product's **[!UICONTROL Salable Quantity]** in the Admin.

<u>Expected results</u>:

The salable quantity of the product has to return to *10*.

<u>Actual results</u>:

The salable quantity of the product is left as *0*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
