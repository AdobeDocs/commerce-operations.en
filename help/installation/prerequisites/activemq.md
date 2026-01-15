---
title: Message broker (ActiveMQ Artemis)
description: Follow these steps to install and configure Apache ActiveMQ Artemis message broker for on-premises installations of Adobe Commerce.
---
# Message broker (ActiveMQ Artemis)

Adobe Commerce also supports the ActiveMQ Artemis open-source message broker through the Simple Text Oriented Messaging Protocol (STOMP). It delivers a reliable and scalable messaging system, offering flexibility for STOMP-based integrations.


>[!NOTE]
>
>ActiveMQ Artemis was introduced in Adobe Commerce 2.4.5 and later versions. For details on installing ActiveMQ Artemis in Adobe Commerce on cloud infrastructure projects, see [Set up ActiveMQ service](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/service/activemq) in the *Commerce on Cloud Guide*.

Message queues provide an asynchronous communications mechanism in which the sender and the receiver of a message do not contact each other. Nor do they need to communicate with the message queue at the same time. When a sender places a message in a queue, it is stored until the recipient receives them.

The message queue system must be established before you install Adobe Commerce. The basic sequence is:

1. Install Apache ActiveMQ Artemis and any prerequisites.
1. Connect ActiveMQ to Adobe Commerce.

>[!NOTE]
>
>You can use MySQL, ActiveMQ, or [!DNL RabbitMQ] for message queue processing. For details on setting up the message queue system, see [Message queues overview](https://developer.adobe.com/commerce/php/development/components/message-queues/). If you are using the Bulk API with Adobe Commerce, the message queue system configuration defaults to using [!DNL RabbitMQ] as the message broker. See [Start message queue consumers](../../configuration/cli/start-message-queues.md) for more information.

>[!TIP]
>
>Always check the [Apache ActiveMQ Artemis download page](https://activemq.apache.org/components/artemis/download/) for the latest stable version before installation. The examples in this document use version 2.42.0, which was the latest stable release as of September 2025.


## Install Apache ActiveMQ Artemis

You can install ActiveMQ Artemis using either Docker (recommended for development) or manual installation (recommended for production).

### Option 1: Docker Installation (recommended for development)

#### Prerequisites

Ensure Docker is installed and running on your system.

>[!TIP]
>
>For more information about the official ActiveMQ Artemis Docker image, see the [Apache ActiveMQ Artemis Docker Hub page](https://hub.docker.com/r/apache/activemq-artemis).

#### Installation steps

1. Run ActiveMQ Artemis using the official Docker image:

    ```bash
    # Run with default configuration
    docker run --detach \
      --name artemis \
      --publish 8161:8161 \
      --publish 61613:61613 \
      --publish 5672:5672 \
      apache/activemq-artemis:2.42.0
    ```

1. Run with custom credentials:

    ```bash
    # Run with custom username/password
    docker run --detach \
      --name artemis \
      --publish 8161:8161 \
      --publish 61613:61613 \
      --publish 5672:5672 \
      --env ARTEMIS_USER=magento \
      --env ARTEMIS_PASSWORD=magento \
      apache/activemq-artemis:2.42.0
    ```

#### Docker management commands

```bash
# Check container status
docker ps | grep artemis

# View logs
docker logs artemis

# Stop the container
docker stop artemis

# Start the container
docker start artemis

# Remove the container
docker rm artemis
```

#### Accessing services

Once the Docker container is running, you can access:

- **Web console**: http://localhost:8161/console (default credentials: artemis/artemis)
- **STOMP port**: localhost:61613 (for Adobe Commerce connection)

>[!NOTE]
>
>The Docker installation is recommended for development and testing. For production, consider using the manual installation with proper security configurations.

### Option 2: Manual installation on Ubuntu/CentOS

#### Prerequisites

Ensure Java 17 or higher is installed (required for ActiveMQ Artemis 2.42.0+).

### Installation steps

1. Download and install the latest version from the [Apache ActiveMQ Artemis website](https://activemq.apache.org/components/artemis/download/). As of September 2025, the latest stable version is 2.42.0:

    ```bash
    sudo mkdir -p /opt/artemis
    cd /opt/artemis
    sudo curl -O https://downloads.apache.org/activemq/activemq-artemis/2.42.0/apache-artemis-2.42.0-bin.tar.gz
    sudo tar -xzf apache-artemis-2.42.0-bin.tar.gz --strip-components=1
    sudo rm apache-artemis-2.42.0-bin.tar.gz
    ```

1. Create the `artemis` user and set ownership:

    ```bash
    # Create artemis user and set ownership
    sudo useradd -r -s /bin/false artemis 2>/dev/null || true
    sudo chown -R artemis:artemis /opt/artemis
    ```

1. Create a broker instance:

    ```bash
    sudo /opt/artemis/bin/artemis create /var/lib/artemis-instance --user artemis --password artemis --allow-anonymous
    sudo chown -R artemis:artemis /var/lib/artemis-instance
    ```

1. Start the broker:

    ```bash
    # Start in foreground (for testing)
    sudo /var/lib/artemis-instance/bin/artemis run
    
    # Start as background service
    sudo /var/lib/artemis-instance/bin/artemis-service start
    
    # Stop the broker
    sudo /var/lib/artemis-instance/bin/artemis-service stop
    
    # Restart the broker
    sudo /var/lib/artemis-instance/bin/artemis-service restart
    
    # Force stop the broker
    sudo /var/lib/artemis-instance/bin/artemis-service force-stop
    
    # Check broker status
    sudo /var/lib/artemis-instance/bin/artemis-service status
    ```

## Configure ActiveMQ Artemis

Review the official ActiveMQ Artemis documentation to configure and manage the broker. Pay attention to the following items:

- Environment variables
- Port access (STOMP protocol)
- Default user accounts and credentials
- Starting and stopping the broker
- System limits and resource tuning

### Key Configuration Files

- `/var/lib/artemis-instance/etc/broker.xml` - Main broker configuration
- `/var/lib/artemis-instance/etc/artemis-users.properties` - User authentication
- `/var/lib/artemis-instance/etc/artemis-roles.properties` - User roles
- `/var/lib/artemis-instance/etc/bootstrap.xml` - Bootstrap configuration

### Enable STOMP Protocol

Check `/var/lib/artemis-instance/etc/broker.xml` to ensure STOMP acceptor is configured:

```xml
<acceptors>
   <acceptor name="artemis">tcp://0.0.0.0:61616?tcpSendBufferSize=1048576;tcpReceiveBufferSize=1048576;amqpMinLargeMessageSize=102400;protocols=CORE,AMQP,STOMP,HORNETQ,MQTT,OPENWIRE;useEpoll=true;amqpCredits=1000;amqpLowCredits=300;amqpDuplicateDetection=true</acceptor>
   <acceptor name="stomp">tcp://0.0.0.0:61613?protocols=STOMP</acceptor>
   <acceptor name="stomp-ssl">tcp://0.0.0.0:61617?protocols=STOMP;sslEnabled=true;keyStorePath=/path/to/keystore.jks;keyStorePassword=password</acceptor>
</acceptors>
```

To enable SSL on STOMP you must add the `stomp-ssl` acceptor explicitly. 

## Install with ActiveMQ Artemis and connect

If you install Adobe Commerce _after_ you install ActiveMQ Artemis, add the following command-line parameters during installation:

```bash
--stomp-host="<hostname>" --stomp-port="61613" --stomp-user="<user_name>" --stomp-password="<password>"
```

Where:

|Parameter|Description|
|--- |--- |
|`--stomp-host`|The hostname where ActiveMQ is installed.|
|`--stomp-port`|The port to use to connect to ActiveMQ. The default is `61613`.|
|`--stomp-user`|The username for connecting to ActiveMQ. Do not use the default user `artemis`.|
|`--stomp-password`|The password for connecting to ActiveMQ. Do not use the default password `artemis`.|
|`--stomp-ssl`|Indicates whether to connect to ActiveMQ. The default is `false`. If you set the value to true, see Configure SSL for more information.|

## Connect ActiveMQ Artemis

If you already have an Adobe Commerce instance with RabbitMQ (AMQP) configuration in the `<install_directory>/app/etc/env.php` file and you want to connect it to ActiveMQ, replace the `queue` section with the STOMP so that it is similar to the following:

```php
'queue' =>
  array (
    'stomp' =>
    array (
      'host' => 'activemq.example.com',
      'port' => '61613',  // SSL STOMP port (default 61617, non-SSL is 61613)
      'user' => 'magento',
      'password' => 'magento',
      // Performance tuning options
      'heartbeat_send' => 10000,     // 10 seconds // Optional
      'heartbeat_receive' => 10000,  // 10 seconds // Optional
      'read_timeout' => 250000       // 250ms // Optional
     ),
  ),
```

You can also set ActiveMQ configuration values using the `bin/magento setup:config:set` command (remove the AMQP configuration if it exists in the `app/etc/env.php` file):

```bash
bin/magento setup:config:set --stomp-host="activemq.example.com" --stomp-port="61613" --stomp-user="magento" --stomp-password="magento"
```

After running the command or updating the `<install_directory>/app/etc/env.php` file with STOMP configuration values, run `bin/magento setup:upgrade` to apply the changes and create the required queues in ActiveMQ.

## Configure SSL

To configure support for SSL, edit the `ssl` and `ssl_options` parameters in the `<install_directory>/app/etc/env.php` file so that they are similar to the following:

```php
'queue' =>
  array (
    'stomp' =>
    array (
      'host' => 'activemq.example.com',
      'port' => '61617',  // SSL STOMP port (default 61617, non-SSL is 61613)
      'user' => 'magento',
      'password' => 'magento',
      'ssl' => 'true',
      'ssl_options' => [
            'cafile' => '/etc/pki/tls/certs/DigiCertCA.crt',
            'local_cert' => '/path/to/magento/app/etc/ssl/test-activemq.crt', // Optional: Client certificate for mutual SSL
            'local_pk' => '/path/to/magento/app/etc/ssl/test-activemq.key', // Optional: Client private key for mutual SSL
            'passphrase' => 'client_key_password', // Optional: Passphrase for client private key
            'verify_peer' => true,
            'verify_peer_name' => true,
            'allow_self_signed' => false
       ],
      // Performance tuning options
      'heartbeat_send' => 10000,     // 10 seconds // Optional
      'heartbeat_receive' => 10000,  // 10 seconds // Optional
      'read_timeout' => 250000       // 250ms // Optional
     ),
  ),
```

### SSL Configuration Options

|Option|Description|Default|
|--- |--- |--- |
|`verify_peer`|Verify the broker's SSL certificate|`true`|
|`verify_peer_name`|Verify the broker's hostname matches the certificate|`true`|
|`allow_self_signed`|Allow self-signed certificates|`false`|
|`cafile`|Path to CA certificate file for broker verification|Required for SSL|
|`certfile`|Path to client certificate file (for mutual SSL)|Optional|
|`keyfile`|Path to client private key file (for mutual SSL)|Optional|
|`passphrase`|Passphrase for client private key|Optional|

### Development SSL Configuration

For development environments, you can use relaxed SSL settings:

```php
'ssl_options' => [
    'verify_peer' => false,
    'verify_peer_name' => false,
    'allow_self_signed' => true
]
```

## Performance tuning

ActiveMQ Artemis offers several performance tuning options:

```php
'queue' =>
  array (
    'stomp' =>
    array (
      'host' => 'activemq.example.com',
      'port' => '61613',
      'user' => 'artemis',
      'password' => 'artemis',
      // Performance options
      'heartbeat_send' => 10000,      // Send heartbeat every 10 seconds
      'heartbeat_receive' => 10000,   // Expect heartbeat every 10 seconds
      'read_timeout' => 250000,       // 250ms read timeout
     ),
  ),
```

## Monitoring and management

### Web console

ActiveMQ Artemis provides a web-based management console accessible at:
- URL: `http://localhost:8161/console`
- Default credentials: `artemis/artemis`

## Troubleshooting

### Common issues

1. **Connection refused**: Ensure ActiveMQ Artemis is running and the STOMP acceptor is configured.
1. **Authentication failed**: Check username/password in both broker configuration and the `env.php` file.
1. **SSL handshake failed**: Verify SSL certificates and configuration.




### Verify STOMP connection

Test STOMP connection using telnet:

```bash
telnet localhost 61613
```

You should see a connection established. To test with a STOMP command:

```bash
# Test basic STOMP connection
echo -e "CONNECT\nhost:localhost\n\n\x00" | telnet localhost 61613
```

Expected output should show connection established and STOMP protocol response.

## Start the message queue consumers

After you have connected Adobe Commerce and ActiveMQ Artemis, you must start the message queue consumers. See [Configure message queues](../../configuration/cli/start-message-queues.md) for details.

