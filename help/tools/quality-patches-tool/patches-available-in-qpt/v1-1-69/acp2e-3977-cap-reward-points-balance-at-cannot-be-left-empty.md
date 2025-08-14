---
title: 'ACP2E-3977: Cap Reward Points Balance At field cannot be left empty'
description: Apply the ACP2E-3977 patch to fix the Adobe Commerce issue where the Cap Reward Points Balance At field could not be left empty when Rewards Points Balance Redemption Threshold field was set, causing a validation error.
feature: Configuration, Rewards
role: Admin, Developer
---

# ACP2E-3977: **[!UICONTROL Cap Reward Points Balance At field]** cannot be left empty

The ACP2E-3977 patch fixes the issue where **[!UICONTROL Cap Reward Points Balance At]** field cannot be left empty. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACP2E-3977. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p10

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where **[!UICONTROL Cap Reward Points Balance At]** cannot be left empty.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]** > **[!UICONTROL Customers]** > **[!UICONTROL Reward points]**.
1. Set **[!UICONTROL Rewards Points Balance Redemption Threshold]** = *30*.
1. Leave **[!UICONTROL Cap Reward Points Balance At]** empty.
1. Save.

<u>Expected results</u>:

An empty value for **[!UICONTROL Cap Reward Points Balance At]** is allowed and disables the limitation.

<u>Actual results</u>:

*The Cap Reward Points Balance is invalid. The balance needs to be a positive number or left empty. Verify and try again.* error is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
