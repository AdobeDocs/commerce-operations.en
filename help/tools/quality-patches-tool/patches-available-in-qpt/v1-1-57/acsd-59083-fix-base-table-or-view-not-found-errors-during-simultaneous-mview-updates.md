---
title: 'ACSD-59083: Base table or view not found errors during simultaneous mview updates'
description: Apply the ACSD-59083 patch to fix the Adobe Commerce issue where certain database update operations fail with the error 'Base table or view not found'.
feature: System
role: Admin, Developer
---
# ACSD-59083: *Base table or view not found* errors during simultaneous `mview` updates

The ACSD-59083 patch fixes the issue where certain database update operations fail with the error 'Base table or view not found' when `mview` updates run simultaneously. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-59083. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods)  2.4.5-p5

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Certain database update operations result in 'Base table or view not found' errors when mview updates run simultaneously.

<u>Steps to reproduce</u>:

1. Set indexer mode to **[!UICONTROL Update on Schedule]**
1. Insert records into cl tables using the following SQL commands:

```
INSERT INTO catalogrule_product_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalogrule_rule_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalogsearch_fulltext_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalog_category_product_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalog_product_attribute_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalog_product_category_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO catalog_product_price_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO customer_dummy_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO design_config_dummy_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO salesrule_rule_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO targetrule_product_rule_cl SELECT NULL, entity_id FROM catalog_product_entity;
INSERT INTO targetrule_rule_product_cl SELECT NULL, entity_id FROM catalog_product_entity;
```

1. Install the `setup/performance-toolkit/profiles/ce/small.xml` profile.
1. Add a breakpoint in the file `magento2ee/lib/internal/Magento/Framework/ForeignKey/Config/DbReader.php` at line 72.
1. Clear the cache.
1. Click **[!UICONTROL Add to Cart]** on any product.
1. Start the cron job when execution hits the breakpoint.
1. Resume the process after starting the cron job.

<u>Expected results</u>:

The database operations execute successfully without errors.

<u>Actual results</u>:

An error occurs during execution:

```
SQLSTATE[42S02]: Base table or view not found: 1146 Table 'magento24.design_config_dummy_cl__tmp663bb682960345_17794892' doesn't exist
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
