---
title: 'ACSD-65540: SQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table'
description: Apply the ACSD-65540 patch to fix the Adobe Commerce issue where sQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table.
feature: B2B
role: Admin, Developer
---

# ACSD-65540: SQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table

The ACSD-65540 patch fixes the issue where sQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-65540. Please note that this issue is scheduled to be fixed in Adobe Commerce TBD.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) B2B 1.5.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) B2B 1.5.2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

SQL syntax error occurs due to the absence of the REGEXP_LIKE function when updating the company_structure table.

<u>Steps to reproduce</u>:

1. Upgrade to B2B 1.5.2
1. Run

```
bin/magento setup:upgrade
```

<u>Expected results</u>:

Upgrade completes succesfully.

<u>Actual results</u>:

```
Unable to apply data patch Magento\Company\Setup\Patch\Data\SetCompanyForStructure for module Magento_Company. Original exception message: SQLSTATE[42000]: Syntax error or access violation: 1305 FUNCTION REGEXP_LIKE does not exist, query was: UPDATE `company_structure` SET `company_id` = ? WHERE (REGEXP_LIKE(path, '^331(/.+)?$'))
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
