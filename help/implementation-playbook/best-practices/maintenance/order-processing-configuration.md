---
title: Configuration best practices for order processing
description: Learn configuration best practices to improve checkout and order processing performance.
role: Admin, User
feature: Best Practices
exl-id: d15fe845-670f-4f7e-9645-7e111e6e809f
---
# Configuration best practices for order processing

As the order volume increases on your Commerce sites, you can optimize checkout performance and order processing by enabling the following store configuration options:

- **[!UICONTROL Asynchronous indexing]**—Enable this option to prevent database locks and slowed processing that can occur when large numbers of orders are placed simultaneously. 
- **[!UICONTROL Asynchronous email notifications]**—Enable this option to speed up checkout performance by sending checkout and order processing email notifications at designated intervals instead of sending them immediately.
- **[!UICONTROL Enable Archiving]**—Enable this option to improve the performance of orders, invoices, shipments, and credit memos, and keep your workspace free of unnecessary information, so you can focus on current business. See [Enable archiving](https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/order-management/orders/order-archive).

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Enable asynchronous order processing

The steps to enable asynchronous order processing depend on the deployment mode:

- For Adobe Commerce on cloud infrastructure and on-premises sites in Production mode, use the following Magento CLI command to enable asynchronous indexing:
  
  ```php
  php bin/magento config:set dev/grid/async_indexing 1
  ```

- For Adobe Commerce on-premises sites in Default or Production mode, enable asynchronous indexing by updating the Grid Settings configuration in the Admin.

  See [Enable scheduled grid updates and reindexing](https://experienceleague.adobe.com/docs/commerce-admin/stores-sales/order-management/orders/order-scheduled-operations.html#enable-scheduled-grid-updates-and-reindexing)

  >[!WARNING]
  >
  >Always test configuration changes in the Staging environment before updating the Production environment.

## Additional information

- [Configuration best practices](../../../performance/configuration.md)
- [General and advanced configuration paths reference](../../../configuration/reference/config-reference-general.md)
- [High-throughput order processing](../../../performance/high-throughput-order-processing.md)
