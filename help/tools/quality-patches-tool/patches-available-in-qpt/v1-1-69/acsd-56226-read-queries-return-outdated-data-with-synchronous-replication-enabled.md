---
title: 'ACSD-56226: READ queries return outdated data with `synchronous_replication` enabled'
description: Apply the ACSD-56226 patch to fix the Adobe Commerce issue where READ queries return outdated data when the `synchronous_replication` flag is enabled for slave connection on Cloud.
feature: System
role: Admin, Developer
type: Troubleshooting
---

# ACSD-56226: READ queries return outdated data with `synchronous_replication` enabled

The ACSD-56226 patch fixes the issue where READ queries return outdated data when the `synchronous_replication` flag is enabled for slave connection on Cloud. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-56226. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

READ queries return outdated data when the `synchronous_replication` flag is enabled. This causes the slave connection to be disabled, leading to database overload.

<u>Steps to reproduce</u>:

1. Set `MYSQL_USE_SLAVE_CONNECTION` to *true* in the environment variables on Adobe Commerce on cloud infrastructure.
1. Add the following configuration to `.magento.env.yaml` to set `synchronous_replication` to *false*:

   ```
   DATABASE_CONFIGURATION:
     _merge: true
     slave_connection:
       default:
         synchronous_replication: false
   ```
 
 1. Redeploy and perform frontend actions such as login, add to cart, or place an order.

<u>Expected results</u>:

Slave connection remains enabled when `synchronous_replication` is set to *false*.

<u>Actual results</u>:

Slave connection is disabled when `synchronous_replication` is set to *false*, causing database overload.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
