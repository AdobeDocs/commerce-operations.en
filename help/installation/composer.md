---
title: Quick start on-premises installation
description: Learn how to install Adobe Commerce on your own infrastructure using Composer. Discover quick start steps and configuration requirements.
exl-id: a93476e8-2b30-461a-91df-e73eb1a14d3c
---
# Quick start on-premises installation

The instructions on this page describe how to install Adobe Commerce on self-hosted infrastructure. For guidance on upgrading an existing installation, see the [_Upgrade Guide_](../upgrade/overview.md).

Adobe uses [Composer](https://getcomposer.org/) to manage Adobe Commerce components and their dependencies. Using Composer to get the Adobe Commerce metapackage provides the following advantages:

- Reuse third-party libraries without bundling them with source code
- Reduce extension conflicts and compatibility issues by using a component-based architecture with robust dependency management
- Adhere to [PHP-Framework Interoperability Group (FIG)](https://www.php-fig.org/) standards
- Repackage Magento Open Source with other components
- Use the Adobe Commerce software in a production environment

>[!NOTE]
>
>Developers contributing to Magento Open Source should use the [git-based](https://developer.adobe.com/commerce/contributor/guides/install) installation method.

## Prerequisites

Before you continue, you must do the following:

- Complete all [prerequisite tasks](system-requirements.md).
- [Install Composer](https://getcomposer.org/download/).
- Get [authentication keys](prerequisites/authentication-keys.md) to the Adobe Commerce Composer repository.

## Log in as file system owner

Learn about ownership, permissions, and the file system owner in the [Overview of ownership and permissions topic](prerequisites/file-system/overview.md).

To switch to the file system owner:

1. Log in to the application server as, or switch to, a user with permissions to write to the file system.

   If you use the bash shell, you can use the following syntax to switch to the file system owner and enter the command at the same time:

   ```bash
   su <file system owner> -s /bin/bash -c <command>
   ```

   If the file system owner does not allow logins, you can do the following:

   ```bash
   sudo -u <file system owner>  <command>
   ```

1. To run CLI commands from any directory, add `<app_root>/bin` to your system `PATH`.

   Because shells have differing syntaxes, consult a reference like [unix.stackexchange.com](https://unix.stackexchange.com/questions/117467/how-to-permanently-set-environmental-variables).

   Sample bash shell for CentOS:

   ```bash
   export PATH=$PATH:/var/www/html/magento2/bin
   ```

   Optionally, you can run the commands in the following ways:

   -  `cd <app_root>/bin` and run them as `./magento <command name>`
   -  `app_root>/bin/magento <command name>`
   -  `<app_root>` is a subdirectory of your web server docroot

## Get the metapackage

To get the Adobe Commerce metapackage:

1. Log in to your application server as, or switch to, the [file system owner](prerequisites/file-system/overview.md).
1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot.
1. Create a Composer project using a Commerce metapackage.

    **Magento Open Source**

    ```bash
    composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
    ```

    **Adobe Commerce**

    ```bash
    composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
    ```

    When prompted, enter your authentication keys. Public and private keys are created and configured from [Commerce Marketplace - Access Keys](https://commercemarketplace.adobe.com/customer/account/login/). For the `[!UICONTROL username]`, copy and paste the public key value. For the `[!UICONTROL password]`, copy and paste the private key value.

   >[!NOTE]
   >
   > If you use a Composer `[auth.json](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/authentication-keys)` file or environment variable configured with your Commerce authentication keys, you are not prompted to enter authentication keys.

    If you encounter errors, such as `Could not find package...` or `...no matching package found`, make sure that there are no typos in your command. If you still encounter errors, you may not be authorized to download Adobe Commerce. Contact [Adobe Commerce Support](https://support.magento.com/hc/en-us) for help.

    See [Troubleshooting](https://support.magento.com/hc/en-us/articles/360033818091) for help with more errors.

### Example - Minor release

Minor releases contain new features, quality fixes, and security fixes. Use Composer to specify a minor release. For example, to specify the Adobe Commerce 2.4.6 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.6 <install-directory-name>
```

### Example - Quality patch

Quality patches primarily contain functional _and_ security fixes. However, they can also sometimes contain new, backward-compatible features. Use Composer to download a quality patch. For example, to specify the Adobe Commerce 2.4.6 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.6 <install-directory-name>
```

### Example - Security patch

Security patches contain security fixes only. They are designed to make the upgrade process faster and easier.

Security patches use the Composer naming convention `2.4.6-px`. Use Composer to specify a patch. For example, to download the Adobe Commerce 2.4.6-p1 metapackage:

```bash
composer create-project --repository-url=https://repo.magento.com/ magento/project-enterprise-edition=2.4.6-p1 <install-directory-name>
```

## Set file permissions

You must set read-write permissions for the web server group before you install Adobe Commerce. This is necessary so that the command line can write files to the file system.

```bash
cd /var/www/html/<magento install directory>
find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chown -R :www-data . # Ubuntu
chmod u+x bin/magento
```

## Install the application

You must use the command line to install Adobe Commerce.

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
--search-engine=opensearch \
--opensearch-host=os-host.example.com \
--opensearch-port=9200 \
--opensearch-index-prefix=magento2 \
--opensearch-timeout=15
```

>[!TIP]
>
>You can customize the Admin URI with the `--backend-frontname` option. However, Adobe recommends omitting this option and allowing the installation command to automatically generate a random URI. A random URI is harder for hackers or malicious software to exploit. The URI displays in your console when installation is complete.

>[!TIP]
>
>For a full description of the CLI install options, see [Install the application from the command line](advanced.md).

## Command summary

To display a complete list of commands, enter:

```bash
bin/magento list
```

To get help for a particular command, enter:

```bash
bin/magento help <command>
```

For example:

```bash
bin/magento help setup:install
```

```bash
bin/magento help cache:enable
```

The following table summarizes the available commands. Commands are shown in summary form only. For more information about a command, click the link in the Command column.

|Command|Description|Prerequisites|
|--- |--- |--- |
|`magento setup:install`|Installs the application|None|
|`magento setup:uninstall`|Removes the application.|Application installed|
|`magento setup:upgrade`|Updates the application.|Deployment configuration|
|`magento maintenance:{enable/disable}`|Enables or disables maintenance mode (in maintenance mode, only exempt IP addresses can access the Admin or storefront).|Application installed|
|`magento setup:config:set`|Creates or updates the deployment configuration.|None|
|`magento module:{enable/disable}`|Enable or disable modules.|None|
|`magento setup:store-config:set`|Sets storefront-related options, such as base URL, language, timezone.|Deployment configuration|
|`magento setup:db-schema:upgrade`|Updates the database schema.|Deployment configuration|
|`magento setup:db-data:upgrade`|Updates the database data.|Deployment configuration|
|`magento setup:db:status`|Checks if the database is up to date with the code.|Deployment configuration|
|`magento admin:user:create`|Creates an administrator user.|You can create users for the following:<br><br>Deployment configuration<br><br>Enable at minimum the `Magento_User` and `Magento_Authorization` modules<br><br>Database (simplest way is to use `bin/magento setup:upgrade`)|
|`magento list`|Lists all available commands.|None|
|`magento help`|Provides help for the specified command.|None|

### Common arguments

The following arguments are common to all commands. These commands can be run either before or after the application is installed:

|Long version|Short version|Meaning|
|--- |--- |--- |
|`--help`|`-h`|Get help for any command. For example, `./magento help setup:install` or `./magento help setup:config:set`.|
|`--quiet`|`-q`|Quiet mode; no output.|
|`--no-interaction`|`-n`|No interactive questions.|
|`--verbose=1,2,3`|`-v, -vv, -vvv`|Verbosity level. For example, `--verbose=3` or `-vvv` displays debug verbosity, which is the most verbose output. Default is `--verbose=1` or `-v`.|
|`--version`|`-V`|Display this application version|
|`--ansi`|n/a|Force ANSI output|
|`--no-ansi`|n/a|Disable ANSI output|

>[!NOTE]
>
>Congratulations! You've completed the quick install. Need more advanced help? Check out the [Advanced install](advanced.md) guide.
