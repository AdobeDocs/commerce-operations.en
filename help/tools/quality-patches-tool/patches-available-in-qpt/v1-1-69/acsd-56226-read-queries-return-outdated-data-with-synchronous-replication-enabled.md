---
title: 'ACSD-56226: READ queries return outdated data with 'synchronous_replication' enabled'
description: Apply the ACSD-56226 patch to fix the Adobe Commerce issue where DB critical read fails when 'synchronous_replication' is enabled for slave connection on Cloud.
feature: System
role: Admin, Developer
---

# ACSD-56226: READ queries return outdated data with 'synchronous_replication' enabled

The ACSD-56226 patch fixes the issue where READ queries at the slave node return outdated data when the 'synchronous_replication' flag is enabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-56226. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p11

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where READ queries at the slave node return outdated data when the 'synchronous_replication' flag is enabled.

<u>Steps to reproduce</u>:

1. Enable slave connections - MYSQL_USE_SLAVE_CONNECTION: true
2. Change synchronous_replication to "false" by using this configuration in .magento.env.yaml

```
DATABASE_CONFIGURATION:
_merge: true slave_connection: default:
synchronous_replication: false
```

3. Do some activities on the frontend like login/add to cart/place order

<u>Expected results</u>:

With "synchronous_replication" = false, slave connection should still enabled

<u>Actual results</u>:

AC does not use slave connection anymore, which causes overloading of the DB

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.