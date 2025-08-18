---
title: "ACSD-67039: Customer records weren't saved due to rp_token system attribute validation"
description: Apply the ACSD-67039 patch to fix the Adobe Commerce issue where encoding diacritics causes validation breaks on rp_token.
feature: Customers, Admin Workspace
role: Admin, Developer
type: Troubleshooting
exl-id: e5995e28-b6b5-4955-a52a-895842c6b6e8
---
# ACSD-67039: Customer records weren't saved due to `rp_token` system attribute validation

The ACSD-67039 patch fixes the issue where customer records weren't saved due to validation of the `rp_token` system attribute and diacritics validation was only applied to the resulting customer email. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-67039. Please note that this issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p9

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6-p9 - 2.4.6-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Encoding diacritics causes validation failures on `rp_token`, which is excluded from validation. Diacritics are allowed only for email addresses, as intended.

<u>Steps to reproduce</u>:

1. Install the Adobe Commerce 2.4.4 version.
1. Create a customer.
1. Upgrade Adobe Commerce to version 2.4.6 from the 2.4.4 earlier version where the customer was already created.
1. Set the encryption key to `env.php` =
*d337b914e91ff703b1e94ba4156aadf0*
1. Set the below values into the database for any customer under the `customer_entity` table:
    *`rp_token` = *incr4869*
    *`rp_token_created_at` = *2021-04-29 20:06:14*
1. In the Admin panel, go to **[!UICONTROL Customers]** > **[!UICONTROL All Customers]**.
1. Edit the customer for which you just updated the above values.
1. Click **[!UICONTROL Save Customer]** or **[!UICONTROL Save and Continue Edit]**.

<u>Expected results</u>:

The customer values are saved successfully.

<u>Actual results</u>:

The customer record isn't saved, and the admin user sees the error message, *Something went wrong while saving the customer.*
The `system.log` contains the following error:

```
report.CRITICAL: Exception message: Notice: iconv(): Detected an incomplete multibyte character in input string in /vendor/magento/module-eav/Model/Attribute/Data/Text.php on line 190
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
