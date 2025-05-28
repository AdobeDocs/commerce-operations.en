---
title: 'ACSD-65684: Performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table'
description: Apply the ACSD-65684 patch to fix the Adobe Commerce issue where performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table.
feature: B2B,
role: Admin, Developer
---

# ACSD-65684: Performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table

The ACSD-65684 patch fixes the issue where performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65684. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) B2B 1.5.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) B2B 1.5.2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Performance issue where upgrading the Magento_Company module after updating to B2B 1.5.2 took an excessively long time when processing a large number of records (~100,000+) in the company_structure table.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce 2.4.7-p4 with B2B
1. Add 100,000 records to company_structure table
1. Upgrade to Commerce 2.4.7-p5 and latest B2B module
1. Apply ACSD-65540 patch
1. Run

```
bin/magento setup:upgrade
```

<u>Expected results</u>:

setup:upgrade will complete within a reasonable time

<u>Actual results</u>:

setup:upgrade will take a long time to complete

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.