---
title: 'ACSD-65202: "My Account" page doesn't show recent orders from other store views'
description: Apply the ACSD-65202 patch to fix the Adobe Commerce issue where when you go to the customer account page (section {**}**My Account**{**}), you don't see Recent orders placed in another Store View, while when you go to the Order history (section {**}**My Orders**{**}), you see all orders in both Store Views.
feature: Orders, User Account
role: Admin, Developer
---

# ACSD-65202: "My Account" page doesn't show recent orders from other store views

The ACSD-65202 patch fixes the issue where the "My Account" page doesn't display recent orders from other store views within the same store. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-65202. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p12

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where the "My Account" page doesn't display recent orders from other store views within the same store.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce
2. Create a new Store View: code - {**}**second**{**}.
3. Create a simple product and reindex.
4. Create a customer account and place an order in the default Store View: code - {**}**default**{**}.
5. Go to the My Orders page and check the order is visible in both Store Views, for example:
1. Default: [https://localhost/pub/default/sales/order/history/]
1. Second: [https://localhost/pub/second/sales/order/history/] 

6. Go to the My Account page in both Store Views:
1. Default: [https://localhost/pub/default/customer/account/]
1. Second: [https://localhost/pub/second/customer/account/]

<u>Expected results</u>:

To see orders in both Store Views like on the Orders page. It's the same Store, only a different Store View.

<u>Actual results</u>:

The behavior is inconsistent. No orders in the Second Store View.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.