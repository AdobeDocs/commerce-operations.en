---
title: 'ACSD-62755: [!DNL TinyMCE] 7 needs font size and font added to editor initialization settings'
description: Apply the ACSD-62755 patch to fix the Adobe Commerce issue where [!DNL TinyMCE] 7 requires *font size* and *font family* to be specifically added within editor initialization settings.
feature: Page Content, Page Builder, Admin Workspace
role: Admin, Developer
exl-id: f61dc7b6-ac6b-45eb-a0a2-f3f0bff4422b
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 17d326fa-534a-55a5-b46f-8ae1de1e2f75
    internal-label: Page Content
  - id: cc250cf1-34eb-4863-80d0-d170d45ea067
    internal-label: Developer tools
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: ed510963-0b8c-4764-86f6-f3c7735bc334
    internal-label: Page Builder
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
# ACSD-62755: [!DNL TinyMCE] 7 needs font size and font added to editor initialization settings

The ACSD-62755 patch fixes the issue where [!DNL TinyMCE] 7 requires *font size* and *font family* selectors to be specifically added within editor initialization settings. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62755. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.5-p10

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4-p11, 2.4.5-p10, 2.4.6-p8, 2.4.7-p3 

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

[!DNL TinyMCE] 7 requires *font size* and *font family* selectors to be specifically added within editor initialization settings.

<u>Steps to reproduce</u>:

Go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]** > **[!UICONTROL Content]**, and select *[!UICONTROL Show Editor]*.
    
<u>Expected results</u>:

*Font size* and *font family* selectors are visible in the WYSIWYG editor.

<u>Actual results</u>:

*Font size* selector is missing from the WYSIWYG editor.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
