---
title: 'ACSD-64732: Third-party controllers not cached correctly with customer segments'
description: Apply the ACSD-64732 patch to fix the Adobe Commerce issue where third-party controllers are not cached correctly with customer segments.
feature: Cache
role: Admin, Developer
exl-id: 378e5a96-06dd-4796-9e45-a67cf539fcce
type: Troubleshooting
---
# ACSD-64732: Third-party controllers not cached correctly with customer segments

The ACSD-64732 patch fixes the issue where the third-party controllers are not cached correctly with customer segments. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.62 is installed. The patch ID is ACSD-64732. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Third-party controllers are not cached correctly with customer segments.

<u>Steps to reproduce</u>:

1. Go to the custom controller (/catalog/category/vary).
1. Go to the **[!UICONTROL Network]** tab and check the value of **[!DNL X-Magento-Vary]**.

<u>Expected results</u>:

The **[!UICONTROL X-Magento-Vary]** value should be the same on the custom controller.

<u>Actual results</u>:

The value of **[!UICONTROL X-Magento-Vary]** is different, which causes cache misses. This means the previously generated cache can't be used when visiting the custom controller.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
