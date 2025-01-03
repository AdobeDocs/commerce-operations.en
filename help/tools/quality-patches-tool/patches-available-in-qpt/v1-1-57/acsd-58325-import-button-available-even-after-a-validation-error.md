---
title: "ACSD-58325: [!UICONTROL Import] button available even after a validation error"
description: Apply the ACSD-58325 patch to fix the Adobe Commerce issue where the [!UICONTROL Import] button is available even after a validation error.
feature: Data Import/Export
role: Admin, Developer
---

# ACSD-58325: [!UICONTROL Import] button available even after a validation error

The ACSD-58325 patch fixes the issue where the **[!UICONTROL Import]** button is available even after a validation error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-58325. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**
* Adobe Commerce on-premises 2.4.6 - 2.4.6-p8
* Adobe Commerce on cloud infrastructure 2.4.6 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Fixes the issue where the Import button is available even after a validation error.

<u>Steps to reproduce</u>:

1. Create the CSV file for the product import with an incorrect image name in the file.
1. Create a scheduled product import using the created CSV file.
1. Wait until the scheduled import is performed.
1. Check [!UICONTROL Last outcome] in **[!UICONTROL Scheduled Imports/Exports]** grid.

<u>Expected results</u>:

[!UICONTROL Last outcome] should be [!UICONTROL Failed]

<u>Actual results</u>:

[!UICONTROL Last outcome] is [!UICONTROL Successful].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

