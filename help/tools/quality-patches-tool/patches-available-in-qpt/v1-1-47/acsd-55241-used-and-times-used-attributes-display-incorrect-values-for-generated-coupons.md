---
title: 'ACSD-55241: **Used** and **Times Used** attributes display incorrect values for generated coupons'
description: Apply the ACSD-55241 patch to fix the Adobe Commerce issue where the **Used** and **Times Used** attributes display incorrect values for generated coupons
feature: Price Rules
role: Admin, Developer
exl-id: cfe0f8af-423a-4e12-a332-053392cbabed
---
# ACSD-55241: **Used** and **Times Used** attributes display incorrect values for generated coupons

The ACSD-55241 patch fixes the issue where the **Used** and **Times Used** attributes display incorrect values for generated coupons. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.47 is installed. The patch ID is ACSD-55241. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

**Used** and **Times Used** attributes display incorrect values for generated coupons.

<u>Steps to reproduce</u>:

1. Create **[!UICONTROL Cart Price Rules]** from **[!UICONTROL Admin]** > **[!UICONTROL Marketing]** > **[!UICONTROL Promotion]** and add any condition which matches while placing an order (Example: subtotal greater than *5$*)

    * Apply any discount.
    * Select **[!UICONTROL Auto Coupon]**.
    * It will generate a few Coupon Codes from **Manage Coupon Codes**.
    * Reindex and clean the cache.

1. Create a **[!UICONTROL customer account]** and log into the frontend.
1. Add one product with more than *2* quantities in the cart and apply one coupon.
1. Click on **[!UICONTROL Check Out with Multiple Addresses]**.
1. Select a separate address for each quantity, place the order, and complete the checkout process.
1. Observe the order total from the admin and see the discount applied.
1. Place another order with another coupon.
1. Run the `php81 bin/Magento queue:consumers: start sales.rule.update.coupon.usage &` command to update coupon code usage.

<u>Expected results</u>:

The correct count should be displayed in the **Time used** and **Used** columns with **Yes** value for **[!UICONTROL manage coupon]** in the **[!UICONTROL cart price rule]** in the admin.

<u>Actual results</u>:

The used coupon code count doesn't update in the **Time Used** column in the coupons grid, and the **Used** column shows the *No* value if you place an order with multiple shipping addresses.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
