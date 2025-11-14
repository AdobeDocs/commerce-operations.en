---
title: 'ACSD-61969: Required to type coupon code as configured in uppercase or lowercase'
description: Apply the ACSD-61969 patch to fix the Adobe Commerce issue where a user is required to type in the coupon code exactly as it is configured in uppercase or lowercase.
feature: Price Rules
role: Admin, Developer
exl-id: 4bdf797b-2570-49f8-8e03-952b49ed1d18
type: Troubleshooting
---
# ACSD-61969: Required to type coupon code as configured in uppercase or lowercase

The ACSD-61969 patch fixes the issue where a user is required to type in the coupon code exactly as it is configured in uppercase or lowercase. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.53 is installed. The patch ID is ACSD-61969. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

You are required to type in the coupon code exactly as configured in uppercase or lowercase when applying them from the backend. They are case-sensitive in the Admin order creation but not case-sensitive on the storefront. 

<u>Steps to reproduce</u>:

1. Create a *[!UICONTROL Cart Price Rule]* with a specific coupon *TEST*. Make sure the coupon code is in uppercase.
1. Create an order in the Admin.
1. Add *test* to the *[!UICONTROL Apply Coupon Code]* field and click the arrow near the field to apply the coupon.
1. Observe the result.

<u>Expected results</u>:

The coupon is applied successfully. The coupon field is not case-sensitive.

<u>Actual results</u>:

The coupon is not applied. The following error is displayed:

*The "test" coupon code isn't valid. Verify the code and try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
