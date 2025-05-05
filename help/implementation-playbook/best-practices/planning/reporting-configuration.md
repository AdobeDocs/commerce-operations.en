---
title: Best practice for Report Configuration
description: Optimize site performance by removing the reporting module if you are not using it.
role: Admin
feature: Best Practices, Configuration
exl-id: 8c991b8a-affb-4a9e-9383-671f595ff89e
---
# Best practice for report configuration

If your business does not require reporting or dynamic customer segments functionality, disable the [Reports functionality](https://experienceleague.adobe.com/en/docs/commerce-admin/config/general/reports) to improve store performance.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Disable reporting

If you do not use the Reports or dynamic customer segments, disable the Reports functionality.

1. From the Admin, navigate to **Stores** > **Settings** > **Configuration** > **General** > **Reports**.
1. Under **General Options**, set **Enable Reports** to *No*.
1. Flush cache by running `php bin/magento cache:flush` or in the Admin under **System** > **Tools** > **Cache Management**.

## Additional information

- [Generate reports in Adobe Commerce](https://experienceleague.adobe.com/en/docs/commerce-admin/start/reporting/reports-menu)
- [Customer dynamic segments](https://experienceleague.adobe.com/en/docs/commerce-admin/customers/segments/customer-segments)
