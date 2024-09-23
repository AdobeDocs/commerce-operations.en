---
title: 'ACSD-50814: Admin user not able to create credit memo'
description: Apply the ACSD-50814 patch to fix the Adobe Commerce issue where an admin user is not able to create a credit memo.
exl-id: bda374cf-6fb7-479f-8130-213ce3cc553e
feature: Admin Workspace, Orders, Returns
role: Admin
---
# ACSD-50814: Admin user is not able to create credit memo

The ACSD-50814 patch fixes the issue where an admin user is not able to create a credit memo. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is ACSD-50814. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An admin user is not able to create a credit memo.

<u>Steps to reproduce</u>:

1. In the Adobe Commerce Admin, navigate to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Shipping methods]** > **[!UICONTROL Free shipping]** and set **[!UICONTROL Enable free shipping]** to *[!UICONTROL Yes]*
1. Again go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Tax]**, expand the calculation settings and set:
    * [!UICONTROL Shipping prices] = [!UICONTROL Including tax]
    * [!UICONTROL Enable cross border trade] = [!UICONTROL No]
1. Expand the price display settings and set the [!UICONTROL Display shipping prices] = [!UICONTROL Including tax].
1. Expand [!UICONTROL Orders], [!UICONTROL Invoices], [!UICONTROL Credit memo] display settings and set [!UICONTROL Display shipping amount] = [!UICONTROL Including tax].
1. Clear caches.
1. Place an order on the storefront.
1. Create an invoice for the order in the admin.
1. Create a credit memo.

<u>Expected results</u>:

The credit memo is created.

<u>Actual results</u>:

The following error is thrown:

*The page cannot be displayed due to the error*

```
report.CRITICAL: DivisionByZeroError: Division by zero in vendor/magento/module-sales/Model/Order/Creditmemo/Total/Tax.php:139*
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
