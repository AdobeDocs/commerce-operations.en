---
title: Enable or disable maintenance mode
description: Follow these steps to customize what customers see when your Adobe Commerce deployment is down for maintenance.
exl-id: 5d9f1493-e771-47b4-b906-3771026cf07a
---
# Enable or disable maintenance mode

The following guide refers to a standard maintenance mode page. If you need to use a custom maintenance page, see [Create the custom maintenance page](../../upgrade/troubleshooting/maintenance-mode-options.md) topic.

Adobe Commerce uses [maintenance mode](../../configuration/bootstrap/application-modes.md#maintenance-mode) to disable bootstrapping. Disabling bootstrapping is helpful while you are maintaining, upgrading, or reconfiguring your site.

The application detects maintenance mode as follows:

*  If `var/.maintenance.flag` exists, maintenance mode is on, and the application will return a 503 maintenance page.
*  If `var/.maintenance.ip` exists, and the client IP corresponds to one of the IP address entries within this file, the maintenance page is ignored for the request.

## Install the application

Before you use this command to enable or disable maintenance mode, you must [install the application](../advanced.md).

## Enable or disable maintenance mode

Use the `magento maintenance` CLI command to enable or disable maintenance mode.

Command usage:

```bash
bin/magento maintenance:enable [--ip=<ip address> ... --ip=<ip address>] | [ip=none]
```

```bash
bin/magento maintenance:disable [--ip=<ip address> ... --ip=<ip address>] | [ip=none]
```

```bash
bin/magento maintenance:status
```

The `--ip=<ip address>` option is an IP address to exempt from maintenance mode (for example, developers doing the maintenance). To exempt more than one IP address in the same command, use the option multiple times.

>[!NOTE]
>
>Using `--ip=<ip address>` with `magento maintenance:disable` saves the list of IPs for later use. To clear the list of exempt IPs, use `magento maintenance:enable --ip=none` or see [Maintain the list of exempt IP addresses](#maintain-the-list-of-exempt-ip-addresses).

The `bin/magento maintenance:status` command displays the status of maintenance mode.

For example, to enable maintenance mode with no IP address exemptions:

```bash
bin/magento maintenance:enable
```

To enable maintenance mode for all clients except 192.0.2.10 and 192.0.2.11:

```bash
bin/magento maintenance:enable --ip=192.0.2.10 --ip=192.0.2.11
```

After you place the application in maintenance mode, you must stop all message queue consumer processes.
One way to find these processes is to run the `ps -ef | grep queue:consumers:start` command, and then run the `kill <process_id>` command for each consumer. In a multiple node environment, repeat this task on each node.

## Maintain the list of exempt IP addresses

To maintain the list of exempt IP addresses, you can either use the `[--ip=<ip list>]` option in the preceding commands or you can use the following:

```bash
bin/magento maintenance:allow-ips <ip address> .. <ip address> [--none]
```

The `<ip address> .. <ip address>` syntax is an optional space-delimited list of IP addresses to exempt.

The `--none` option clears the list.

## Multi-store setups

<!-- To set up multiple stores, each with a different layout and localized content, create a skin for each and put it into `pub/errors/{name}` where `{name}` is the store code. To distinguish between stores and websites with the same instance, use `pub/errors/{type}-{name}` where `{type}` is either `store` or `website` and matches the `MAGE_RUN_TYPE` in your server configuration. Another option is to pass the `$_GET['skin']` parameter to the intended processor. This method requires a specific configuration on your server. -->
<!-- Replace the line below with the commented text after https://github.com/magento/magento2/pull/35095 is merged. -->

If you want to set up multiple stores, each with a different layout and localized content, pass the `$_GET['skin']` parameter to the intended processor.

In the following example, we are using a `503` type error template file, which requires localized content.

The constructor of the `Error_Processor` class accepts a `skin` GET parameter to change the layout:

```php
if (isset($_GET['skin'])) {
    $this->_setSkin($_GET['skin']);
}
```

This can also be added to a rewrite rule in the `.htaccess` file that appends a `skin` parameter to the URL.

### $_GET['skin'] parameter

To use the `skin` parameter:

1. Check if the `.maintenance.flag` exists.
1. Note the host address, that refers to the `HTTP_HOST`, or any other variable such as ENV variables.
1. Check if the `skin` parameter exists.
1. Set the parameter by using the rewrite rules below.

   Here are some examples of rewrite rules:

   *  RewriteCond `%{DOCUMENT_ROOT}/var/.maintenance.flag -f`
   *  RewriteCond `%{HTTP_HOST} ^sub.example.com$`
   *  RewriteCond `%{QUERY_STRING} !(^|&)skin=sub(&|$)` [NC]
   *  RewriteRule `^ %{REQUEST_URI}?skin=sub` [L]

1. Copy the following files:

   *  `pub/errors/default/503.phtml` to `pub/errors/sub/503.phtml`
   *  `pub/errors/default/css/styles.css` to `pub/errors/sub/styles.css`

1. Edit these files to provide localized content in the `503.phtml` file and custom styling in the `styles.css` file.

   Ensure your paths point to your `errors` directory. The directory name must match the URL parameter indicated in the `RewriteRule`. In the previous example, the `sub` directory is used, which is specified as a parameter in the `RewriteRule` (`skin=sub`)

>[!NOTE]
>
>The [nginx](../../configuration/multi-sites/ms-nginx.md) setting must be added for multi-store setups.
