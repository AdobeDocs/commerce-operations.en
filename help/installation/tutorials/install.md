---
title: Install Adobe Commerce
description: Follow these steps to install Adobe Commerce on infrastructure that you own.
exl-id: 25f3c56e-0654-4f8b-a69d-f4152f68aca3
---
# Install Adobe Commerce

Before you begin, complete the following steps:

*  Verify that your system meets the requirements discussed in the [system requirements](../system-requirements.md).

*  Complete all [prerequisite](../prerequisites/overview.md) tasks.

*  Complete the first installation steps. See [Your install or upgrade path](../overview.md).

*  After you log in to the application server, [switch to the file system owner](../prerequisites/file-system/overview.md).

*  Review the [Get started with the command-line installation](../composer.md) overview.

>[!NOTE]
>
>You must install the application from its `bin` subdirectory.

You can run the installer multiple times with different options to complete installation tasks like the following:

*  Install in phases—For example, after you configure your web server for Secure Sockets Layer (SSL), you can run the installer again to set SSL options.

*  Correct mistakes in previous installations.

*  Install the application in a different database instance.

>[!NOTE]
>
>By default, the installer does not overwrite the database if you install the Commerce software in the same database instance. You can use the optional `cleanup-database` parameter to change this behavior.

See also [Update, reinstall, uninstall](uninstall.md).

## Secure installation

{{$include /help/_includes/secure-install.md}}

## Installer help commands

You can run the following commands to find values for some required arguments:

| Installer argument | Command                         |
| ------------------ | ------------------------------- |
| Language           | `magento info:language:list`      |
| Currency           | `magento info:currency:list`      |
| Time zone          | `magento info:timezone:list` |

>[!NOTE]
>
>If an error displays when you run these commands, verify that you updated installation dependencies as discussed in [Update installation dependencies](https://developer.adobe.com/commerce/contributor/guides/install/update-dependencies/).

## Install from the command line

The install command uses the following format:

```bash
magento setup:install --<option>=<value> ... --<option>=<value>
```

The following tables describe the installation option names and values, such as installation commands. See [Sample localhost installations](#sample-localhost-installations).

>[!NOTE]
>
>Any options that contain spaces or special characters must be enclosed in either single or double quotes.

**Admin credentials:**

The following options specify the user information and credentials for the admin user.

In Adobe Commerce version 2.2.8 and later, you can create the admin user during or after installation. If you create the user during installation, all admin credential variables are required. See [Sample localhost installations](#sample-localhost-installations).

|Name|Value|Required?|
|--- |--- |--- |
|`--admin-firstname`|Administrator user's first name.|Yes|
|`--admin-lastname`|Administrator user's last name.|Yes|
|`--admin-email`|Administrator user's e-mail address.|Yes|
|`--admin-user`|Administrator username.|Yes|
|`--admin-password`|Administrator user password. The password must be at least 7 characters in length and must include at least one alphabetic and at least one numeric character. We recommend a longer, more complex password. Enclose the entire password string in single quotes. For example, `--admin-password='A0b9%t3g'`|Yes|

**Site and database configuration options:**

|Name|Value|Required?|
|--- |--- |--- |
|`--base-url`|Base URL to use to access your Admin and storefront in any of the following formats:<br><br>`http[s]://<host or ip>/<your install dir>/`.<br><br>**Note:** The scheme (http:// or https://) and a trailing slash are both required.<br><br>`<your install dir>` is the docroot-relative path in which to install the application. Depending on how you set up your web server and virtual hosts, the path might be magento2 or it might be blank.<br><br>To access the application on localhost, you can use either `http://127.0.0.1/<your install dir>/` or `http://127.0.0.1/<your install dir>/`.<br><br>- `{{base_url}}` which represents a base URL defined by a virtual host setting or by a virtualization environment like Docker. For example, if you set up a virtual host with the hostname commerce.example.com, you can install the application with `--base-url={{base_url}}` and access the Admin with a URL like `http://commerce.example.com/admin`.|Yes|
|`--backend-frontname`|Uniform Resource Identifier (URI) to access the Admin. You can omit this parameter to let the application generate a random URI for you with the following pattern <code>admin_jkhgdfq</code>.<br><br>We recommend a random URI for security purposes. A random URI is harder for hackers or malicious software to exploit.<br><br>The URI displays at the end of the installation. You can display it later at any time using the `magento info:adminuri` command.<br><br>If you choose to enter a value, we recommend you not use a common word like admin, backend. The Admin URI can contain alphanumeric values and the underscore character (`_`) only.|No|
|`--db-host`|Use any of the following:<br><br>- The database server's fully qualified hostname or IP address.<br><br>- `localhost` (default) or `127.0.0.1` if your database server is on the same host as your web server.localhost means the MySQL client library uses UNIX sockets to connect to the database. `127.0.0.1` causes the client library to use the TCP protocol. For more information about sockets, see the [PHP PDO_MYSQL documentation](https://www.php.net/manual/en/ref.pdo-mysql.php).<br><br>**Note:** You can optionally specify the database server port in its hostname like www.example.com:9000|Yes|
|`--db-name`|Name of the database instance in which you want to install the database tables.<br><br>Default is `magento2`.|Yes|
|`--db-user`|Username of the database instance owner.<br><br>Default is `root`.|Yes|
|`--db-password`|Database instance owner's password.|Yes|
|`--db-prefix`|Use only if you're installing the database tables in a database instance that has Adobe Commerce tables in it already.<br><br>In that case, use a prefix to identify the tables for this installation. Some customers have more than one Adobe Commerce instance running on a server with all tables in the same database.<br><br>The prefix can be a maximum of five characters in length. It must begin with a letter and can include only letters, numbers, and underscore characters.<br><br>This option enables those customers to share the database server with more than one installation.|No|
|`--db-ssl-key`|Path to the client key.|No|
|`--db-ssl-cert`|Path to the client certificate.|No|
|`--db-ssl-ca`|Path to the server certificate.|No|
|`--language`|Language code to use in the Admin and storefront. (If you have not already done so, you can view the list of language codes by entering `magento info:language:list` from the bin directory.)|No|
|`--currency`|Default currency to use in the storefront. (If you have not already done so, you can view the list of currencies by entering `magento info:currency:list` from the bin directory.)|No|
|`--timezone`|Default time zone to use in the Admin and storefront. (If you have not already done so, you can view the list of time zones by entering `magento info:timezone:list` from the bin directory.)|No|
|`--use-rewrites`|`1` means you use web server rewrites for generated links in the storefront and Admin.<br><br>`0` disables the use of web server rewrites. This is the default.|No|
|`--use-secure`|`1` enables the use of Secure Sockets Layer (SSL) in storefront URLs. Make sure that your web server supports SSL before you select this option.<br><br>`0` disables the use of SSL. In this case, all other secure URL options are assumed to also be 0. This is the default.|No|
|`--base-url-secure`|Secure base URL to use to access your Admin and storefront in the following format: `http[s]://<host or ip>/<your install dir>/`|No|
|`--use-secure-admin`|`1` means you use SSL to access the Admin. Make sure that your web server supports SSL before you select this option.<br><br>`0` means you do not use SSL with the Admin. This is the default.|No|
|`--admin-use-security-key`|1 causes the application to use a randomly generated key value to access pages in the Admin and in forms. These key values help prevent cross-site script forgery attacks. This is the default.<br><br>`0` disables the use of the key.|No|
|`--session-save`|Use any of the following:<br><br>- `db` to store session data in the database. Choose database storage if you have a clustered database; otherwise, there might not be much benefit over file-based storage.<br><br>- `files` to store session data in the file system. File-based session storage is appropriate unless the file system access is slow, you have a clustered database, or you want to store session data in Redis.<br><br>- `redis` to store session data in Redis. If you are using Redis for default or page caching, Redis must be already installed. See Use Redis for session storage for additional information about configuring support for Redis.|No|
|`--key`|If you have one, specify a key to encrypt sensitive data in the database. If you don't have one, the application generates one for you.|Yes|
|`--cleanup-database`|To drop database tables before installing the application, specify this parameter without a value. Otherwise, the database is left intact.|No|
|`--db-init-statements`|Advanced MySQL configuration parameter. Uses database initialization statements to run when connecting to the MySQL database. Consult a reference similar to this one before you set any values.<br><br>Default is `SET NAMES utf8;`.|No|
|`--sales-order-increment-prefix`|Specify a string value to use as a prefix for sales orders. Typically, this is used to guarantee unique order numbers for payment processors.|No|

>[!TIP]
>
>To enable remote storage services during installation, see [Configure Remote Storage](../../configuration/remote-storage/remote-storage.md) in the _Configuration Guide_.

**Search engine configuration options:**

|Name|Value|Required?|
|--- |--- |--- |
`--search-engine` | The version of the search engine. Possible values are `elasticsearch7`, `elasticsearch6`, and `elasticsearch5`. The default is `elasticsearch7`. If you have installed OpenSearch as your search engine, specify the value `elasticsearch7`. Elasticsearch 5 has been deprecated and is not recommended. | No
`--elasticsearch-host` | The host name or IP address where the search engine is running. The default is `localhost`. | No
`--elasticsearch-port` | The port for incoming HTTP requests. The default is `9200`. | No
`--elasticsearch-index-prefix` | A prefix that identifies the search index. The default is `magento2`. | No
`--elasticsearch-timeout` | The number of seconds before the system times out. The default is `15`. | No
`--elasticsearch-enable-auth` | Enables authentication on the search engine server. The default is `false`. | No
`--elasticsearch-username` | The user ID to authenticate  | No, unless authentication is enabled
`--elasticsearch-password` | The password to authenticate | No, unless authentication is enabled

**[!DNL RabbitMQ] configuration options:**

|Name|Value|Required?|
|--- |--- |--- |
|`--amqp-host`|Do not use the `--amqp` options unless you have already set up an installation of [!DNL RabbitMQ]. See [!DNL RabbitMQ] installation for more information about installing and configuring [!DNL RabbitMQ].<br><br>The hostname where [!DNL RabbitMQ] is installed.|No|
|`--amqp-port`|The port to use to connect to [!DNL RabbitMQ]. The default is 5672.|No|
|`--amqp-user`|The username for connecting to [!DNL RabbitMQ]. Do not use the default user `guest`.|No|
|`--amqp-password`|The password for connecting to [!DNL RabbitMQ]. Do not use the default password `guest`.|No|
|`--amqp-virtualhost`|The virtual host for connecting to [!DNL RabbitMQ]. The default is `/`.|No|
|`--amqp-ssl`|Indicates whether to connect to [!DNL RabbitMQ]. The default is `false`. See [!DNL RabbitMQ] for information about setting up SSL for [!DNL RabbitMQ].|No|
|`--consumers-wait-for-messages`|Should consumers wait for a message from the queue? 1 - Yes, 0 - No|No|

**Remote storage options:**

| Name| Description | Required? |
|--- |--- |--- |
| `remote-storage-driver` | Adapter name<br>Possible values:<br>**file**: Disables remote storage and uses the local filesystem<br>**aws-s3**: Use the [Amazon Simple Storage Service (Amazon S3)](https://aws.amazon.com/s3/) | No |
| `remote-storage-bucket` | Object storage or container name | No |
| `remote-storage-prefix` | Optional prefix (location inside of object storage) | No |
| `remote-storage-region` | Region name | No |
| `remote-storage-key` | Optional access key | No |
| `remote-storage-secret` | Optional secret key | No |

**Lock configuration options:**

|Name|Value|Required?|
|--- |--- |--- |
|`--lock-provider`|Lock provider name.<br><br>Available lock providers: `db`, `zookeeper`, `file`.<br><br>The default lock provider: `db`|No|
|`--lock-db-prefix`|The specific db prefix to avoid lock conflicts when using `db` lock provider.<br><br>The default value: `NULL`|No|
|`--lock-zookeeper-host`|Host and port to connect to Zookeeper cluster when you use `zookeeper` lock provider.<br><br>For example: `127.0.0.1:2181`|Yes, if you set `--lock-provider=zookeeper`|
|`--lock-zookeeper-path`|The path where Zookeeper saves locks.<br><br>The default path is: `/magento/locks`|No|
|`--lock-file-path`|The path where file locks are saved.|Yes, if you set `--lock-provider=file`|

**Consumers configuration options:**

{{$include /help/_includes/cli-consumers.md}}

>[!NOTE]
>
>To enable or disable modules after installing the application, see [Enable and disable modules](manage-modules.md).

**Sensitive data:**

{{$include /help/_includes/sensitive-data.md}}

### Sample localhost installations

The following examples show the commands to install Adobe Commerce locally with various options.

#### Example 1—Basic installation with admin user account

The following example installs the application with the following options:

*  The application is installed in the `magento2` directory relative to the web server docroot on `localhost` and the path to the Admin is `admin`; therefore:

   Your storefront URL is `http://127.0.0.1`

*  The database server is on the same host as the web server.

   The database name is `magento`, and the username and password are both `magento`

*  Uses server rewrites

*  The administrator has the following properties:

    *  First and last names are `Commerce User`
    *  Username is `admin` and the password is `admin123`
    *  E-mail address is `user@example.com`

*  Default language is `en_US` (U.S. English)
*  Default currency is U.S. dollars
*  Default time zone is U.S. Central (America/Chicago)
*  Elasticsearch 7 is installed on `es-host.example.com` and connects on port 9200

```bash
magento setup:install --base-url=http://127.0.0.1/magento2/ \
--db-host=localhost --db-name=magento --db-user=magento --db-password=magento \
--admin-firstname=Commerce --admin-lastname=User --admin-email=user@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago --use-rewrites=1 \
--search-engine=elasticsearch7 --elasticsearch-host=es-host.example.com \
--elasticsearch-port=9200
```

Messages similar to the following display to indicate a successful installation:

```
Post installation file permissions check...
For security, remove write permissions from these directories: '/var/www/html/magento2/app/etc'
[Progress: 274 / 274]
[SUCCESS]: Magento installation complete.
[SUCCESS]: Admin Panel URI: /admin_puu71q
```

#### Example 2—Basic install without admin user account

You can install the application without creating the administrator user as shown in the following example.

```bash
magento setup:install --base-url=http://127.0.0.1/magento2/ \
--db-host=localhost --db-name=magento --db-user=magento --db-password=magento \
--language=en_US --currency=USD --timezone=America/Chicago --use-rewrites=1 \
--search-engine=elasticsearch7 --elasticsearch-host=es-host.example.com \
--elasticsearch-port=9200
```

Messages like the following display if the installation is successful:

```
Post installation file permissions check...
For security, remove write permissions from these directories: '/var/www/html/magento2/app/etc'
[Progress: 274 / 274]
[SUCCESS]: Magento installation complete.
[SUCCESS]: Admin Panel URI: /admin_puu71q
```

After installation you can create an admin user using the `admin:user:create` command:
[Create or edit an administrator](admin.md#create-or-edit-an-administrator)

#### Example 3—Install with additional options

The following example installs the application with the following options:

*  The Magapplication is installed in the `magento2` directory relative to the web server docroot on `localhost` and the path to the Admin is `admin`; therefore:

   Your storefront URL is `http://127.0.0.1`

*  The database server is on the same host as the web server.

   The database name is `magento`, and the username and password are both `magento`

*  The administrator has the following properties:

    *  First and last names are `Commerce User`
    *  Username is `admin` and the password is `admin123`
    *  E-mail address is `user@example.com`

*  Default language is `en_US` (U.S. English)
*  Default currency is U.S. dollars
*  Default time zone is U.S. Central (America/Chicago)
*  The installer first cleans up the database before installing the tables and schema
*  You use a `ORD$` sales order increment prefix (since it contains a special character [`$`], the value must be enclosed in double quotes)
*  Session data is saved in the database
*  Uses server rewrites
*  Elasticsearch 7 is installed on `es-host.example.com` and connects on port 9200

```bash
magento setup:install --base-url=http://127.0.0.1/magento2/ \
--db-host=localhost --db-name=magento --db-user=magento --db-password=magento \
--admin-firstname=Commerce --admin-lastname=User --admin-email=user@example.com \
--admin-user=admin --admin-password=admin123 --language=en_US \
--currency=USD --timezone=America/Chicago --cleanup-database \
--sales-order-increment-prefix="ORD$" --session-save=db --use-rewrites=1 \
--search-engine=elasticsearch7 --elasticsearch-host=es-host.example.com \
--elasticsearch-port=9200
```

>[!NOTE]
>
>You must enter the command either on a single line or, as in the preceding example, with a `\` character at the end of each line.

Messages like the following display if the installation is successful:

```
Post installation file permissions check...
For security, remove write permissions from these directories: '/var/www/html/magento2/app/etc'
[Progress: 274 / 274]
[SUCCESS]: Magento installation complete.
[SUCCESS]: Admin Panel URI: /admin_puu71q
```

>[!TIP]
>
>If you have one user account to access the application server, see [set a umask](../next-steps/set-umask.md). This type of setup is typical for shared hosting.

<!-- Last updated from includes: 2024-04-16 09:42:31 -->
