---
title: Set up a remote MySQL database connection
description: Follow these steps to configure a remote database connection for on-premises installations of Adobe Commerce.
exl-id: 5fe304bd-ff38-4066-a1fd-8937575e4de4
---
# Set up a remote MySQL database connection

Sometimes you may want to host the database on a separate server instead of running the database server and the web server on the same machine.

Adobe has provided a way to connect to a MySQL server on a different machine. As of Adobe Commerce 2.4.3, you can also configure the application to use an Amazon Web Services (AWS) Aurora database with no code changes.

Aurora is a high-performance, fully compliant MySQL server hosted on AWS.

## Connecting to an AWS Aurora database

Using Aurora as the database is as easy as specifying the database in the regular Adobe Commerce setup configuration, using the default database connector.

When running `bin/magento setup:install`, use the Aurora information in the `db-` fields:

```bash
bin/magento setup:install ... --db-host='database-aurora.us-east-1.rds.amazonaws.com' --db-name='magento2' --db-user='username' --db-password='password' ...
```

The `db-host` value is the Aurora URL with the `https://` and trailing `:portnumber`  removed.

## Setting up a remote database connection

>[!NOTE]
>
>This is an advanced topic that should be used only by an experienced network administrator or database administrator. You must have `root` access to the file system and you must be able to log in to MySQL as `root`.

### Prerequisites

Before you begin, you must:

*  [Install MySQL server](mysql.md) on the database server.
*  [Create a database instance](mysql.md#configuring-the-database-instance) on the database server.
*  Install the MySQL client on your Adobe Commerce web node. Consult MySQL documentation for details.

### High availability

Use the following guidelines to configure remote database connections if your web server or database server are clustered:

*  You must configure a connection for each web server node.
*  Typically, you configure a database connection to the database load balancer; however, database clustering can be complex and configuring it is up to you. Adobe makes no specific recommendations for database clustering.

   For more information, see [MySQL documentation](https://dev.mysql.com/doc/refman/5.6/en/mysql-cluster.html).

### Resolving connection issues

If you have issues connecting to either host, first ping the other host to make sure it is reachable. You might need to allow connections from one host to another by modifying firewall and SELinux rules (if you use SELinux).

## Create the remote connection

To create a remote connection:

1. On your database server, as a user with `root` privileges, open your MySQL configuration file.

   To locate it, enter the following command:

   ```bash
   mysql --help
   ```

   The location displays similar to the following:

   ```
   Default options are read from the following files in the given order:
   /etc/my.cnf /etc/mysql/my.cnf /usr/etc/my.cnf ~/.my.cnf
   ```

   >[!NOTE]
   >
   >On Ubuntu 16, the path is typically `/etc/mysql/mysql.conf.d/mysqld.cnf`.

1. Search the configuration file for `bind-address`.

   If it exists, change the value as follows.

   If it does not exist, add it to the `[mysqld]` section.

   ```conf
   bind-address = <ip address of your web node>
   ```

   See [MySQL documentation](https://dev.mysql.com/doc/refman/5.6/en/server-options.html), especially if you have a clustered web server.

1. Save your changes to the configuration file and exit the text editor.
1. Restart the MySQL service:

   *  CentOS: `service mysqld restart`

   *  Ubuntu: `service mysql restart`

   >[!NOTE]
   >
   >If MySQL fails to start, look in syslog for the source of the issue. Resolve the issue using [MySQL documentation](https://dev.mysql.com/doc/refman/5.6/en/server-options.html#option_mysqld_bind-address) or another authoritative source.

## Grant access to a database user

To enable your web node to connect to the database server, you must grant a web node database user access to the database on the remote server.

This example grants the `root` database user full access to the database on the remote host.

To grant access to a database user:

1. Log in to the database server.
1. Connect to the MySQL database as the `root` user.
1. Enter the following command:

   ```shell
   GRANT ALL ON <local database name>.* TO <remote web node username>@<remote web node server ip address> IDENTIFIED BY '<database user password>';
   ```

   For example,

   ```shell
   GRANT ALL ON magento_remote.* TO dbuser@192.0.2.50 IDENTIFIED BY 'dbuserpassword';
   ```

   >[!NOTE]
   >
   >If your web server is clustered, enter the same command on every web server. You must use the same username for every web server.

## Verify database access

On your web node host, enter the following command to verify the connection works:

```bash
mysql -u <local database username> -h <database server ip address> -p
```

If the MySQL monitor displays as follows, the database is ready for Adobe Commerce:

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 213 Server version: 5.6.26 MySQL Community Server (GPL)

Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates. Other names may be trademarks of their respective owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
```

If your web server is clustered, enter the command on each web server host.

## Install the Adobe Commerce

When you install Adobe Commerce, you must specify the following:

*  The base URL (also referred to as the *store address*) specifies the hostname or IP address of the *web node*
*  Database host is the *remote database server* IP address (or load balancer if the database server is clustered)
*  Database username is the *local web node* database user to which you gave access
*  Database password is the local web node user's password
*  Database name is the name of the database on the remote server
