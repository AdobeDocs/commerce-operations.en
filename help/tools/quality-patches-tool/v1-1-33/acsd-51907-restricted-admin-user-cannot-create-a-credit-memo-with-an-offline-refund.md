---
title: "ACSD-51907: Restricted admin user can't create credit memo for offline refund"
description: Apply the ACSD-51907 patch to fix the Adobe Commerce issue where the restricted admin user can't create a credit memo with an offline refund.
exl-id: 564e8524-f2dc-453c-be78-a920fbd47d71
---
# ACSD-51907: Restricted admin user can't create credit memo for offline refund

The ACSD-51907 patch fixes the performance issue where the restricted admin user can't create a credit memo with an offline refund. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.33 is installed. The patch ID is ACSD-51907. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 < 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Restricted admin user can't create a credit memo with an offline refund.

<u>Steps to reproduce</u>:

1. Create a **customer** on the default website.
1. Create **new website** with related *store* and *store view*.
1. Set default website to the new website, clear caches.
1. Change customer Configuration: **Admin** > **Store** > **Configuration** > **Customers** > **Customer Configuration** > **Share Customer Accounts = Global**.
1. Create a new admin user role with the role scope set to new created website *(access to sales data only)* in **Admin** > **System** > **Permissions**.
1. Create a new admin account with this role.
1. Create new order using online payment method *(e.g. Auth.net or PayPal)*.
1. Login as a restricted admin user.
1. Go to **Sales** > **Orders** > then **order view page**.
1. Create an Invoice.
1. Navigate to the Invoices Tab.
1. Click on **Invoice**.
1. Click on **[!UICONTROL Credit Memo]**.
1. Check the **[!UICONTROL Refund to Store Credit]** checkbox, set the text field near it to the *1* value.
1. Click on the **[!UICONTROL Refund Offline]** button.

<u>Expected results</u>:

The credit memo is created, and *$1* is refunded to the store credit.

<u>Actual results</u>:

The error message, *More permissions are needed to view this item* is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
