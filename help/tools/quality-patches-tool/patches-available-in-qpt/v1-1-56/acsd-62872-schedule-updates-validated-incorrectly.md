---
title: 'ACSD-62872: Schedule updates validated incorrectly'
description: Apply the ACSD-62872 patch to fix the Adobe Commerce issue with unique attribute validation where scheduled updates are validated incorrectly.
feature: Catalog Management, Admin Workspace
role: Admin, Developer
exl-id: bd0d452b-aae3-4682-8a2c-471a7f8bf132
---
# ACSD-62872: Schedule updates validated incorrectly

The ACSD-62872 patch fixes the issue with unique attribute validation where scheduled updates are validated incorrectly. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62872. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Scheduled update to a custom attribute is validated incorrectly.

<u>Steps to reproduce</u>:

1. Create a custom attribute for categories.
1. Navigate to **[!UICONTROL Catalog]** > **[!UICONTROL Categories]**.
1. Create a new category.
1. In the same category, go to the **[!UICONTROL Scheduled Updates]** section.
1. Set up a new update for this category at any future time.
1. Before starting the scheduled update, try editing the created schedule update for the category.

<u>Expected results</u>:

Should be able to update the scheduled update.

<u>Actual results</u>:

An error is thrown: *The value of the "Custom Attribute" attribute isn't unique. Set a unique value and try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on Cloud Infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
