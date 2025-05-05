---
title: 'MDVA-42410: Coupon reports only display default base currency'
description: The MDVA-42410 patch fixes the issue where the coupon reports only display base currency. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-42410. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Orders
role: Admin
exl-id: 97b4d9cf-12fd-4659-ad71-914c8422da37
---
# MDVA-42410: Coupon reports only display default base currency

The MDVA-42410 patch fixes the issue where the coupon reports only display base currency. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-42410. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Coupon reports only display default base currency.

<u>Steps to reproduce</u>:

1. Create an additional Website, Store, and Store View.
1. Set a different currency for this new website. For example, Euro.
1. Go to **Stores** > **Currency Rates** and configure currency rates to **Euro**.
1. Create a **Cart Price Rule** with a specific coupon - **Test**.
1. Go to the frontend and place an order with the **Test** coupon on the new website.
1. Go to **Reports** > **Sales** > **Coupons**.
1. Select the new website in the Scope dropdown.
1. Refresh statistics and run reports.

<u>Expected results</u>:

Coupon reports display the new website's currency as Euro.

<u>Actual results</u>:

Default base currency (USD in this case) is used in coupon reports for the new website.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
