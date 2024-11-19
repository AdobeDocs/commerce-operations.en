---
title: 'ACSD-62485: `async.operations.all` consumer stops working when company is created'
description: Apply the ACSD-62485 patch to fix the Adobe Commerce issue where the `async.operations.all` consumer stops working when a B2B company is created. 
feature: B2B, Companies
role: Admin, Developer
---
# ACSD-62485: `async.operations.all` consumer stops working when company is created

The ACSD-62485 patch fixes the issue where the `async.operations.all` consumer stops working when a B2B company is created. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-62485. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6-p7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p7

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7, 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `async.operations.all` consumer stops processing messages when a B2B company is created, leading to incomplete operations.

<u>Prerequisites</u>:

B2B modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Create 2 customers.
1. Send a REST bulk request to create two companies, assigning the created customers as company administrators.
1. Start the consumer using the following command:

``` bin/magento queue:consumer:start async.operations.all --max-messages=20000 ```

<u>Expected results</u>:

The consumer processes 20,000 messages and ends successfully.

<u>Actual results</u>:

The consumer stops working immediately upon execution.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
