---
title: Application modes
description: The Commerce application can operate in different modes depending on your needs. View a detailed list of the application modes available.
---

# Application modes

You can run the Commerce application in any of the following _modes_:

| Module name | Description |
| ----------- | ----------- |
| default     | Enables you to deploy the Magento application on a single server without changing any settings. However, default mode is not optimized for production.<br>To deploy the Magento application on more than one server or to optimize it for production, change to one of the other modes.<ul><li>Static view file caching is enabled</li><li>Exceptions are not displayed to the user; instead, exceptions are written to log files.</li><li>Hides custom `X-Magento-*` HTTP request and response headers</li></ul> |
| developer   | Intended for development only, this mode:<ul><li>Disables static view file caching</li><li>Provides verbose logging</li><li>Enables [automatic code compilation](../cli/code-compiler.md)</li><li>Enables enhanced debugging</li><li>Shows custom `X-Magento-*` HTTP request and response headers</li><li>Results in the slowest performance</li><li>Shows errors on the frontend</li></ul> |
|production  | Intended for deployment on a production system, this mode:<ul><li>Does not show exceptions to the user (exceptions are written to logs only).</li><li>Serves static view files from cache only.</li><li>Prevents automatic code file compilation. New or updated files are not written to the file system.</li><li>**Does not allow you to enable or disable cache types in Admin.** [More information about enabling and disabling the cache](../cli/manage-cache.md#config-cli-subcommands-cache-en).</li><li>Some fields, such as the Advanced and Developer system configuration sections in the Admin, are not available in production mode.</li></ul> |
| maintenance | Intended to prevent access to a site while it is being updated or reconfigured, this mode:<ul><li>Redirects site visitors to a default `Service Temporarily Unavailable` page.</li><li>When the site is in maintenance mode, the `var/` directory contains the `.maintenance.flag` file.</li><li>You can configure maintenance mode to allow visitor access from a specified list of IP addresses.</li></ul> |

>[!INFO]
>
>[Adobe Commerce on cloud infrastructure](https://devdocs.magento.com/cloud/bk-cloud.html) supports only the production and maintenance modes.

## Default mode

As its name implies, default mode is how Magento operates if no other mode is specified. Default mode enables you to deploy the Magento application on a single server without changing any settings. However, default mode is not as optimized for production as is production mode.

To deploy the Magento application on more than one server or to optimize it for production, change to one of the other modes.

In default mode:

- Errors are logged to the file reports at server, and never shown to a user
- Static view files are cached
- Default mode is not optimized for a production environment, primarily because of the adverse performance impact of [static files](https://glossary.magento.com/static-files) being dynamically generated rather than materialized. In other words, creating static files and caching them has a greater performance impact than generating them using the static files creation tool.

See [Set the operation mode](../cli/set-mode.md).

## Developer mode

Run the Commerce application in developer mode when you are extending or customizing it.

In developer mode:

- Static view files are not cached; they are written to the Magento `pub/static` directory every time they are called
- Uncaught exceptions display in the browser
- System logging in `var/report` is verbose
- An [exception](https://glossary.magento.com/exception) is thrown in the error handler, rather than being logged
- An exception is thrown when an [event](https://glossary.magento.com/event) subscriber cannot be invoked

See [Set the operation mode](../cli/set-mode.md).

## Production mode

Run Magento in production mode when it is deployed to a production server. After optimizing the server environment, such as the database and web server, you should run the [static view files deployment tool](../cli/static-view-file-deployment.md) to write static view files to the Magento `pub/static` directory.

This improves performance by providing all necessary static files at deployment instead of forcing Magento to dynamically locate and copy (materialize) static files on demand during run time.

In production mode:

- Static view files are not materialized, and URLs for them are composed on the fly. Static view files are served from the [cache](https://glossary.magento.com/cache) only.
- Errors are logged to the file system and are never displayed to the user.
- You can enable and disable cache types _only_ using the [command line](../cli/manage-cache.md#config-cli-subcommands-cache-en).
- You _cannot_ enable or disable cache types using the Admin.

## Maintenance mode

Run the Commerce application in maintenance mode to take your site offline while you complete maintenance, upgrade, or configuration tasks.  In maintenance mode, the site redirects visitors to a default `Service Temporarily Unavailable` page.

You can create a [custom maintenance page](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/troubleshooting/maintenance-mode-options.html), manually enable and disable maintenance mode, and configure maintenance mode to allow visitors from authorized IP addresses to view the store normally. See [enable and disable maintenance mode](https://devdocs.magento.com/guides/v2.4/install-gde/install/cli/install-cli-subcommands-maint.html).

If you are using Commerce on cloud infrastructure, the Commerce application runs in maintenance mode during the deploy phase. When the deployment completes successfully, the Commerce application returns to running in production mode. See [Deployment hooks](https://devdocs.magento.com/cloud/reference/discover-deploy.html#cloud-deploy-over-phases-hook) in the _Commerce Cloud guide_.
