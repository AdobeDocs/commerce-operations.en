---
title: On-premises installation prerequisites
description: Learn more about the software dependencies required for on-premises installations of Adobe Commerce.
exl-id: dd4694e7-5437-440c-bb67-804ae36149de
---
# On-premises installation prerequisites

Before you install Adobe Commerce, you must do the following:

*  Set up one or more hosts that meet the [system requirements](../system-requirements.md) listed in the *Commerce on-premises* tab.
*  If you are setting up more than one web node with load balancing, set up and test that part of your system _before_ you install the application.
*  Make sure you can back up your entire system at various points during the installation so that you can roll it back if there are issues.

>[!NOTE]
>
>We assume you are installing the Adobe Commerce in a **development environment**, that you have root user access to the machine, **and** that the machine does not need to be highly secure. If you are setting up a more secure machine, we strongly recommend you consult a network administrator for additional assistance.

We strongly recommend you update and upgrade your operating system software. These upgrades can provide security and software fixes that might prevent future problems. Do not know what any of this means? Check out our [installation overview page](../overview.md).

Enter the following commands as a user with `root` privileges:

*  Ubuntu

   ```bash
   apt-get update
   ```

   ```bash
   apt-get upgrade
   ```

*  CentOS

   ```bash
   yum -y update
   ```

   ```bash
   yum -y upgrade
   ```

## Prerequisite check

To check your system for prerequisites, enter the following commands:

### Apache

CentOS: `httpd -v`

Ubuntu: `apache2 -v`

Adobe Commerce supports Apache version 2.4 as the following result indicates:

```
Server version: Apache/2.4.0 (Unix)
Server built:   Jul 23 2017 14:17:29
```

To install or upgrade Apache, see [Apache](web-server/apache.md).

### PHP

See the *Commerce on-premises* tab in [system requirements](../system-requirements.md) for supported versions of PHP and [PHP](../system-requirements.md#php-settings) for PHP requirements.

### MySQL

Check that you have a compatible version of MySQL for the version of Adobe Commerce you are installing. See the *Commerce on-premises* tabe in the [System requirements](../system-requirements.md) for supported versions.

```bash
mysql -u <database root user or database owner name> -p
```

For example:

```bash
mysql -u magento -p
```

The following result indicates the version that you are running.

```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 871
Server version: 5.7.9 MySQL Community Server (GPL)

Copyright (c) 2000, 2019, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
```

Type `help` or `\h` for help. Type `\c` to clear the current input statement.

Enter `exit` at the `mysql>` prompt to exit.

To install or upgrade MySQL, see [MySQL](database/mysql.md).

### Search engine

To verify your OpenSearch installation:

```bash
curl -XGET '<opensearch-hostname>:<opensearch-port>'
```

To verify your Elasticsearch installation:

```bash
curl -XGET '<elasticsearch-hostname>:<elasticsearch-port>'
```

For example:

```bash
curl -XGET 'localhost:9200'
```

```
{
  "name" : "Z0S2B05",
  "cluster_name" : "elasticsearch_myname",
  "cluster_uuid" : "V-kpikRJQHudN-Wzdt-IrQ",
  "version" : {
    "number" : "6.8.7",
    "build_flavor" : "oss",
    "build_type" : "tar",
    "build_hash" : "c63e621",
    "build_date" : "2020-02-26T14:38:01.193138Z",
    "build_snapshot" : false,
    "lucene_version" : "7.7.2",
    "minimum_wire_compatibility_version" : "5.6.0",
    "minimum_index_compatibility_version" : "5.0.0"
  },
  "tagline" : "You Know, for Search"
```
