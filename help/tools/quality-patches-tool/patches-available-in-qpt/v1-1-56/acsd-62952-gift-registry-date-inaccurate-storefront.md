---
title: 'ACSD-62952: Gift Registry date displayed inaccurately on the storefront'
description: Apply the ACSD-62952 patch to fix the Adobe Commerce issue where the Gift Registry date is displayed inaccurately on the storefront
feature: Gift, Storefront
role: Admin, Developer
---

# ACSD-62952: Gift Registry date displayed inaccurately on the storefront

The ACSD-62952 patch fixes the issue where the Gift Registry date is displayed inaccurately on the storefront. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56 is installed. The patch ID is ACSD-62952. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The event date displayed on the storefront for a Shared Gift Registry is incorrectly shown as one day earlier than the actual date.

<u>Steps to reproduce</u>:

1. Log in to the frontend as the customer
1. In the [!UICONTROL My Account] dashboard, click **[!UICONTROL Gift Registry]**
1. If there is no existing registry, create one and specify any date
1. Add any items to the cart
1. From the cart page, click **[!UICONTROL Add all items to Gift Registry]**
1. Share the Gift Registry

<u>Expected results</u>:
The Gift Registry displays the correct event date.

<u>Actual results</u>:
The Gift Registry opened from the invitation email displays the event date as one day earlier.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.

