---
title: 'ACSD-62689: Unable to add categories in [!UICONTROL Related Product Rules] and widgets after depth 4'
description: Apply the ACSD-62689 patch to fix the Adobe Commerce issue where a customer is unable to add categories in [!UICONTROL Related Product Rules] and widgets after depth four nesting.
feature: Categories
role: Admin, Developer
exl-id: 2506744a-01c8-462b-9a27-cd0bdb5664f9
---
# ACSD-62689: Unable to add categories in *[!UICONTROL Related Product Rules]* and widgets after depth 4

>[!NOTE]
>
>This patch is replaced by [ACP2E-3689](/help/tools/quality-patches-tool/patches-available-in-qpt/v1-1-61/acp2e-3689-issues-with-category-tree-display-reflect-anchor-non-anchor-relationships.md).

The ACSD-62689 patch fixes the issue where a customer is unable to add categories in *[!UICONTROL Related Product Rules]* and widgets after depth four nesting. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-62689. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A customer is unable to add categories in *[!UICONTROL Related Product Rules]* and widgets after depth four nesting.

<u>Steps to reproduce</u>:

1. Create two categories named *[!UICONTROL Anchor]* and *[!UICONTROL Non-Anchor]* under the default root category. 
    * Ensure the *[!UICONTROL Is Anchor]* flag is disabled for the *[!UICONTROL Non-Anchor]* category.
1. Go to **[!UICONTROL Content]** > **[!UICONTROL Widgets]** and create a widget.
1. Under *[!UICONTROL Layout Updates]*, select **[!UICONTROL Non-Anchor Categories]** in the *[!UICONTROL Display on]* field.
1. Click **[!UICONTROL Specific Categories]**.
1. Click the category select icon.
1. Expand the root category.
1. Check the categories. Both should be disabled and not selectable.
1. Under *[!UICONTROL Layout Updates]*, select **[!UICONTROL Anchor Categories]** in the *[!UICONTROL Display on]* field. Then follow steps 5 and 6.
1. Check the categories. Both should be enabled and selectable.

<u>Expected results</u>:

In step 7, only the *[!UICONTROL Non-Anchor]* category should be selectable. In step 9, the *[!UICONTROL Anchor]* category should be selectable.

<u>Actual results</u>:

In step 7, both categories are not selectable. In step 9, both categories are selectable.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

