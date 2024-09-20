---
title: 'ACSD-53643: Order has an incorrect total when placing a purchase order'
description: Apply the ACSD-53643 patch to fix the Adobe Commerce issue where the order has an incorrect total when placing a purchase order with disabled or out-of-stock products.
feature: B2B
role: Admin, Developer
exl-id: 9843e07a-8a17-401e-98bc-559df5148d34
---
# ACSD-53643: Order has an incorrect total when placing a purchase order

The ACSD-53643 patch fixes the issue where the order has an incorrect total when placing a purchase order with disabled or out-of-stock products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.41 is installed. The patch ID is ACSD-53643. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The order total is incorrect when placing a purchase order with disabled or out-of-stock products.

<u>Steps to reproduce</u>:

1. Install *[!UICONTROL B2B]* and *[!UICONTROL Inventory]*.
1. Go to **[!UICONTROL Admin]** > **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL B2B]** and set **[!UICONTROL Company]** = *Yes* and **[!UICONTROL Purchase Order]** = *Yes*.
1. Clear configuration cache.
1. Create a new company, activate it, and enable *[!UICONTROL Purchase order]* for the company.
1. Create a new user for the company.
1. Create an *Approval rule* to approve all orders of more than *1 USD* by the company administrator.
1. Create an additional source.
1. Log in as the new company user.
1. Add two products to the cart and place a purchase order.
1. Disable the second product.
1. Log in as the company admin.
1. Open the purchase order and see that the purchase order contains both products and the total is for both products.
1. Approve the purchase order.
1. Place the order.
1. Open the order details.

<u>Expected results</u>:

* Cannot place the order even if one product in the order is *disabled* or *out of stock*.
* *[!UICONTROL Place Order]* button is hidden.

<u>Actual results</u>:

The placed order contains only the first active product, but the order total is calculated for both products.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
