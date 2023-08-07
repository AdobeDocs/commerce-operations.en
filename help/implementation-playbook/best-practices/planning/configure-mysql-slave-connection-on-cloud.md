---
title: Best practice to configure the MySQL slave connection
description: Learn how to configure the MySQL slave connection for Adobe Commerce sites deployed on cloud infrastructure.
role: Developer
feature: Best Practices
exl-id: d65bc80a-c4ec-4ea4-aff1-110592838201
---
# Best practice to configure the MySQL slave connection

>[!NOTE]
>
>This article contains industry-standard software terms that some may find racist, sexist, or oppressive and which may make the reader feel hurt, traumatized, or unwelcome. Adobe is working to remove these terms from code, documentation, and user experiences.

Adobe Commerce can read multiple databases asynchronously. If you expect a high load for the MySQL database of a Commerce site deployed on cloud infrastructure Pro architecture, Adobe recommends enabling the MYSQL slave connection.

When you enable the MYSQL slave connection, Adobe Commerce uses a read-only connection to the database to receive read-only traffic on a non-master node. The performance improves through load balancing when only one node handles read-write traffic.

## Affected versions

Adobe Commerce on cloud infrastructure, Pro architecture only

## Configure MySQL slave connection

In the Adobe Commerce on cloud infrastructure, you can override the default configuration for the MYSQL slave connection by setting the [MYSQL_USE_SLAVE_CONNECTION](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/stage/variables-deploy.html#mysql_use_slave_connection) variable. Set this variable to `true` to automatically use a read-only connection to the database.

**To enable the MySQL slave connection**:

1. On your local workstation, change to your project directory.

1. In the `.magento.env.yaml` file, set the `MYSQL_USE_SLAVE_CONNECTION` to true.  

   ```
   stage:
     deploy:
       MYSQL_USE_SLAVE_CONNECTION: true
   ```

1. Commit the `.magento.env.yaml` file changes and push to the remote environment.

   After the deployment completes successfully, the MySQL slave connection is enabled for the cloud environment.

## Additional information

Learn more about customizing the cloud environment by overriding your existing Commerce configuration with [Environment variables](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/configure-env-yaml.html#environment-variables) in the _Adobe Commerce on cloud infrastructure guide_.

See the [MySQL high-load bottleneck in Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/database/mysql-high-load-bottleneck-in-magento-commerce-cloud.html) article in the _Support Knowledge Base_.
