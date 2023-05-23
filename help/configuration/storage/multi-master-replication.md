---
title: Database replication
description: See the benefits of configuring database replication.
recommendations: noCatalog
exl-id: 0e41dca0-5a23-4d12-96fe-241c511ae366
---
# Database replication

{{ee-only}}

{{deprecate-split-db}}

Setting up database replication provides the following benefits:

- Provides data backup
- Enables data analysis without affecting the master database
- Scalability

MySQL databases replicate asynchronously, which means slaves do not need to be connected permanently to receive updates from the master.

## Configure database replication

An in-depth discussion of database replication is beyond the scope of this guide. To set it up, you can consult a resource like:

- [MySQL documentation](https://dev.mysql.com/doc/refman/5.6/en/replication.html)
- [How To Set Up Master Slave Replication in MySQL (digitalocean)](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)

Commerce provides sample MySQL configurations for your slave databases. A simple configuration is provided with the `ResourceConnections` class `README.md`.

The following is more advanced and is provided for your information only:

```php
   return array (
      //...
      'db' =>
         array (
            'connection' =>
               array (
                  'indexer' =>
                     array (
                        'host' => 'default-master-host',
                        'dbname' => 'magento',
                        'username' => 'magento',
                        'password' => 'magento',
                        'active' => '1',
                        'persistent' => NULL,
                     ),
                  'default' =>
                     array (
                        'host' => 'default-master-host',
                        'dbname' => 'magento',
                        'username' => 'magento',
                        'password' => 'magento',
                        'active' => '1',
                     ),
                  'checkout' =>
                     array (
                        'host' => 'checkout-master-host',
                        'dbname' => 'checkout',
                        'username' => 'magento',
                        'password' => 'magento',
                        'model' => 'mysql4',
                        'engine' => 'innodb',
                        'initStatements' => 'SET NAMES utf8;',
                        'active' => '1',
                     ),
                  'sales' =>
                     array (
                        'host' => 'sales-master-host',
                        'dbname' => 'sales',
                        'username' => 'magento',
                        'password' => 'magento',
                        'model' => 'mysql4',
                        'engine' => 'innodb',
                        'initStatements' => 'SET NAMES utf8;',
                        'active' => '1',
                     ),
               ),
            'slave_connection' =>
               array (
                  'default' =>
                     array (
                        'host' => 'default-slave-host',
                        'dbname' => 'magento',
                        'username' => 'read_only',
                        'password' => 'password',
                        'active' => '1',
                     ),
                  'checkout' =>
                     array (
                        'host' => 'checkout-slave-host',
                        'dbname' => 'checkout',
                        'username' => 'read_only',
                        'password' => 'password',
                        'model' => 'mysql4',
                        'engine' => 'innodb',
                        'initStatements' => 'SET NAMES utf8;',
                        'active' => '1',
                     ),
                  'sales' =>
                     array (
                        'host' => 'sales-slave-host',
                        'dbname' => 'sales',
                        'username' => 'read_only',
                        'password' => 'password',
                        'model' => 'mysql4',
                        'engine' => 'innodb',
                        'initStatements' => 'SET NAMES utf8;',
                        'active' => '1',
                     ),
                  ),
               'table_prefix' => '',
   ),
   //.......
```

## Performance improvement

To improve the performance of master-slave replication, you can filter some tables on slave instances. We recommend filtering all temporary tables with name pattern `search\_tmp\_%` that are used for catalog search.

To do this, add the following line to your `my.cnf` file on your slave instances:

   ```conf
   replicate-wild-ignore-table=%.search\_tmp\_%
   ```
