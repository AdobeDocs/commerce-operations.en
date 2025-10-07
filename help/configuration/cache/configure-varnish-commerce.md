---
title: Configure Varnish for Commerce
description: Learn how to configure Varnish specifically for Adobe Commerce applications. Discover configuration file updates and management techniques.
feature: Configuration, Cache, SCD
exl-id: 6c007ff9-493f-4df2-b7b4-438b41fd7e37
---
# Configure the Commerce application to use Varnish

To configure Commerce to use Varnish:

1. Log in to the Admin as an administrator.
1. Click **[!UICONTROL Stores]** > Settings > **Configuration** > **Advanced** > **System** > **Full Page Cache**.
1. From the **[!UICONTROL Caching Application]** list, click **Varnish Caching**.
1. Enter a value in the **[!UICONTROL TTL for public content]** field.
1. Expand **[!UICONTROL Varnish Configuration]** and enter the following information:

   | Field | Description |
   | ----- | ----------- |
   | Access list | Enter the fully qualified hostname, IP address, or [Classless Inter-domain Routing (CIDR)](https://www.digitalocean.com/community/tutorials/understanding-ip-addresses-subnets-and-cidr-notation-for-networking) notation IP address range for which to invalidate content. See [Varnish cache Purging](https://varnish-cache.org/docs/3.0/tutorial/purging.html). |
   | Backend host | Enter the fully qualified hostname or IP address and listen port of the Varnish _backend_ or _origin server_; that is, the server providing the content Varnish accelerates. Typically, this is your web server. See [Varnish cache Backend servers](https://www.varnish-cache.org/docs/trunk/users-guide/vcl-backends.html). |
   | Backend port | Origin server's listen port. |
   | Grace period | Determines how long Varnish serves stale content if the backend is not responsive. The default value is 300 seconds. |
   | Handles params size | Specifies the maximum number of [layout handles](https://developer.adobe.com/commerce/frontend-core/guide/layouts/#layout-handles) to process on the [`{BASE-URL}/page_cache/block/esi`](use-varnish-esi.md) HTTP endpoint for full-page caching. Restricting the size can improve security and performance. The default is 100. |

1. Click **Save Config**.

You can also activate Varnish from the command line--instead of logging in to the Admin—using the C command-line interface tool:

```bash
bin/magento config:set --scope=default --scope-code=0 system/full_page_cache/caching_application 2
```

## Export a Varnish configuration file

To export a Varnish configuration file from the Admin:

1. Click one of the export buttons to create a `varnish.vcl` you can use with Varnish.

   For example, if you have Varnish 4, click **Export VCL for Varnish 4**

   The following figure shows an example:

   ![Configure Commerce to use Varnish in the Admin](../../assets/configuration/varnish-admin-22.png)

1. Back up your existing `default.vcl`. Then rename the `varnish.vcl` file you just exported to `default.vcl`. Then copy the file to the `/etc/varnish/` directory.

   ```bash
   cp /etc/varnish/default.vcl /etc/varnish/default.vcl.bak2
   ```

   ```bash
   mv <download_directory>/varnish.vcl default.vcl
   ```

   ```bash
   cp <download_directory>/default.vcl /etc/varnish/default.vcl
   ```

1. Adobe recommend you open `default.vcl` and change the value of `acl purge` to the IP address of the Varnish host. (You can specify multiple hosts on separate lines or you can use CIDR notation as well.)

   For example,

   ```conf
    acl purge {
       "localhost";
    }
   ```

1. If you want to customize the Vagrant health checks or grace mode or saint mode configuration, see [Advanced Varnish configuration](config-varnish-advanced.md).

1. Restart Varnish and your web server:

   ```bash
   service varnish restart
   ```

   ```bash
   service httpd restart
   ```

## Cache Static Files

Static files should not be cached by default, but if you want to cache them, you can edit the section `Static files caching` in the VCL to have the following content:

```conf
# Static files should not be cached by default
  return (pass);

# But if you use a few locales and do not use CDN you can enable caching static files by commenting previous line (#return (pass);) and uncommenting next 3 lines
  #unset req.http.Https;
  #unset req.http./* {{ ssl_offloaded_header }} */;
  #unset req.http.Cookie;
```

You must make these changes before you configure Commerce to use Varnish.
