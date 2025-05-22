---
title: 'ACSD-63139: Product export fails when product attributes contain thousands of option values'
description: Apply the ACSD-63139 patch to fix the Adobe Commerce issue where product export fails when product attributes contain thousands of option values.
feature: Data Import/Export
role: Admin, Developer
---

# ACSD-63139: Product export fails when product attributes contain thousands of option values

The ACSD-63139 patch fixes the issue where product export fails when product attributes contain thousands of option values. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.64 is installed. The patch ID is ACSD-63139. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p10

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product export fails when product attributes contain thousands of option values.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with B2B
1. Import large DB dump (<sub>7K products, </sub>450 attributes, part of them should have more than 100 options)
1. Install cron (if not already installed)

```
bin/magento cron:install
```

1. Configure RabbitMQ using https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/prerequisites/rabbitmq
1. Change the memory limit in php.ini to 4G and restart PHP
1. Go to admin panel -> System -> Data Transfer -> Export -> Select Entity Type = Products, scroll down and click Continue button
1. Run command

```
bin/magento q:c:s exportProcessor --max-messages=1
```


<u>Expected results</u>:

Export should be finished successfully

<u>Actual results</u>:


```
Fatal error: Allowed memory size of 4294967296 bytes exhausted (tried to allocate 12288 bytes) in /var/www/html/app/code/Magento/Catalog/Model/ResourceModel/Product/Collection.php on line 597
```


## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.