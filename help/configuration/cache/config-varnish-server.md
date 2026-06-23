---
title: Configure nginx for Varnish Caching
description: Learn how to configure your web server to work with Varnish caching for Adobe Commerce. Discover port configuration and setup requirements.
feature: Configuration, Cache, Install, Logs
exl-id: b31179ef-3c0e-4a6b-a118-d3be1830ba4e
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T21:49:41.837Z'
TQID: 'https://experienceleague.adobe.com/0vOg86gRkST8CZGhdIESzhld63HQ5IUlO4go-Hgw9Xs'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
---
# Configure nginx for Varnish caching {#configure-web-server-for-varnish-caching}

When Varnish is used as the full-page cache in front of Adobe Commerce, Varnish typically listens on the public HTTP port and forwards requests to nginx on a non-default backend port such as 8080. Update the nginx site configuration for your Commerce origin server to listen on the backend port that Varnish will use.

{{varnish-config-cloud}}

The following sections use port 8080 as an example.

**Change the nginx listen port for the Commerce origin server**:

1. Open the nginx site configuration for your Adobe Commerce origin server in a text editor.

  The location depends on your operating system and nginx layout. For example, Ubuntu often uses a file under /etc/nginx/sites-available/.For example, Ubuntu often uses a file under `/etc/nginx/sites-available/`.

1. In the `server` block for the Commerce site, change the `listen` directive from the public HTTP port to the backend port that Varnish will use to reach nginx.

   For example, change

   ```conf
   server {
       listen 80;
       server_name example.com;
       root /var/www/html/magento2;
       include /var/www/html/magento2/nginx.conf.sample;
   }
   ```

   to:

   ```conf
   server {
       listen 8080;
       server_name example.com;
       root /var/www/html/magento2;
       include /var/www/html/magento2/nginx.conf.sample;
   }
   ```

1. Save the file.

1. Verify the nginx configuration:

   ```shell
   nginx -t
   ```

1. Restart nginx:

   ```shell
   systemctl restart nginx
   ```

## Modify the Varnish system configuration

After updating nginx to listen on the backend port, configure Varnish to forward requests to that host and port. For example:

```conf
backend default {
    .host = "192.0.2.55";
    .port = "8080";
}
```

### Modify the default VCL

This section discusses how to provide minimal configuration so Varnish returns HTTP response headers. This enables you to verify that Varnish works before you configure the [!DNL Commerce] application to use Varnish.

To minimally configure Varnish:

1. Back up `default.vcl`:

   ```shell
   cp /etc/varnish/default.vcl /etc/varnish/default.vcl.bak
   ```

1. Open `/etc/varnish/default.vcl` in a text editor.
1. Locate the following stanza:

   ```conf
   backend default {
       .host = "127.0.0.1";
       .port = "80";
   }
   ```

1. Replace the value of `.host` with the fully qualified hostname or IP address and listen port of the Varnish _backend_ or _origin server_; that is, the server providing the content Varnish will accelerate.

   Typically, this is your web server. See [Backend servers](https://varnish-cache.org/docs/trunk/users-guide/vcl-backends.html) in the _Varnish guide_.

1. Replace the value of `.port` with the web server's listen port (8080 in this example).

   Example: nginx is installed on host 192.0.2.55 and listening on port 8080:

   ```conf
   backend default {
       .host = "192.0.2.55";
       .port = "8080";
   }
   ```

   >[!INFO]
   >
   >If Varnish and nginx are running on the same host, Adobe recommends that you use an IP address or hostname and not `localhost`.

1. Save your changes to `default.vcl` and exit the text editor.

1. Restart Varnish:

   ```shell
   service varnish restart
   ```

If Varnish fails to start, try running it from the command line as follows:

```shell
varnishd -d -f /etc/varnish/default.vcl
```

This should display error messages.


>[!INFO]
>
>If Varnish does not start as a service, you must configure SELinux rules to allow it to run.

## Verify Varnish is working

The following sections discuss how you can verify that Varnish is working but _without_ configuring Commerce to use it. You should try this before you configure Commerce.

Perform the tasks discussed in the following sections in the order shown:

- [Start Varnish](#start-varnish)
- [`netstat`](#netstat)

### Start Varnish

Enter: `service varnish start`

If Varnish fails to start as a service, start it from the command line as follows:

1. Start the Varnish CLI:

   ```shell
   varnishd -d -f /etc/varnish/default.vcl
   ```

1. Start the Varnish child process:

   When prompted, enter `start`

   The following messages display to confirm a successful start:

   ```text
   child (29805) Started
   200 0

   Child (29805) said
   Child (29805) said Child starts
   ```

### netstat

Log in to the Varnish server and enter the following command:

```shell
netstat -tulpn
```

Look for the following output in particular:

```text
tcp        0      0 0.0.0.0:80                  0.0.0.0:*                   LISTEN      32614/varnishd
tcp        0      0 127.0.0.1:58484             0.0.0.0:*                   LISTEN      32604/varnishd
tcp        0      0 :::8080                     :::*                        LISTEN      26822/nginx
tcp        0      0 ::1:48509                   :::*                        LISTEN      32604/varnishd
```

The preceding shows Varnish running on port 80 and nginx running on port 8080.

If you do not see output for `varnishd`, make sure that Varnish is running.

See [`netstat` options](https://tldp.org/LDP/nag2/x-087-2-iface.netstat.html).

## Install the Commerce software

Install the Commerce software if you have not already done so. When prompted for a Base URL, use the Varnish host and port 80 (for Varnish) because Varnish receives all incoming HTTP requests.

Possible error installing Commerce:

```text
Error 503 Service Unavailable
Service Unavailable
XID: 303394517
Varnish cache server
```

If you experience this error, edit `default.vcl` and add a timeout to the `backend` stanza as follows:

```conf
backend default {
   .host = "127.0.0.1";
   .port = "8080";
   .first_byte_timeout = 600s;
}
```

## Verify HTTP response headers

Now you can verify that Varnish is serving pages by looking at HTML response headers returned from any page.

Before you can look at headers, you must set Commerce for developer mode. There are several ways to do it, the simplest of which is to modify `.htaccess` in the Commerce application root. You can also use the [`magento deploy:mode:set`](../cli/set-mode.md) command.

### Set Commerce for developer mode

To set Commerce for developer mode, use the [`magento deploy:mode:set`](../cli/set-mode.md#change-to-developer-mode) command.

### Look at the Varnish log

Make sure that Varnish is running then enter the following command on the Varnish server:

```shell
varnishlog
```

In a web browser, go to any Commerce page.

A long list of response headers display in your command prompt window. Look for headers like the following:

```text
-   BereqHeader    X-Varnish: 3
-   VCL_call       BACKEND_FETCH
-   VCL_return     fetch
-   BackendOpen    17 default(10.249.151.10,,8080) 10.249.151.10 60914
-   Backend        17 default(10.249.151.10,,8080)
-   Timestamp      Bereq: 1440449534.261791 0.000618 0.000618
-   ReqHeader      Host: 10.249.151.10
-   ReqHeader      Connection: keep-alive
-   ReqHeader      Content-Length: 86
-   ReqHeader      Cache-Control: max-age=0
-   ReqHeader      Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8
-   ReqHeader      Origin: http://10.249.151.10
```

If headers like these do _not_ display, stop Varnish, check your `default.vcl`, and try again.

### Look at HTML response headers

There are several ways to look at response headers, including using a browser plug-in or a browser inspector.

The following example uses `curl`. You can enter this command from any machine that can access the Commerce server using HTTP.

```shell
curl -I -v --location-trusted '<your Commerce base URL>'
```

For example,

```shell
curl -I -v --location-trusted 'http://192.0.2.55/magento2'
```

Look for headers like the following:

```text
Content-Type: text/html; charset=iso-8859-1
X-Varnish: 15
Age: 0
Via: 1.1 varnish-v6
X-Magento-Cache-Debug: HIT
```
