---
title: Complete Prerequisites
description: Prepare your Adobe Commerce project for an upgrade by completing these prerequisite steps.
exl-id: f7775900-1d10-4547-8af0-3d1283d9b89e
---
# Complete upgrade prerequisites

It is important to understand what is necessary to run Adobe Commerce. You must first review the [system requirements](../../installation/system-requirements.md) for the version you are planning to upgrade to.

After reviewing system requirements, you must complete the following prerequisites before upgrading your system:

* Update all software
* Verify that a supported search engine is installed
* Convert database table format
* Set the open files limit
* Verify that cron jobs are running
* Set `DATA_CONVERTER_BATCH_SIZE`
* Verify file system permissions
* Set the `pub/` directory root
* Install the Composer update plugin

## Update all software

The [system requirements](../../installation/system-requirements.md) describe exactly which versions of third-party software have been tested with Adobe Commerce releases.

Ensure that you updated all system requirements and dependencies in your environment. See PHP [7.4](https://www.php.net/manual/en/migration74.php), PHP [8.0](https://www.php.net/manual/en/migration80.php), PHP [8.1](https://www.php.net/manual/en/migration81.php), and [required PHP settings](../../installation/prerequisites/php-settings.md#php-settings).

>[!NOTE]
>
>For Adobe Commerce on cloud infrastructure Pro projects, you must create a [Support](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) ticket to install or update services in Staging and Production environments. Indicate the service changes needed and include your updated `.magento.app.yaml` and `services.yaml` files and PHP version in the ticket. It can take up to 48 hours for the Cloud infrastructure team to update your project. See [Supported software and services](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/cloud-architecture.html#supported-software-and-services).

## Verify that a supported search engine is installed

Adobe Commerce requires Elasticsearch or OpenSearch to be installed in order to use the software.

**If you are upgrading from 2.3.x to 2.4**, you must check whether you are using MySQL, Elasticsearch, or a third-party extension as your catalog search engine in your 2.3.x instance. The result determines what you must do _before_ upgrading to 2.4.

**If you are upgrading patch releases within the 2.3.x or 2.4.x release lines**, if Elasticsearch 7.x is already installed, you can optionally [migrate to OpenSearch](opensearch-migration.md).

You can use the command line or the Admin to determine your catalog search engine:

* Enter the `bin/magento config:show catalog/search/engine` command. The command returns a value of `mysql`, `elasticsearch` (which indicates Elasticsearch 2 is configured), `elasticsearch5`, `elasticsearch6`, `elasticsearch7`, or a custom value, indicating you have installed a third-party search engine. For versions earlier than 2.4.6, use the `elasticsearch7` value for the Elasticsearch 7 or OpenSearch engine. For version 2.4.6 and later, use the `opensearch` value for the OpenSearch engine.

* From the Admin, check the value of the **[!UICONTROL Stores]** > [!UICONTROL Settings] > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Catalog]** > **[!UICONTROL Catalog Search]** > **[!UICONTROL Search Engine]** field.

The following sections describe what actions that you must take before upgrading to 2.4.0.

### MySQL

As of 2.4, MySQL is no longer a supported catalog search engine. You must install and configure Elasticsearch or OpenSearch before upgrading. Use the following resources to help guide you through this process:

* [Install and configure Elasticsearch](../../configuration/search/overview-search.md)
* [Installing Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html)
* Configure [nginx](../../installation/prerequisites/search-engine/configure-nginx.md) or [Apache](../../installation/prerequisites/search-engine/configure-apache.md) to work with your search engine
* [Configure Commerce to use Elasticsearch](../../configuration/search/configure-search-engine.md) and reindex

Some third-party catalog search engines run on top of the Adobe Commerce search engine. Contact your vendor to determine whether you must update your extension.

### MySQL 8.4 changes

Adobe added support for MySQL 8.4 in the 2.4.8 release.
This section describes major changes to MySQL 8.4 that developers should be aware of.

#### Deprecated non-standard key

The use of non-unique or partial keys as foreign keys is non-standard and is deprecated in MySQL 8.4. Beginning with MySQL 8.4.0, you must explicitly enable such keys by setting [`restrict_fk_on_non_standard_key`](https://dev.mysql.com/doc/refman/8.4/en/server-system-variables.html#sysvar_restrict_fk_on_non_standard_key) to `OFF`, or by starting the server with the `--skip-restrict-fk-on-non-standard-key` option.

#### Upgrading from MySQL 8.0 ( or older versions )  to MySQL 8.4

To properly upgrade MySQL from version 8.0 to version 8.4, you must follow these steps in order:

1. Enable maintenance mode:

   ```bash
   bin/magento maintenance:enable
   ```

1. Make a database backup:

   ```bash
   bin/magento setup:backup --db
   ```

1. Upgrade MySQL to version 8.4.
1. Set `restrict_fk_on_non_standard_key` to `OFF` in `[mysqld]` in the `my.cnf`  file.

   ```bash
   [mysqld]
   restrict_fk_on_non_standard_key = OFF 
   ```

   >[!WARNING]
   >
   >If you do not change the value of `restrict_fk_on_non_standard_key` to `OFF`, you will get the following error during import:
   >```sql
   > ERROR 6125 (HY000) at line 2164: Failed to add the foreign key constraint. Missing unique key for constraint 'CAT_PRD_FRONTEND_ACTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID' in the referenced table 'catalog_product_entity'
   >```
1. Restart the MySQL server.
1. Import the backed-up data into MySQL.
1. Clean the cache:

   ```bash
   bin/magento cache:clean
   ```

1. Disable maintenance mode:

   ```bash
   bin/magento maintenance:disable
   ```

#### MariaDB

{{$include /help/_includes/maria-db-config.md}}

### Search engine

You must install and configure either Elasticsearch 7.6 or higher or OpenSearch 1.2 before upgrading to 2.4.0. Adobe no longer supports Elasticsearch 2.x, 5.x, and 6.x. [Search engine configuration](../../configuration/search/configure-search-engine.md) in the _Configuration Guide_ describes the tasks you must perform after upgrading Elasticsearch to a supported version.

Refer to [Upgrading Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-upgrade.html) for full instructions on backing up your data, detecting potential migration issues, and testing upgrades before deploying to production. Depending on your current version of Elasticsearch, a full cluster restart may or may not be required.

Elasticsearch requires Java Development Kit (JDK) 1.8 or higher. See [Install the Java Software Development Kit (JDK)](../../installation/prerequisites/search-engine/overview.md#install-the-java-software-development-kit-jdk) to check which version of JDK is installed.

#### OpenSearch

OpenSearch is an open-source fork of Elasticsearch 7.10.2, following Elasticsearch's licensing change. The following releases of Adobe Commerce introduces support for OpenSearch:

* 2.4.6 (OpenSearch has a separate module and settings)
* 2.4.5
* 2.4.4
* 2.4.3-p2
* 2.3.7-p3

You can [migrate from Elasticsearch to OpenSearch](opensearch-migration.md) only if you are upgrading to a version of Adobe Commerce listed above (or higher).

OpenSearch requires JDK 1.8 or higher. See [Install the Java Software Development Kit (JDK)](../../installation/prerequisites/search-engine/overview.md#install-the-java-software-development-kit-jdk) to check which version of JDK is installed.

[Search engine configuration](../../configuration/search/configure-search-engine.md) describes the tasks you must perform after changing search engines.

#### Upgrade Elasticsearch

Support for Elasticsearch 8.x was introduced in Adobe Commerce 2.4.6. The following instructions show an example of upgrading Elasticsearch from 7.x to 8.x:

>[!NOTE]
>
>In the upcoming 2.4.8 release, these steps won't be necessary because the Elasticsearch 8 module is included by default and you won't need to install it separately.

1. Upgrade the Elasticsearch 7.x server to 8.x and make sure that is is up and running. See the [Elasticsearch documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html).

1. Enable the `id_field_data` field by adding the following configuration to your `elasticsearch.yml` file and restarting the Elasticsearch 8.x service. 

   ```yaml
   indices:
     id_field_data:
       enabled: true
   ```

   >[!INFO]
   >
   >To support Elasticsearch 8.x, Adobe Commerce 2.4.6 disallows the `indices.id_field_data` property by default and uses the `_id` field in the `docvalue_fields` property.

1. In the root directory of your Adobe Commerce project, update your Composer dependencies to remove the `Magento_Elasticsearch7` module and install the `Magento_Elasticsearch8` module.

   ```bash
   composer require magento/module-elasticsearch-8 --update-with-all-dependencies
   ```

   If you encounter a dependency error for `psr/http-message`, click to expand the following troubleshooting section:
   
   +++Troubleshooting

   If you encounter dependency conflicts while installing Elasticsearch 8, particularly with `psr/http-message`, you can resolve this by following these steps:

   1. First, require the Elasticsearch 8 module without updating other dependencies:

      ```bash
      composer require magento/module-elasticsearch-8 --no-update
      ```

   1. Then update the Elasticsearch 8 module and `aws/aws-sdk-php` packages:

      ```bash
      composer update magento/module-elasticsearch-8 aws/aws-sdk-php -W
      ```

   This approach works for 2.4.7-p4 with PHP 8.3. The issue occurs because `aws/aws-sdk-php` requires `psr/http-message >= 2.0`, which can cause conflicts. The above steps help resolve these dependency issues.

   +++

1. Update your project components.

   ```bash
   bin/magento setup:upgrade
   ```

1. [Configure Elasticsearch](../../configuration/search/configure-search-engine.md#configure-your-search-engine-from-the-admin) in the [!DNL Admin].

1. Reindex the catalog index.

   ```bash
   bin/magento indexer:reindex catalogsearch_fulltext
   ```

1. Delete all items from the enabled cache types.

   ```bash
   bin/magento cache:clean
   ```

#### Downgrade Elasticsearch

If you inadvertently upgrade the version of Elasticsearch on your server or determine that you need to downgrade for any other reason, you must also update your Adobe Commerce project dependencies. For example, to downgrade from Elasticsearch 8.x to 7.x

1. Downgrade the Elasticsearch 8.x server to 7.x and make sure that is is up and running. See the [Elasticsearch documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html).

1. In the root directory of your Adobe Commerce project, update your Composer dependencies to remove the `Magento_Elasticsearch8` module and its Composer dependencies and install the `Magento_Elasticsearch7` module.

   ```bash
   composer remove magento/module-elasticsearch-8
   ```

1. Update your project components.

   ```bash
   bin/magento setup:upgrade
   ```

1. [Configure Elasticsearch](../../configuration/search/configure-search-engine.md#configure-your-search-engine-from-the-admin) in the [!DNL Admin].

1. Reindex the catalog index.

   ```bash
   bin/magento indexer:reindex catalogsearch_fulltext
   ```

1. Delete all items from the enabled cache types.

   ```bash
   bin/magento cache:clean
   ```

### Third-party extensions

We recommend that you contact your search engine vendor to determine whether your extension is fully compatible with an Adobe Commerce release.

## Convert database table format

You must convert the format of all database tables from `COMPACT` to `DYNAMIC`. You must also convert the storage engine type from `MyISAM` to `InnoDB`. See [best practices](../../implementation-playbook/best-practices/maintenance/mariadb-upgrade.md).

## Set the open files limit

Setting the open files limit (ulimit) can help avoid failure from multiple recursive calls of long query strings or issues with using the `bin/magento setup:rollback` command. This command is different for different UNIX shells. Consult your individual flavor for specifics about the `ulimit` command.

Adobe recommends setting the open files [ulimit](https://ss64.com/bash/ulimit.html) to a value of `65536` or more, but you can use a larger value if necessary. You can set the ulimit on the command line or you can make it a permanent setting for the user's shell.

To set the ulimit from the command line:

1. Switch to the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Set the ulimit to `65536`.

   ```bash
   ulimit -n 65536
   ```

To set the value in your Bash shell:

1. Switch to the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Open `/home/<username>/.bashrc` in a text editor.
1. Add the following line:

   ```bash
   ulimit -n 65536
   ```

1. Save your changes to the `.bashrc` file and exit the text editor.

>[!IMPORTANT]
>
>We recommend that you avoid setting a value for the `pcre.recursion_limit` property in the `php.ini` file because it can result in incomplete rollbacks with no failure notice.

## Verify that cron jobs are running

The UNIX task scheduler `cron` is critical to day-to-day Adobe Commerce operations. It schedules things like reindexing, newsletters, e-mails, and sitemaps. Several features require at least one cron job running as the file system owner.

To verify that your cron job is set up properly, check the crontab by entering the following command as the file system owner:

>[!NOTE]
>
>The crontab is the configuration file responsible for running cron jobs.

```bash
crontab -l
```

Results similar to the following should display:

```cron
#~ MAGENTO START c5f9e5ed71cceaabc4d4fd9b3e827a2b
* * * * * /usr/bin/php /var/www/html/magento2/bin/magento cron:run 2>&1 | grep -v "Ran jobs by schedule" >> /var/www/html/magento2/var/log/magento.cron.log
#~ MAGENTO END c5f9e5ed71cceaabc4d4fd9b3e827a2b
```

Another symptom of cron not running is the following error in the Admin:

![System messages - cron not running](../../assets/upgrade-guide/cron-not-running.png)

To see the error, click **System Messages** at the top of the window as follows:

![System messages notification](../../assets/upgrade-guide/system-messages.png)

See [Configure and run cron](../../configuration/cli/configure-cron-jobs.md) for more information.

## Set DATA_CONVERTER_BATCH_SIZE

Adobe Commerce 2.4 includes security enhancements that require some data to be converted from serialized to JSON. This conversion occurs during the upgrade and it can take a long time, depending on how much data is in your database.

The following tables are affected the most:

* `catalogrule`
* `core_config_data`
* `magento_reward_history`
* `quote_payment`
* `quote`
* `sales_order_payment`
* `sales_order`
* `salesrule`
* `url_rewrite`

If you have a large amount of data, you can improve performance by setting the value of an environment variable, `DATA_CONVERTER_BATCH_SIZE`. By default, the value is set to `50,000`.

To set the environment variable:

1. Switch to the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Set the variable:

   ```bash
   export DATA_CONVERTER_BATCH_SIZE=100000
   ```

   >[!NOTE]
   >
   > `DATA_CONVERTER_BATCH_SIZE` requires memory; avoid setting it to a large value (approximately 1 GB) without testing it first.

1. After your upgrade is complete, you can unset the variable:

   ```bash
   unset DATA_CONVERTER_BATCH_SIZE
   ```

## Verify file system permissions

For security reasons, Adobe Commerce requires certain permissions on the file system. Permissions are different from _[ownership](../../upgrade/prepare/prerequisites.md#verify-file-system-permissions)_. Ownership determines who can perform actions on the file system; permissions determine what the user can do.

Directories in the file system must be writable by the [file system owner's](../../installation/prerequisites/file-system/overview.md) group.

To verify that your file system permissions are set properly, either log into the application server or use your hosting provider's file manager application.

For example, enter the following command if the application is installed in `/var/www/html/magento2`:

```bash
ls -l /var/www/html/magento2
```

Sample output:

```console
total 1028
drwxrwx---. 12 magento_user apache   4096 Jun  7 07:55 .
drwxr-xr-x.  3 root         root     4096 May 11 14:29 ..
drwxrwx---.  4 magento_user apache   4096 Jun  7 07:53 app
drwxrwx---.  2 magento_user apache   4096 Jun  7 07:53 bin
-rw-rw----.  1 magento_user apache 439792 Apr 27 21:23 CHANGELOG.md
-rw-rw----.  1 magento_user apache   3422 Apr 27 21:23 composer.json
-rw-rw----.  1 magento_user apache 425214 Apr 27 21:27 composer.lock
-rw-rw----.  1 magento_user apache   3425 Apr 27 21:23 CONTRIBUTING.md
-rw-rw----.  1 magento_user apache  10011 Apr 27 21:23 CONTRIBUTOR_LICENSE_AGREEMENT.html
-rw-rw----.  1 magento_user apache    631 Apr 27 21:23 COPYING.txt
drwxrwx---.  4 magento_user apache   4096 Jun  7 07:53 dev
-rw-rw----.  1 magento_user apache   2926 Apr 27 21:23 Gruntfile.js
-rw-rw----.  1 magento_user apache   7592 Apr 27 21:23 .htaccess
-rw-rw----.  1 magento_user apache   6419 Apr 27 21:23 .htaccess.sample
drwxrwx---.  4 magento_user apache   4096 Jun  7 07:53 lib
-rw-rw----.  1 magento_user apache  10376 Apr 27 21:23 LICENSE_AFL.txt
-rw-rw----.  1 magento_user apache  30634 Apr 27 21:23 LICENSE_EE.txt
-rw-rw----.  1 magento_user apache  10364 Apr 27 21:23 LICENSE.txt
-rw-rw----.  1 magento_user apache   4108 Apr 27 21:23 nginx.conf.sample
-rw-rw----.  1 magento_user apache   1427 Apr 27 21:23 package.json
-rw-rw----.  1 magento_user apache   1659 Apr 27 21:23 .php_cs
-rw-rw----.  1 magento_user apache    804 Apr 27 21:23 php.ini.sample
drwxrwx---.  2 magento_user apache   4096 Jun  7 07:53 phpserver
drwxrwx---.  6 magento_user apache   4096 Jun  7 07:53 pub
-rw-rw----.  1 magento_user apache   2207 Apr 27 21:23 README_EE.md
drwxrwx---.  7 magento_user apache   4096 Jun  7 07:53 setup
-rw-rw----.  1 magento_user apache   3731 Apr 27 21:23 .travis.yml
drwxrwx---.  7 magento_user apache   4096 Jun  7 07:53 update
drwxrws---. 11 magento_user apache   4096 Jun 13 16:05 var
drwxrws---. 29 magento_user apache   4096 Jun  7 07:53 vendor
```

See the following for an explanation of the sample output:

* Most of the files are `-rw-rw----`, which is `660`
* `drwxrwx---` = `770`
* `-rw-rw-rw-` = `666`
* The file system owner is `magento_user`

To get more detailed information, you can enter the following command:

```bash
ls -la /var/www/html/magento2/pub
```

Because Adobe Commerce deploys static file assets to subdirectories of `pub`, it's a good idea to verify permissions and ownership there as well.

For more information, see [File system permissions and ownership](../../installation/prerequisites/file-system/overview.md).

## Set the `pub/` directory root

See [Modify docroot to improve security](../../installation/tutorials/docroot.md) for more details.

## Install the Composer update plugin

The [`magento/composer-root-update-plugin`](https://github.com/magento/composer-root-update-plugin) Composer plugin resolves changes that must be made to the root project `composer.json` file before updating to a new product requirement.

The plugin partially automates the manual upgrade by identifying and helping you resolve dependency conflicts instead of requiring you to identify and fix them manually.

To install the plugin:

1. Add the package to your `composer.json` file.

   ```bash
   composer require magento/composer-root-update-plugin ~2.0 --no-update
   ```

1. Update the dependencies:

   ```bash
   composer update
   ```

<!-- Last updated from includes: 2024-02-12 09:51:27 -->
