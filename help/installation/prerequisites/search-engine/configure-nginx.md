---
title: Configure Nginx for your search engine
description: Follow these steps to configure a search engine with the Nginx web server for on-premises installations of Adobe Commerce.
feature: Install, Search
exl-id: 8d2f8695-e30a-4acc-bba3-d122212b0a53
---
# Configure Nginx for your search engine

{{$include /help/_includes/web-server-communication.md}}

## Set up a proxy

>[!NOTE]
>
>OpenSearch support was added in 2.4.4. OpenSearch is a compatible fork of ElasticSearch. See [Migrate ElasticSearch to OpenSearch](../../../upgrade/prepare/opensearch-migration.md) for more information.

This section discusses how to configure nginx as an *unsecure* proxy so that Adobe Commerce can use a search engine running on this server. This section does not discuss setting up HTTP Basic authentication; that is discussed in [Secure communication with nginx](#secure-communication-with-nginx).

>[!NOTE]
>
>The reason the proxy is not secured in this example is that it is easier to set up and verify. You can use TLS with this proxy if you want; to do so, make sure you add the proxy information to your secure server block configuration.

### Specify additional configuration files in your global configuration

Make sure your global `/etc/nginx/nginx.conf` contains the following line so it loads the other configuration files discussed in the following sections:

```conf
include /etc/nginx/conf.d/*.conf;
```

### Set up nginx as a proxy

This section discusses how to specify who can access the nginx server.

1. Use a text editor to create a file `/etc/nginx/conf.d/magento_es_auth.conf` with the following contents:

   ```conf
   server {
      listen 8080;
      location /_cluster/health {
         proxy_pass http://localhost:9200/_cluster/health;
      }
   }
   ```

1. Restart nginx:

   ```bash
   service nginx restart
   ```

1. Verify the proxy works by entering the following command:

   ```bash
   curl -i http://localhost:<proxy port>/_cluster/health
   ```

   For example, if your proxy uses port 8080:

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

## Secure communication with nginx

This section discusses how to set up [HTTP Basic authentication](https://nginx.org/en/docs/http/ngx_http_auth_basic_module.html) with your secure proxy. Use of TLS and HTTP Basic authentication together prevents anyone from intercepting communication with Elasticsearch or OpenSearch or with your application server.

Because nginx natively supports HTTP Basic authentication, we recommend it over, for example, [Digest authentication](https://www.nginx.com/resources/wiki/modules/auth_digest/), which isn't recommended in production.

Additional resources:

*  [How To Set Up Password Authentication with Nginx on Ubuntu 14.04 (Digital Ocean)](https://www.digitalocean.com/community/tutorials/how-to-set-up-password-authentication-with-nginx-on-ubuntu-14-04)
*  [Basic HTTP Authentication With Nginx (HowtoForge)](https://www.howtoforge.com/basic-http-authentication-with-nginx)
*  [Example Nginx Configurations for Elasticsearch](https://gist.github.com/karmi/b0a9b4c111ed3023a52d)

See the following sections for more information:

*  [Create passwords](#create-a-password)
*  [Set up access to nginx](#set-up-access-to-nginx)
*  [Set up a restricted context for the search engine](#set-up-a-restricted-context-for-the-search-engine)
*  [Verify that communication is secure](#secure-communication-with-nginx)

### Create a password

We recommend you use the Apache `htpasswd` command to encode passwords for a user with access to Elasticsearch or OpenSearch (named `magento_elasticsearch` in this example).

To create a password:

1. Enter the following command to determine if `htpasswd` is already installed:

   ```bash
   which htpasswd
   ```

   If a path displays, it is installed; if the command returns no output, `htpasswd` is not installed.

1. If necessary, install `htpasswd`:

   *  Ubuntu: `apt-get -y install apache2-utils`
   *  CentOS: `yum -y install httpd-tools`

1. Create a `/etc/nginx/passwd` directory to store passwords:

   ```bash
   mkdir -p /etc/nginx/passwd
   ```

   ```bash
   htpasswd -c /etc/nginx/passwd/.<filename> <username>
   ```

   >[!WARNING]
   >
   >For security reasons, `<filename>` should be hidden; that is, it must start with a period.

1. *(Optional).* To add another user to your password file, enter the same command without the `-c` (create) option:

   ```bash
   htpasswd /etc/nginx/passwd/.<filename> <username>
   ```

1. Verify that the contents of `/etc/nginx/passwd` is correct.

### Set up access to nginx

This section discusses how to specify who can access the nginx server.

>[!WARNING]
>
>The example shown is for an *unsecure* proxy. To use a secure proxy, add the following contents (except the listen port) to your secure server block.

Use a text editor to modify either `/etc/nginx/conf.d/magento_es_auth.conf` (unsecure) or your secure server block with the following contents:

```conf
server {
  listen 8080;
  server_name 127.0.0.1;

  location / {
   limit_except HEAD {
      auth_basic "Restricted";
      auth_basic_user_file  /etc/nginx/passwd/.htpasswd_magento_elasticsearch;
   }
   proxy_pass http://127.0.0.1:9200;
   proxy_redirect off;
   proxy_set_header Host $host;
   proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  location /_aliases {
   auth_basic "Restricted";
   auth_basic_user_file  /etc/nginx/passwd/.htpasswd_magento_elasticsearch;
   proxy_pass http://127.0.0.1:9200;
   proxy_redirect off;
   proxy_set_header Host $host;
   proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  include /etc/nginx/auth/*.conf;
}
```

>[!NOTE]
>
>The search engine listen port shown in the preceding example are examples only. For security reasons, we recommend you use a non-default listen port.

### Set up a restricted context for the search engine

This section discusses how to specify who can access the search engine server.

1. Enter the following command to create a directory to store the authentication configuration:

   ```bash
   mkdir /etc/nginx/auth/
   ```

1. Use a text editor to create a file `/etc/nginx/auth/magento_elasticsearch.conf` with the following contents:

   ```conf
   location /elasticsearch {
   auth_basic "Restricted - elasticsearch";
   auth_basic_user_file /etc/nginx/passwd/.htpasswd_magento_elasticsearch;

   proxy_pass http://127.0.0.1:9200;
   proxy_redirect off;
   proxy_set_header Host $host;
   proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
   }
   ```

1. If you set up a secure proxy, delete `/etc/nginx/conf.d/magento_es_auth.conf`.
1. Restart nginx and continue with the next section:

   ```bash
   service nginx restart
   ```

#### Verify

{{$include /help/_includes/verify-secure-communication.md}}
