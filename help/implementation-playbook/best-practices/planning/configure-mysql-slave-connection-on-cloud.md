---
title: Best practice to configure the MySQL slave connection
description: Learn how to configure the MySQL slave connection for Adobe Commerce sites deployed on cloud infrastructure.
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Best practice to configure the MySQL slave connection

For Adobe Commerce sites deployed on cloud infrastructure Pro architecture, Adobe recommends enabling the MYSQL slave connection for the database by default.

Adobe Commerce can read multiple databases asynchronously.  When you enable the MYSQL slave connection, Adobe Commerce uses a read-only connection to the database to receive read-only traffic on a non-master node. This improves performance through load balancing, because only one node needs to handle read-write traffic.

## Affected versions

Adobe Commerce on cloud infrastructure, Pro architecture

## Configure MySQL slave connection

The configuration for the MYSQL slave connection is set by the [MYSQL_SLAVE_CONNECTION](https://devdocs.magento.com/cloud/env/variables-deploy.html#mysql_use_slave_connection) deploy variable in the Adobe Commerce on cloud infrastructure environment configuration file, `.magento.env.yaml`. Set this variable to `true` to enable the connection.

To enable the MySQL slave connection:

1. Edit your `.magento.env.yaml` file and verify that `MYSQL_USE_SLAVE_CONNECTION` is enabled.  

   ```
   stage:
      deploy:
      MYSQL_USE_SLAVE_CONNECTION: true
   ```

1. Commit any changes, and then push them to the environment branch to deploy the update.

   After the deployment completes successfully, the MySQL slave connection is enabled on your cloud infrastructure.

## Additional information

- [Environment variables](https://devdocs.magento.com/cloud/env/variables-intro.html)
- [MySQL high-load bottleneck in Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/database/mysql-high-load-bottleneck-in-magento-commerce-cloud.html?lang=en)
- [Database best practices for Adobe Commerce on cloud infrastructure](database-on-cloud.md)

>![NOTE]
>
>We are aware that this article may still contain industry-standard software terms that some may find racist, sexist, or oppressive and which may make the reader feel hurt, traumatized, or unwelcome. Adobe is working to remove these terms from our code, documentation, and user experiences.
