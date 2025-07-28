---
title: 'ACSD-66118: Updating store view code clears Design Configuration settings if configuration cache isn’t refreshed'
description: Apply the ACSD-66118 patch to fix the Adobe Commerce issue where updating the store view code clears the design configuration (theme and custom settings) if the configuration cache isn’t properly refreshed.
feature: Cache, Configuration, Themes
role: Admin, Developer
---

# ACSD-66118: Updating store view code clears Design Configuration settings if configuration cache isn’t refreshed

The ACSD-66118 patch fixes the issue where updating the store view code clears Design Configuration settings if the configuration cache is not refreshed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66118. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where updating the store view code clears Design Configuration settings if the configuration cache is not refreshed.

<u>Steps to reproduce</u>:

1. Log in to Admin panel.
2. Navigate to Stores > Settings > All Stores.
3. Edit an existing Store View that has a custom theme set in Content > Design > Configuration.
4. Change the Code field (e.g., from storeview_1 to storeview_main).
5. Save the Store View.
6. Refresh or reopen the Content > Design > Configuration page for the updated Store View, and you may see no theme selected.

<u>Expected results</u>:

The design configuration (theme and custom settings) remains intact after changing the store view code.

<u>Actual results</u>:

The design configuration is not displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.