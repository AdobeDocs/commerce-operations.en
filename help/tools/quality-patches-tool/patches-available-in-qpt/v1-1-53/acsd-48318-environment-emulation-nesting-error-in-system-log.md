---
title: 'ACSD-48318: Environment emulation nesting error in `system.log`'
description: Apply the ACSD-48318 patch to fix the Adobe Commerce issue where an error message *main.ERROR:Environment emulation nesting is not allowed* appears in `system.log` every time an invoice email is sent.
feature: System, Orders
role: Admin, Developer
exl-id: 24af18de-80dd-4e0a-bdf9-5b9c075fc608
---
# ACSD-48318: Environment emulation nesting error in `system.log`

The ACSD-48318 patch fixes the issue where an error message *main.ERROR:Environment emulation nesting is not allowed* appears in `system.log` every time an invoice email is sent. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.53 is installed. The patch ID is ACSD-48318. Please note that the issue is fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The error message *Environment emulation nesting is not allowed* appears in `system.log` every time an invoice email is sent.

<u>Steps to reproduce</u>:

1. Place an order and generate invoice.
1. Open the invoice from Admin and click **[!UICONTROL Send Email]**.
1. Follow the same step for *credit memo* and *shipment* by clicking **[!UICONTROL Send Email]**.

<u>Expected results</u>:

No errors in `system.log`.

<u>Actual results</u>:

`system.log` is flooded with *main.ERROR: Environment emulation nesting is not allowed* error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
