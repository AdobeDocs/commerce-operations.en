---
title: Create or update the deployment configuration
description: Follow these steps to manage your Adobe Commerce deployment configuration.
feature: Install, Deploy, Configuration
exl-id: 2cdde735-0c70-44e8-b2ee-ffb874c1c443
---
# Create or update the deployment configuration

There are no prerequisites for using this command.

## Create or update the deployment configuration

[Deployment configuration](../../configuration/reference/deployment-files.md) provides the information that the application needs to initialize and bootstrap.

You can use this command if:

*  You previously installed the application and you want to modify the deployment configuration
*  You want to create only the deployment configuration and continue the installation some other way
*  To update the deployment configuration without affecting anything else

Command options:

```bash
bin/magento setup:config:set [--<parameter>=<value>, ...]
```

The following table discusses the meanings of installation parameters and values.

|Parameter|Value|Required?|
|--- |--- |--- |
|`--backend-frontname`|Uniform Resource Identifier ([URI](https://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.2)) to access the Admin.<br><br>To prevent exploits, we recommend you not use a common word like admin, backend. The Admin URI can contain alphanumeric values and the underscore character (`_`) only.|No|
|`--db-host`|Use any of the following:<br><br>- The database server's fully qualified hostname or IP address.<br><br>- `localhost` (default) or `127.0.0.1` if your database server is on the same host as your web server. localhost means the MySQL client library uses UNIX sockets to connect to the database. `127.0.0.1` causes the client library to use the TCP protocol. For more information about sockets, see the [PHP PDO_MYSQL documentation](https://www.php.net/manual/en/ref.pdo-mysql.php).<br><br>**Note:** You can optionally specify the database server port in its hostname like `www.example.com:9000`|No|
|`--db-name`|Name of the database instance in which you want to install the database tables.<br><br>Default is `magento2`.|No|
|`--db-user`|Username of the database instance owner.<br><br>Default is `root`.|No|
|`--db-password`|Database instance owner's password.|No|
|`--db-prefix`|Use only if you're installing the database tables in a database instance that has Adobe Commerce tables in it already.<br><br>In that case, use a prefix to identify the tables for this installation. Some customers have more than one Adobe Commerce instance running on a server with all tables in the same database.<br><br>The prefix can be a maximum of five characters in length. It must begin with a letter and can include only letters, numbers, and underscore characters.<br><br>This option enables those customers to share the database server with more than one Adobe Commerce installation.|No|
|`--session-save`|Use any of the following:<br><br>- `db` to store session data in the [database](https://developer.adobe.com/commerce/php/development/cache/partial/database-caching/). Choose database storage if you have a clustered database; otherwise, there might not be much benefit over file-based storage.<br><br>- `files` to store session data in the file system. File-based session storage is appropriate unless the file system access is slow, you have a clustered database, or you want to store session data in Redis.<br><br>- `redis` to store session data in [Use Redis for session storage](../../configuration/cache/config-redis.md). If you are using Redis for default or page caching, Redis must be already installed. |No|
|`--key`|If you have one, specify a key to encrypt [sensitive data](#sensitive-data) in the database. If you don't have one, the application generates one for you.|No|
|`--db-init-statements`|Advanced MySQL configuration parameter. Uses database initialization statements to run when connecting to the MySQL database.<br><br>Default is `SET NAMES utf8;`.<br><br>Consult a reference similar to [this one](https://dev.mysql.com/doc/refman/5.6/en/server-options.html) before you set any values.|No|
|`--http-cache-hosts`|Comma-separated list of HTTP cache gateway hosts to which to send purge requests. (For example, Varnish servers.) Use this parameter to specify the host or hosts to purge in the same request. (It doesn't matter if you have only one host or many hosts.)<br><br>Format must be `<hostname or ip>:<listen port>`, where you can omit `<listen port>` if it's port 80. For example, `--http-cache-hosts=192.0.2.100,192.0.2.155:6081`. Do not separate hosts with a space character.|No|

## Import configuration data

When setting up a production system, it's good practice to import configuration settings from `config.php` and `env.php` into the database.
These settings include configuration paths and values, websites, stores, store views, and themes.

After importing websites, stores, store views, and themes, you can create product attributes and apply them to websites, stores, and store views, on the production system.

On the production system, run the following command to import data from the configuration files (`config.php` and `env.php`) to the database:

```bash
bin/magento app:config:import [-n, --no-interaction]
```

The optional `[-n, --no-interaction]` flag allows the command to run without additional confirmations.

For additional information, please, check the [Import data from configuration files](../../configuration/cli/import-configuration.md)

### Sensitive data

{{$include /help/_includes/sensitive-data.md}}

<!-- Last updated from includes: 2024-04-16 09:42:31 -->
