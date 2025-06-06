---
title: 'ACSD-65684: Upgrading Magento_Company in B2B 1.5.2 is slow with over 100,000 records in company_structure'
description: Apply the ACSD-65684 patch to fix the Adobe Commerce issue where upgrading the Magento_Company module in B2B 1.5.2 takes too long due to processing a large number of records (~100,000+) in the company_structure table.
feature: B2B
role: Admin, Developer
---

# ACSD-65684: Upgrading `Magento_Company` in [!DNL B2B] 1.5.2 is slow with over 100,000 records in `company_structure`

The ACSD-65684 patch fixes a performance issue where upgrading the `Magento_Company` module in [!DNL B2B] 1.5.2 takes too long when processing 100,000+ records in the `company_structure` table. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65684. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce B2B (all deployment methods) 1.5.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 1.5.2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Performance issue where upgrading the `Magento_Company` module in B2B 1.5.2 takes too long when processing 100,000+ records in the `company_structure` table.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce 2.4.7-p4 with B2B.
1. Add 100,000 records to `company_structure` table.
1. Upgrade to Adobe Commerce 2.4.7-p5 and the latest B2B module (1.5.2).
1. Apply patch ACSD-65540.
1. Run:

```
bin/magento setup:upgrade
```

<u>Expected results</u>:

`setup:upgrade` completes in a reasonable time.

<u>Actual results</u>:

`setup:upgrade` takes an excessively long time to complete.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
