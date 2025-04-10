---
title: 'ACSD-64684: Validation error when saving a gift card with a value over 999 due to the comma in one thousand (1,000)'
description: Apply the ACSD-64684 patch to fix the Adobe Commerce issue where a validation error occurs when saving a gift card with a value over 999 due to the comma in "one thousand" (1,000).
feature: Catalog Management
role: Admin, Developer
---

# ACSD-64684: Validation error when saving a gift card with a value over 999 due to the comma in one thousand (1,000)

The ACSD-64684 patch fixes the issue where a validation error occurs when saving a gift card with a value over 999 due to the comma in "one thousand" (1,000). This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.61 is installed. The patch ID is ACSD-64684. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A validation error occurs when editing and saving a gift card with a value greater than 999 due to the comma (thousand separator) in the number, such as 'one thousand' (1,000).

<u>Steps to reproduce</u>:

1. Create a Gift Card Product.
    1. Enter 1,000 as the [!UICONTROL Amount].
    1. Click **[!UICONTROL Save]**.

<u>Expected results</u>:

* The new gift card with an amount of 1,000 is saved.

<u>Actual results</u>:

* A validation error occurs when the gift card amount is greater than 999.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
