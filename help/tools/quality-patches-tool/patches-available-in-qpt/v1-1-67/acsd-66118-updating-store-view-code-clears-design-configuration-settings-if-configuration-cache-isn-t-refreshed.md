---
title: 'ACSD-66118: Updating [!UICONTROL Store View Code] clears [!UICONTROL Design Configuration] settings if [!UICONTROL Configuration Cache] isn’t refreshed'
description: Apply the ACSD-66118 patch to fix the Adobe Commerce issue where updating the [!UICONTROL Store View Code] clears the [!UICONTROL Design Configuration] (theme and custom settings) if the [!UICONTROL Configuration Cache] isn’t properly refreshed.
feature: Cache, Configuration, Themes
role: Admin, Developer
type: Troubleshooting
---

# ACSD-66118: Updating **[!UICONTROL Store View Code]** clears **[!UICONTROL Design Configuration]** settings if **[!UICONTROL Configuration Cache]** isn’t refreshed

The ACSD-66118 patch fixes the issue where updating the **[!UICONTROL Store View Code]** clears **[!UICONTROL Design Configuration]** settings if the **[!UICONTROL Configuration Cache]** isn't refreshed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66118. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

**[!UICONTROL Design Configuration]** settings (such as theme and custom settings) are cleared when updating the **[!UICONTROL Store View Code]** field, if the **[!UICONTROL Configuration Cache]** isn't refreshed.

<u>Steps to reproduce</u>:

1. Log in to **[!UICONTROL Admin]** panel.
2. Navigate to **[!UICONTROL Stores]** > *[!UICONTROL Settings]* > **[!UICONTROL All Stores]**.
3. Edit a store view that has a custom theme configured in **[!UICONTROL Content]** > *[!UICONTROL Design]* > **[!UICONTROL Configuration]**.
4. Change the **[!UICONTROL Code]** field (for example, from `storeview_1` to `storeview_main`).
5. Click **[!UICONTROL Save Store View]** to save the changes.
6. Refresh or reopen the **[!UICONTROL Content]** > *[!UICONTROL Design]* > **[!UICONTROL Configuration]** page for the updated **[!UICONTROL Store View]**, and no theme will be selected.

<u>Expected results</u>:

After updating the **[!UICONTROL Store View Code]**, the **[!UICONTROL Design Configuration]** (including the theme and custom settings) should remain intact.

<u>Actual results</u>:

The **[!UICONTROL Design Configuration]** is cleared. Theme reverts to default and custom settings are lost.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
