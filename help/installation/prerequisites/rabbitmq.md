---
title: Message broker (RabbitMQ)
description: Follow these steps to install and configure required message broker software (such as [!DNL RabbitMQ]) for on-premises installations of Adobe Commerce.
exl-id: ae6200d6-540f-46b3-92ba-7df7f6bb6fae
---
# Message broker (RabbitMQ)

Adobe Commerce uses the [!DNL RabbitMQ] open-source message broker. It offers a reliable, highly available, scalable, and portable messaging system.

Message queues provide an asynchronous communications mechanism in which the sender and the receiver of a message do not contact each other. Nor do they need to communicate with the message queue at the same time. When a sender places a message in a queue, it is stored until the recipient receives them.

The message queue system must be established before you install Adobe Commerce. The basic sequence is:

1. Install [!DNL RabbitMQ] and any prerequisites.
1. Connect [!DNL RabbitMQ] to Adobe Commerce.

>[!NOTE]
>
>You can use MySQL or [!DNL RabbitMQ] for message queue processing. For details on setting up the message queue system, see [Message queues overview](https://developer.adobe.com/commerce/php/development/components/message-queues/). If you are using the Bulk API with Adobe Commerce, the message queue system configuration defaults to using [!DNL RabbitMQ] as the message broker. See [Start message queue consumers](../../configuration/cli/start-message-queues.md) for more information.

## Install [!DNL RabbitMQ] on Ubuntu

To install [!DNL RabbitMQ] on Ubuntu 16, enter the following command:

```bash
sudo apt install -y rabbitmq-server
```

This command also installs the required Erlang packages.

If you have an older version of Ubuntu, [!DNL RabbitMQ] recommends installing the package from their website.

1. Download the .deb package from [rabbitmq-server](https://www.rabbitmq.com/download.html).
1. Install the package with `dpkg`.

Refer to [Installing on Debian/Ubuntu](https://www.rabbitmq.com/install-debian.html) for more information.

## Install [!DNL RabbitMQ] on CentOS

### Install Erlang

[!DNL RabbitMQ] was written using the Erlang programming language, which must be installed on the same system as [!DNL RabbitMQ].

See [Manual installation](https://www.erlang-solutions.com/downloads/) for more information.

Refer to the [[!DNL RabbitMQ]/Erlang version matrix](https://www.rabbitmq.com/which-erlang.html) to install the correct version.

### Install [!DNL RabbitMQ]

The [!DNL RabbitMQ] server is included on CentOS, but the version is often old. [!DNL RabbitMQ] recommends installing the package from their website.

Refer to the [!DNL RabbitMQ] install page to get the latest supported version. Adobe Commerce 2.3 and 2.4 support [!DNL RabbitMQ] 3.8.x.

Refer to [Installing on RPM-based Linux](https://www.rabbitmq.com/install-rpm.html) for more information.

## Configure [!DNL RabbitMQ]

Review the official [!DNL RabbitMQ] documentation to configure and manage [!DNL RabbitMQ]. Pay attention to the following items:

*  Environment variables
*  Port access
*  Default user accounts
*  Starting and stopping the broker
*  System limits

## Install with [!DNL RabbitMQ] and connect

If you install Adobe Commerce _after_ you install [!DNL RabbitMQ], add the following command-line parameters during installation:

```bash
--amqp-host="<hostname>" --amqp-port="5672" --amqp-user="<user_name>" --amqp-password="<password>" --amqp-virtualhost="/"
```

Where:

|Parameter|Description|
|--- |--- |
|`--amqp-host`|The hostname where [!DNL RabbitMQ] is installed.|
|`--amqp-port`|The port to use to connect to [!DNL RabbitMQ]. The default is `5672`.|
|`--amqp-user`|The username for connecting to [!DNL RabbitMQ]. Do not use the default user `guest`.|
|`--amqp-password`|The password for connecting to [!DNL RabbitMQ]. Do not use the default password `guest`.|
|`--amqp-virtualhost`|The virtual host for connecting to [!DNL RabbitMQ]. The default is `/`.|
|`--amqp-ssl`|Indicates whether to connect to [!DNL RabbitMQ]. The default is `false`. If you set the value to true, see Configure SSL for more information.|

## Connect [!DNL RabbitMQ]

If you already had Adobe Commerce installed and you want to connect it to [!DNL RabbitMQ], add a `queue` section in the `<install_directory>/app/etc/env.php` file so that it is similar to the following:

```php
'queue' =>
  array (
    'amqp' =>
    array (
      'host' => 'rabbitmq.example.com',
      'port' => '11213',
      'user' => 'magento',
      'password' => 'magento',
      'virtualhost' => '/'
     ),
  ),
```

You can also set [!DNL RabbitMQ] configuration values using the `bin/magento setup:config:set` command:

```bash
bin/magento setup:config:set --amqp-host="rabbitmq.example.com" --amqp-port="11213" --amqp-user="magento" --amqp-password="magento" --amqp-virtualhost="/"
```

After the running the command or updating the `<install_directory>/app/etc/env.php` file with AMQP configuration values, run `bin/magento setup:upgrade` to apply the changes and create the required queues and exchanges in [!DNL RabbitMQ].

## Configure SSL

To configure support for SSL, edit the `ssl` and `ssl_options` parameters in the `<install_directory>/app/etc/env.php` file so that they are similar to the following:

```php
'queue' =>
  array (
    'amqp' =>
    array (
      'host' => 'rabbitmq.example.com',
      'port' => '11213',
      'user' => 'magento',
      'password' => 'magento',
      'virtualhost' => '/',
      'ssl' => 'true',
      'ssl_options' => [
            'cafile' =>  '/etc/pki/tls/certs/DigiCertCA.crt',
            'certfile' => '/path/to/magento/app/etc/ssl/test-rabbit.crt',
            'keyfile' => '/path/to/magento/app/etc/ssl/test-rabbit.key'
       ],
     ),
  ),
```

## Start the message queue consumers

After you have connected Adobe Commerce and [!DNL RabbitMQ], you must start the message queue consumers. See [Configure message queues](../../configuration/cli/start-message-queues.md) for details.
