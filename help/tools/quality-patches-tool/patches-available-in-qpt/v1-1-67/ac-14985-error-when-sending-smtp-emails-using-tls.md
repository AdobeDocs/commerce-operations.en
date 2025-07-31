---
title: 'AC-14985: Error when sending SMTP emails using TLS'
description: Apply the AC-14985 patch to fix the Adobe Commerce issue where an error occurs when sending Simple Mail Transfer Protocol (SMTP) email using Transport Layer Security (TLS).
feature: Configuration
role: Admin, Developer
type: Troubleshooting
---

# AC-14985: Error when sending SMTP emails using TLS

The AC-14985 patch fixes an issue where an error occurs when sending Simple Mail Transfer Protocol (SMTP) email using Transport Layer Security (TLS). This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.67 is installed. The patch ID is AC-14985. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error occurs when sending email using Simple Mail Transfer Protocol (SMTP) with Transport Layer Security (TLS) enabled.

<u>Steps to reproduce</u>:

1. Set up the SMTP configuration as follows:
 * Transport: SMTP
 * Host: url.to.smtp.host
 * Port: 587
 * SSL: TLS

<u>Expected results</u>:

The email sends successfully without errors.

<u>Actual results</u>:

The following error appears:

```
error:1408F10B:SSL routines:ssl3_get_record:wrong version number [] []
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
