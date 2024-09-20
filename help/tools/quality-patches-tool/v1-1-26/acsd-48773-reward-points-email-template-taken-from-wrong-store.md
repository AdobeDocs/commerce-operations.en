---
title: 'ACSD-48773: Reward points email template taken from wrong store'
description: Apply the ACSD-48773 patch to fix the Adobe Commerce issue where the reward points email template is taken from the wrong store.
exl-id: 96dda97c-5177-4883-ad2b-709928cb5f4d
feature: Admin Workspace, Communications, Marketing Tools, Orders, Personalization, Rewards
role: Admin
---
# ACSD-48773: Reward points email template taken from wrong store

The ACSD-48773 patch fixes the issue wwhere the reward points email template is taken from the wrong store. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.26 is installed. The patch ID is ACSD-48773. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product price reindex is not working if the bundle product is not assigned to any website.

<u>Steps to reproduce</u>:

1. Create 2 websites, 2 stores, and 2 store views.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Product Reviews]** and enable **[!UICONTROL Reviews]**.
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Store Email Addresses]**.
Switch to the **[!DNL default website scope]**, and set the **[!UICONTROL Customer Support Sender Email]** address, (For example: *support_base@example.com*).
Switch to the **[!DNL second website scope]**, and set the **[!UICONTROL Customer Support Sender Email]** address to another value (For example: *support_second@example.com*).
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Customer Configuration]** > **[!UICONTROL Account Sharing Options]** > **[!UICONTROL Share Customer Accounts]**, and set **[!UICONTROL Share Customer Accounts]** = *Per Website*.
1. Under **[!UICONTROL Reward Points]**, set the following:
**[!UICONTROL Enable Reward Points Functionality]** = *Yes*
**[!UICONTROL Enable Reward Points Functionality on Storefront]** = *Yes*
**[!UICONTROL Actions for Acquiring Reward Points by Customers]** > **[!UICONTROL Review Submission]** and set **[!UICONTROL Review Submission]** = *150*
**[!UICONTROL Email Notification Settings]** > **[!UICONTROL Email Sender]** and set **[!UICONTROL Email Sender]** = *Customer Support*
1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Other Settings]** > **[!UICONTROL Reward Exchange Rates]** and set up the exchange rates for the second website for both **[!UICONTROL Points/Currency]** and **[!UICONTROL Currency/Points]**.
1. Create a customer account on the second website.
1. Log in as the customer on the second website.
1. Make sure to enable **[!UICONTROL Subscribe]** for **[!UICONTROL Balance Updates]**.
1. Submit a product review.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL User Content]** > **[!UICONTROL Pending Reviews]**.
1. Change the status of the new review to ***[!UICONTROL Approved]*** and **[!UICONTROL Save]**.
1. Wait for the email to arrive.

<u>Expected results</u>:

The reward points update email should have been sent by the email sender configured on the second website scope.

<u>Actual results</u>:

The reward points update email was sent by the email sender configured on the default website scope.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
