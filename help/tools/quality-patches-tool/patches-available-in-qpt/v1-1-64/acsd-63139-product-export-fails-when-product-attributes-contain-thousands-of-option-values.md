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

The product export fails when product attributes contain thousands of option values.

<u>Steps to reproduce</u>:

1. Install Adobe Commerce with the B2B module.
1. Import a large database dump with:
   - ~7,000 products
   - ~450 product attributes
   - Some attributes having more than 100 options
1. Run the following command to install cron (if not already installed):

   ```
   bin/magento cron:install
   ```
   
1. Configure [!DNL RabbitMQ] by following the instructions in [[!DNL RabbitMQ] prerequisites](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/prerequisites/rabbitmq).
1. Open the `php.ini` file, set the memory limit to 4G, and restart the PHP service.
1. In the Admin Panel, go to **[!UICONTROL System]** -> *[!UICONTROL Data Transfer]* -> **[!UICONTROL Export]**.
1. In the *[!UICONTROL Export Settings]* section, set **[!UICONTROL Entity Type]** to *Products*, scroll to the bottom and click **[!UICONTROL Continue]**.
1. Run the following command to start the export processor:

   ```
   bin/magento queue:consumers:start exportProcessor --max-messages=1
   ```

<u>Expected results</u>:

The product export should be finished successfully.

<u>Actual results</u>:

The product export process fails and returns the following fatal error:

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
