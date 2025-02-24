---
title: 'ACSD-63793: Import processes interfere with each other in different browser tabs'
description: Apply the ACSD-63793 patch to fix the Adobe Commerce issue where import processes interfere with each other in different browser tabs.
feature: Data Import/Export
role: Admin, Developer
---

# ACSD-63793: Import processes interfere with each other in different browser tabs

The ACSD-63793 patch fixes the issue where import processes interfere with each other in different browser tabs. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.59 is installed. The patch ID is ACSD-63793. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Importing data through the Admin UI interferes with another import, causing data from one import to be processed in another.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL System]** > **[!UICONTROL Data Transfer]** > **[!UICONTROL Import]**.
1. Set **[!UICONTROL Entity Type]** to *[!UICONTROL Customers and Addresses] (single file)*.
1. Set **[!UICONTROL Import Behavior]** to *[!UICONTROL Add/Update]*.
1. Select a valid file to import.
1. Click the **[!UICONTROL Check Data]** button.
1. Keep this tab open.
1. Open a new tab and repeat the steps with a file containing invalid data (for example, two identical emails for different customers).
1. Switch back to the first tab.
1. Click the **[!UICONTROL Import]** button at the bottom.

<u>Expected results</u>:

The import process should not interfere with each other.

<u>Actual results</u>:

The import process completes, and the report file is available for download. It indicates an error in the second row, and data from another import is processed, even though the initial validation passed without any errors.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
