---
title: Configure Apache for your search engine
description: Follow these steps to configure a search engine with the Apache web server for on-premises installations of Adobe Commerce.
feature: Install, Search
exl-id: b35c95a7-0c00-48e5-b37d-7c9e17feebec
---
# Configure Apache for your search engine

{{$include /help/_includes/web-server-communication.md}}

## Set up a proxy

>[!NOTE]
>
>OpenSearch support was added in 2.4.4. OpenSearch is a compatible fork of ElasticSearch. See [Migrate ElasticSearch to OpenSearch](../../../upgrade/prepare/opensearch-migration.md) for more information.

This section discusses how to configure Apache as an *unsecure* proxy so that Adobe Commerce can use a search engine running on this server. This section does not discuss setting up HTTP Basic authentication; that is discussed in [Secure communication with Apache](#secure-communication-with-apache).

>[!NOTE]
>
>The reason the proxy is not secured in this example is that it is easier to set up and verify. You can use TLS with this proxy. If you wish to do so, make sure you add the proxy information to your secure virtual host configuration.

### Set up a proxy for Apache 2.4

This section discusses how to configure a proxy using a virtual host.

1. Enable `mod_proxy` as follows:

   ```bash
   a2enmod proxy_http
   ```

1. Use a text editor to open `/etc/apache2/sites-available/000-default.conf`
1. Add the following directive at the top of the file:

   ```conf
   Listen 8080
   ```

1. Add the following at the bottom of the file:

   ```conf
   <VirtualHost *:8080>
       ProxyPass "/" "http://localhost:9200/"
       ProxyPassReverse "/" "http://localhost:9200/"
   </VirtualHost>
   ```

1. Restart Apache:

   ```bash
   service apache2 restart
   ```

1. Verify the proxy works by entering the following command:

   ```bash
   curl -i http://localhost:<proxy port>/_cluster/health
   ```

   For example, if you are using Elasticsearch and your proxy uses port 8080:

   ```bash
   curl -i http://localhost:8080/_cluster/health
   ```

   Messages similar to the following display to indicate success:

   ```
   HTTP/1.1 200 OK
   Date: Tue, 23 Feb 2019 20:38:03 GMT
   Content-Type: application/json; charset=UTF-8
   Content-Length: 389
   Connection: keep-alive

   {"cluster_name":"elasticsearch","status":"yellow","timed_out":false,"number_of_nodes":1,"number_of_data_nodes":1,"active_primary_shards":5,"active_shards":5,"relocating_shards":0,"initializing_shards":0,"unassigned_shards":5,"delayed_unassigned_shards":0,"number_of_pending_tasks":0,"number_of_in_flight_fetch":0,"task_max_waiting_in_queue_millis":0,"active_shards_percent_as_number":50.0}
   ```

## Secure communication with Apache

This section discusses how to secure communication between Apache and the search engine using [HTTP Basic](https://datatracker.ietf.org/doc/html/rfc2617) authentication with Apache. For more options, consult one of the following resources:

*  [Apache 2.4 authentication and authorization tutorial](https://httpd.apache.org/docs/2.4/howto/auth.html)

See one of the following sections:

*  [Create a password file](#create-a-password)
*  [Configure your secure virtual host](#secure-communication-with-apache)

### Create a password

For security reasons, you can locate the password file anywhere except your web server docroot. In this example, we show how to store the password file in a new directory.

#### Install htpasswd if necessary

First, see if you have the Apache `htpasswd` utility is installed as follows:

1. Enter the following command to determine if `htpasswd` is already installed:

   ```bash
   which htpasswd
   ```

   If a path displays, it is installed; if the command returns no output, `htpasswd` is not installed.

1. If necessary, install `htpasswd`:

   *  Ubuntu: `apt-get -y install apache2-utils`
   *  CentOS: `yum -y install httpd-tools`

#### Create a password file

Enter the following commands as a user with `root` privileges:

```bash
mkdir -p /usr/local/apache/password
```

```bash
htpasswd -c /usr/local/apache/password/.<password file name> <username>
```

Where

*  `<username>` can be:

    *  Setting up cron: the web server user or another user.

      In this example, we use the web server user, but the choice of user is up to you.

    *  Setting up Elasticsearch: the user is named `magento_elasticsearch` in this example

*  `<password file name>` must be a hidden file (starts with `.`) and should reflect the name of the user. See the examples later in this section for details.

Follow the prompts on your screen to create a password for the user.

#### Examples

**Example 1: cron**
You must set up authentication for only one user for cron; in this example, we use the web server user. To create a password file for the web server user, enter the following commands:

```bash
mkdir -p /usr/local/apache/password
```

```bash
htpasswd -c /usr/local/apache/password/.htpasswd apache
```

**Example 2: Elasticsearch**
You must set up authentication for two users: one with access to nginx and one with access to Elasticsearch. To create password files for these users, enter the following commands:

```bash
mkdir -p /usr/local/apache/password
```

```bash
htpasswd -c /usr/local/apache/password/.htpasswd_elasticsearch magento_elasticsearch
```

#### Add additional users

To add another user to your password file, enter the following command as a user with `root` privileges:

```bash
htpasswd /usr/local/apache/password/.htpasswd <username>
```

### Secure communication with Apache

This section discusses how to set up [HTTP Basic authentication](https://httpd.apache.org/docs/2.2/howto/auth.html). Use of TLS and HTTP Basic authentication together prevents anyone from intercepting communication with Elasticsearch or OpenSearch or with your application server.

This section discusses how to specify who can access the Apache server.

1. Use a text editor to add the following contents to your secure virtual host.

   *  Apache 2.4: Edit `/etc/apache2/sites-available/default-ssl.conf`

   ```conf
   <Proxy *>
       Order deny,allow
       Allow from all

       AuthType Basic
       AuthName "Elasticsearch Server" # or OpenSearch Server
       AuthBasicProvider file
       AuthUserFile /usr/local/apache/password/.htpasswd_elasticsearch
       Require valid-user

     # This allows OPTIONS-requests without authorization
     <LimitExcept OPTIONS>
           Require valid-user
     </LimitExcept>
   </Proxy>
   ```

1. If you added the preceding to your secure virtual host, remove `Listen 8080` and the `<VirtualHost *:8080>` directives you added earlier to your unsecure virtual host.

1. Save your changes, exit the text editor, and restart Apache:

   *  CentOS: `service httpd restart`
   *  Ubuntu: `service apache2 restart`

#### Verify

{{$include /help/_includes/verify-secure-communication.md}}
