---
title: 'ACSD-62415: Adobe Commerce backend loads [!UICONTROL Categories] very slowly'
description: Apply the ACSD-62415 patch to fix the Adobe Commerce issue where the performance of the [!UICONTROL Categories] page in the [!UICONTROL Admin] panel loads very slowly when a large number of anchor categories are present.
feature: Admin Workspace
role: Admin, Developer
type: Troubleshooting
exl-id: 3101723d-dcc0-49fa-a823-2a2d37037534
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: bb2df8be-afdd-4818-b6b5-95ca1dd3bc3a
    internal-label: Admin workspace
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-62415: Adobe Commerce backend loads **[!UICONTROL Categories]** very slowly when anchor categories are present

The ACSD-62415 patch fixes the issue where the performance of the **[!UICONTROL Categories]** page in the **[!UICONTROL Admin]** panel loads very slowly when a large number of anchor categories are present. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-62415. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The **[!UICONTROL Categories]** page in the **[!UICONTROL Admin]** panel loads very slowly when a large number of anchor categories are present. 

<u>Steps to reproduce</u>:

1. Generate 3K anchor categories.
1. Open **[!UICONTROL Catalog]** > **[!UICONTROL Categories]** page in the **[!UICONTROL Admin]** panel.

<u>Expected results</u>:

The **[!UICONTROL Categories]** page loads quickly, and the query should not be repeated 1K times.

<u>Actual results</u>:

Loading takes 7 to 20 seconds, and the query is run more than 1K times.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
