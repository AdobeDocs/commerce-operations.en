---
title: "ACSD-62591: Theme doesn't switch when **[!UICONTROL User Agent Rules]** configured"
description: Apply the ACSD-62591 patch to fix the Adobe Commerce issue where the theme doesn't switch properly when the **[!UICONTROL User Agent Rules]** are configured.
feature: Themes
role: Admin, Developer
exl-id: 7b206b25-8918-40a6-a956-d38d5058d38f
type: Troubleshooting
---
# ACSD-62591: Theme doesn't switch properly when [!UICONTROL User Agent Rules] configured

The ACSD-62591 patch fixes the issue where the theme doesn't switch properly when the **[!UICONTROL User Agent Rules]** are configured. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-62591. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The theme doesn't switch properly when the **[!UICONTROL User Agent Rules]** are configured.

<u>Steps to reproduce</u>:

1. Open Commerce **[!UICONTROL Admin]** > **[!UICONTROL Content]** > **[!UICONTROL Design]** > **[!UICONTROL Configuration]**.
1. Edit a store view theme.
1. Set `/iPhone|iPod|BlackBerry|Palm|Googlebot-Mobile|Mobile|mobile|mobi|Windows Mobile|Safari Mobile|Android|Opera Mini/i` in **[!UICONTROL User Agent Rules]** and choose a different theme.
1. Save changes and clear caches.
1. Open a Storefront page on a mobile device.
1. Open the same page from a desktop browser.

<u>Expected results</u>:

The desktop browser and the mobile device display pages using their respective themes.

<u>Actual results</u>:

The desktop browser displays the cached page with the mobile theme.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

