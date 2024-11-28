---
title: 'ACSD-58685: Disabled sales emails are sent upon re-enabling'
description: Apply the ACSD-58685 patch to fix the Adobe Commerce issue where sales emails initiated while email communication is disabled are sent once email communication is re-enabled.
feature: Configuration
role: Admin, Developer
---
# ACSD-58685: Ensures disabled sales emails are not sent upon re-enabling

The ACSD-58685 patch fixes the issue where sales emails initiated while email communication was disabled would still be sent once email communication was re-enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58685. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected Products and Versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Sales emails initiated while email communication was disabled are sent once email communication is re-enabled.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Sales]** < **[!UICONTROL Configuration]** < **[!UICONTROL Advanced]** < **[!UICONTROL System]** < **[!UICONTROL Mail Sending Settings]** and set **[!UICONTROL Disable Email Communications]** to *[!UICONTROL No]*
1. Navigate to **[!UICONTROL Sales]** → **[!UICONTROL Configuration]** → **[!UICONTROL Sales]** → **[!UICONTROL Sales Emails]** → **[!UICONTROL General Settings]** and set **[!UICONTROL Asynchronous Sending]** to *[!UICONTROL Yes]*.
1. Clear the configuration cache.
1. Place an order.
1. Enable email communication.
1. Place another order.
1. Run the cron.

<u>Expected results</u>:

Only the email for the second order is sent.

<u>Actual results</u>:

Emails for both the first and second orders are sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
