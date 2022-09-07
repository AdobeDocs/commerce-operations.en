---
title: Quick start on-premises installation
description:
---

# Quick start on-premises installation

{% include install/composer-overview.md %}

## Prerequisites

Before you continue, you must do the following:

-  Complete all [prerequisite tasks](system-requirements.md).
-  [Install Composer](https://getcomposer.org/download/).
-  Get [authentication keys](prerequisites/authentication-keys.md) to the Adobe Commerce and Magento Open Source Composer repository.

## Log in as file system owner {#instgde-cli-before}

Learn about ownership, permissions, and the file system owner in our [Overview of ownership and permissions topic](prerequisites/file-system/overview.md).

To switch to the file system owner:

{% include install/first-steps-cli.md %}

## Get the metapackage

To get the Adobe Commerce or Magento Open Source metapackage:

1. Log in to your application server as, or switch to, the [file system owner](prerequisites/file-system/overview.md).
1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot.
1. Create a new Composer project using the Adobe Commerce or Magento Open Source metapackage.

    **Magento Open Source**

    ```bash
    composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
    ```

    **Adobe Commerce**

    ```bash
    composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
    ```

    When prompted, enter your authentication keys. Public and private keys are created and configured in your [Commerce Marketplace](https://marketplace.magento.com/customer/accessKeys/).

    If you encounter errors, such as `Could not find package...` or `...no matching package found`, make sure there are no typos in your command. If you still encounter errors, you may not be authorized to download Adobe Commerce. Contact [Adobe Commerce Support](https://magento.com/support) for help.

    See [Troubleshooting](https://support.magento.com/hc/en-us/articles/360033818091) for help with more errors.

    {% include install/pre-release.md %}

### Example - Minor release

Minor releases contain new features, quality fixes, and security fixes. Use Composer to specify a minor release. For example, to specify the Adobe Commerce 2.4.3 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.3 <install-directory-name>
```

### Example - Quality patch

Quality patches primarily contain functional _and_ security fixes. However, they can also sometimes contain new, backward-compatible features. Use Composer to download a quality patch. For example, to specify the Adobe Commerce 2.4.3 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.3 <install-directory-name>
```

### Example - Security patch

Security patches contain security fixes only. They are designed to make the upgrade process faster and easier.

Security patches use the Composer naming convention `2.4.3-px`. Use Composer to specify a patch. For example, to download the Adobe Commerce 2.4.3-p1 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.3-p1 <install-directory-name>
```

## Set file permissions

You must set read-write permissions for the web server group before you install Adobe Commerce or Magento Open Source. This is necessary so that the command line can write files to the file system.

```terminal
cd /var/www/html/<magento install directory>
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data . # Ubuntu
chmod u+x bin/magento
```

## Install the application

You must use the command line to install Adobe Commerce or Magento Open Source.

This example assumes that the install directory is named `magento2ee`, the `db-host` is on the same machine (`localhost`), and that the `db-name`, `db-user`, and `db-password` are all `magento`:

```bash
bin/magento setup:install \
--base-url=http://localhost/magento2ee \
--db-host=localhost \
--db-name=magento \
--db-user=magento \
--db-password=magento \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=admin@admin.com \
--admin-user=admin \
--admin-password=admin123 \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--search-engine=elasticsearch7 \
--elasticsearch-host=es-host.example.com \
--elasticsearch-port=9200 \
--elasticsearch-index-prefix=magento2 \
--elasticsearch-timeout=15
```

>[!TIP]
>
>You can customize the Admin URI with the `--backend-frontname` option. However, we recommend omitting this option and allowing the installation command to automatically generate a random URI. A random URI is harder for hackers or malicious software to exploit. The URI displays in your console when installation is complete.


>[!TIP]
>
>For a full description of the CLI install options, see [Install the application from the command line](advanced.md).


## Command summary {#instgde-cli-summary}

{% include install/cli_help-commands.md %}

The following table summarizes the available commands. Commands are shown in summary form only. For more information about a command, click the link in the Command column.

|Command|Description|Prerequisites|
|--- |--- |--- |
|`magento setup:install`|Installs the application|None|
|`magento setup:uninstall`|Removes the application.|Application installed|
|`magento setup:upgrade`|Updates the application.|Deployment configuration|
|`magento maintenance:{enable/disable}`|Enables or disables maintenance mode (in maintenance mode, only exempt IP addresses can access the Admin or storefront).|Application installed|
|`magento setup:config:set`|Creates or updates the deployment configuration.|None|
|`magento module:{enable/disable}`|Enable or disable modules.|None|
|`magento setup:store-config:set`|Sets storefront-related options, such as base URL, language, timezone, and so on.|Deployment configuration
Database (simplest way is to use magento setup:upgrade)|
|`magento setup:db-schema:upgrade`|Updates the database schema.|Deployment configuration|
|`magento setup:db-data:upgrade`|Updates the database data.|Deployment configuration|
|`magento setup:db:status`|Checks if the database is up-to-date with the code.|Deployment configuration|
|`magento admin:user:create`|Creates an administrator user.|All of the following:<br><br>Deployment configuration<br><br>Enable at minimum the Magento_User and Magento_Authorization modules<br><br>Database (simplest way is to use magento setup:upgrade)|
|`magento list`|Lists all available commands.|None|
|`magento help`|Provides help for the specified command.|None|

### Common arguments {#instgde-cli-subcommands-common}

{% include install/cli_common-commands.md %}

>[!NOTE]
>
>Congratulations! You've completed the quick install. Need more advanced help? Check out our [Advanced install](advanced.md) guide.
