---
title: 'ACSD-61534: Design configuration cannot be set using bin/magento config:set, and locked values can be altered via form manipulation'
description: Apply the ACSD-61534 patch to fix the Adobe Commerce issue where the design configuration can't be set using the `bin/magento config:set` command, and locked values can be altered through form manipulation.
feature: Configuration
role: Admin, Developer
---
# ACSD-61534: Design configuration can't be set using `bin/magento config:set`, and locked values can be altered via form manipulation

The ACSD-61534 patch fixes the issue where the design configuration can't be set using the `bin/magento config:set` command, and locked values can be altered through form manipulation. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-61534. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The design configuration can't be set using the `bin/magento config:set` command, and locked values can be altered through form manipulation. With this patch, locked values set from the Command-line tool (CLI) with `--lock-env` or `--lock-conf` can't be updated.

<u>Steps to reproduce</u>:

1. Lock a config value using a cloud environment variable, like `CONFIG_WEBSITESBASEDESIGNHEAD_INCLUDES`.
1. Go to the *[!UICONTROL Admin]* panel.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Design]** > **[!UICONTROL Configuration]**.
1. Click **[!UICONTROL Edit]** near the **[!UICONTROL Global/Main website]** in the second row.
1. Edit theme for a store view.
1. Open the HTML head.
1. Enable the disabled **[!UICONTROL Scripts and Style Sheets]** field using developer tools.
1. Change the value and save it.

<u>Expected results</u>:

A locked value can't be saved.

<u>Actual results</u>:

Table `core_config_data` contains an updated value for `design/head/includes`.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
