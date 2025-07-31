---
title: 'ACSD-66049: Non-English storefronts display incorrect pricing due to the ICU library version'
description: Apply the ACSD-66049 patch to fix the Adobe Commerce issue where incorrect pricing displayed on non-English storefronts due to ICU library version mismatch in older PHP environments (versions 63.1 to 74.1).
feature: Content
role: Admin, Developer
---

# ACSD-66049: Non-English storefronts display incorrect pricing due to the ICU library version

The ACSD-66049 patch fixes the issue where non-English storefronts display incorrect pricing due to the ICU library version. (Older PHP ICU libraries 63.1 - 74.1). This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is ACSD-66049. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5-p3 - 2.4.5-p13, 2.4.7 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where non-English storefronts display incorrect pricing due to the ICU library version. (Older PHP ICU libraries 63.1 - 74.1).

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Stores]** > Config > General > Locale > Locale Options. **[!UICONTROL Configure Locale]** = *[UICONTOL Hebrew (Israel)]*.
2. Create a product with price = 100.
3. View the product page in the frontend.

<u>Expected results</u>:

The displayed price is not 0.

<u>Actual results</u>:

After briefly appearing as 100, the price is immediately updated to 0.
(Issue happens to older PHP ICU libraries 63.1 - 74.1)

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
