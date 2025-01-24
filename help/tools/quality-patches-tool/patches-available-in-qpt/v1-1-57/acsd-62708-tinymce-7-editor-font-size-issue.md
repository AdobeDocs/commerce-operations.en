---
title: 'ACSD-62708: [!DNL TinyMCE] 7 editor font size in admin panel shows PT'
description: Apply the ACSD-62708 patch to fix the Adobe Commerce issue where [!DNL TinyMCE] 7 editor font size in the admin shows PT and not PX. Now, you can also set the font size in PX instead of PT.
feature: Admin Workspace
role: Admin, Developer
exl-id: 037a5831-dbc7-4834-ab8e-9b1f765b92b2
---
# ACSD-62708: [!DNL TinyMCE] 7 editor font size in admin panel shows PT

The ACSD-62708 patch resolves the issue where the [!DNL TinyMCE] 7 editor font size in the admin panel displays in PT instead of PX. This patch allows you to set the font size in PX. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62708. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4-p11, 2.4.5-p10, 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!DNL TinyMCE] 7 editor in the admin panel displays the font size in PT instead of PX.

<u>Steps to reproduce</u>:

1. Open the product edit page in the admin panel.
1. Expand the [!UICONTROL Content] section.
1. Check the font controls in the [!DNL TinyMCE] editor.

<u>Expected results</u>:

The font size should be in PX.

<u>Actual results</u>:

The font size is in PT.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
