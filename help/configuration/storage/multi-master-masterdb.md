---
title: Automatically configure master databases
description: See guidance on automatically configuring the split database solution.
recommendations: noCatalog
exl-id: a27ad097-de60-4cdd-81f9-eb1ae84587e4
---
# Automatically configure master databases

{{ee-only}}

{{deprecate-split-db}}

This topic discusses how to get started with the split database solution by:

1. Installing Adobe Commerce with a single master database (named `magento`)
1. Creating two additional master databases for checkout and OMS (named `magento_quote` and `magento_sales`)
1. Configuring Adobe Commerce to use the checkout and sales databases

>[!INFO]
>
>This guide assumes that all three databases are on the same host as the Commerce application and that they are named `magento`, `magento_quote`, and `magento_sales`. However, the choice of where to locate the databases and what they are named is up to you. We hope our examples make the instructions easier to follow.

## Install the Adobe Commerce software

You can enable split databases at any time after you install the Adobe Commerce software; in other words, you can add split databases to an Adobe Commerce system that already has checkout and order data. Use the instructions in the Adobe Commerce README or the [installation guide](../../installation/overview.md) to install the Adobe Commerce software using a single master database.

## Set up additional master databases

Create checkout and OMS master databases as follows:

1. Log in to your database server as any user.
1. Enter the following command to get to a MySQL command prompt:

   ```bash
   mysql -u root -p
   ```

1. Enter the MySQL `root` user's password when prompted.
1. Enter the following commands in the order shown to create database instances named `magento_quote` and `magento_sales` with the same usernames and passwords:

   ```shell
   create database magento_quote;
   ```

   ```shell
   GRANT ALL ON magento_quote.* TO magento_quote@localhost IDENTIFIED BY 'magento_quote';
   ```

   ```shell
   create database magento_sales;
   ```

   ```shell
   GRANT ALL ON magento_sales.* TO magento_sales@localhost IDENTIFIED BY 'magento_sales';
   ```

1. Enter `exit` to quit the command prompt.

1. Verify the databases, one at a time:

   Checkout database:

   ```bash
   mysql -u magento_quote -p
   ```

   ```shell
   exit
   ```

   Order management system database:

   ```bash
   mysql -u magento_sales -p
   ```

   ```shell
   exit
   ```

   If the MySQL monitor displays, you created the database properly. If an error displays, repeat the preceding commands.

## Configure Commerce to use the master databases

After setting up a total of three master databases, use the command line to configure Commerce to use them. (The command sets up database connections and distributes tables among the master databases.)

### First steps

See [Running commands](../cli/config-cli.md#running-commands) to log in and run CLI commands.

### Configure the checkout database

Command syntax:

```bash
bin/magento setup:db-schema:split-quote --host="<checkout db host or ip>" --dbname="<name>" --username="<checkout db username>" --password="<password>"
```

For example,

```bash
bin/magento setup:db-schema:split-quote --host="localhost" --dbname="magento_quote" --username="magento_quote" --password="magento_quote"
```

The following message displays to confirm a successful setup:

```
Migration has been finished successfully!
```

### Configure the OMS database

Command syntax:

```bash
bin/magento setup:db-schema:split-sales --host="<checkout db host or ip>" --dbname="<name>" --username="<checkout db username>" --password="<password>"
```

For example,

```bash
bin/magento setup:db-schema:split-sales --host="localhost" --dbname="magento_sales" --username="magento_sales" --password="magento_sales"
```

```bash
bin/magento setup:upgrade
```

The following message displays to confirm a successful setup:

```
Migration has been finished successfully!
```
