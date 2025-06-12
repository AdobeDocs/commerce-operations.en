---
title: 'ACSD-64813: Unassigning categories in B2B shared catalog via REST API is slow'
description: Apply the ACSD-64813 patch to fix the Adobe Commerce issue where unassigning categories in a B2B shared catalog via the REST API is slow.
feature: B2B, REST, Categories
role: Admin, Developer
---

# ACSD-64813: Unassigning categories in B2B shared catalog via REST API is slow

The ACSD-64813 patch fixes the issue where it takes a long time to unassign categories in a [!DNL B2B] shared catalog. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-64813. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where it takes a long time to unassign categories in a [!DNL B2B] shared catalog.

<u>Steps to reproduce</u>:

<u>Expected results</u>:

The operation should finish in a reasonable time (under a couple of minutes).

<u>Actual results</u>:

Execution takes around 30 minutes or returns a timeout error. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.