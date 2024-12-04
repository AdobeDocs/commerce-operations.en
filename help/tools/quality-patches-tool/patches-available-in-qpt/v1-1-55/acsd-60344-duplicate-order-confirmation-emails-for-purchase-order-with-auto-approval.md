---
title: 'ACSD-60344: Duplicate order confirmation emails on using [!UICONTROL Purchase Order] with auto-approval'
description: Apply the ACSD-60344 patch to fix the Adobe Commerce issue where duplicate order confirmation emails are being sent when using a [!UICONTROL Purchase Order] with auto-approval.
feature: Purchase Orders
role: Admin, Developer
exl-id: c4d415ee-b1ac-4094-9209-19b91f9a7666
---
# ACSD-60344: Duplicate order confirmation emails on using *[!UICONTROL Purchase Order]* with auto-approval 

The ACSD-60344 patch fixes the issue where duplicate order confirmation emails are being sent when using a *[!UICONTROL Purchase Order]* with auto-approval. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-60344. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3


>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Duplicate order confirmation emails are sent when using a *[!UICONTROL Purchase Order]* with auto-approval. 

<u>Prerequisites</u>

Enable B2B modules and *[!UICONTROL Purchase Order]*.

<u>Steps to reproduce</u>:

1. Create a company account and enable a *[!UICONTROL Purchase Order]* for it.
1. Create a regular user account and add it to the company account as a company user.
1. Place an order using this account.
1. Run cron and check emails.

<u>Expected results</u>:

Only one order confirmation email is received per order.

<u>Actual results</u>:

Two order confirmation emails are received.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
