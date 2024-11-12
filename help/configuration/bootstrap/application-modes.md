---
title: Application modes
description: The Commerce application can operate in different modes depending on your needs. View a detailed list of the application modes available.
exl-id: a2a71f43-682f-4fa4-940a-1f6a4d441c41
---
# Application modes

You can run the Commerce application in any of the following _modes_:

| Mode name                | Description         | Cloud support |
| ------------------------ | ------------------- | ------------- |
| [default](#default-mode) | Deploy and run the Commerce application on a single server without changing settings. _Not_ optimized for production. | no |
| [developer](#developer-mode) | Ideal for development when extending or customizing the Commerce application. | no |
| [production](#production-mode) | Deploy and run the Commerce application to a production system. | Yes |
| [maintenance](#maintenance-mode) | Prevent access to a site while performing updates and configurations. | Yes |

See [Set the operation mode](../cli/set-mode.md) to learn how to manually change the Adobe Commerce operation modes.

## Cloud support

Because of the read-only filesystem, there is a strict restriction against changing the modes in remote cloud environments and it cannot be overridden by Adobe Commerce Support. Do not attempt to change modes by modifying the `app/etc/env.php` file because the `ece-tools` package overwrites the file based on multiple configuration sources. 

Adobe Commerce on cloud infrastructure automatically runs the application in _maintenance_ mode during a deployment, which takes your site offline until the deployment is complete. Otherwise, the application remains in _production_ mode. See [Deployment process](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/deploy/process.html#deploy-phase) in the _Commerce on Cloud Infrastructure guide_.

If you use Cloud Docker for Commerce as a development tool, you can deploy your cloud infrastructure project in a Docker environment in _developer_ mode, but performance is slower because of additional file synchronization operations. See [Deploy the Docker environment](https://developer.adobe.com/commerce/cloud-tools/docker/deploy/#launch-mode) in the _Cloud Docker for Commerce guide_.


## Default mode

The _default_ mode enables you to deploy the Commerce application on a single server without changing any settings. However, default mode is not optimized for production because of the adverse performance impact of static files. Creating static files and caching them has a greater performance impact than generating them using the static files creation tool.

In default mode:

- Exceptions are written to log files instead of display
- Static view files are cached
- Hides custom `X-Magento-*` HTTP request and response headers

Commerce operates in default mode if no other mode is specified.

## Developer mode

The _developer_ mode is recommended for extending and customizing the Commerce application. Static view files are not cached, but written to the `pub/static` directory on demand.

In developer mode:

- Enables [automatic code compilation](../cli/code-compiler.md) and enhanced debugging
- Uncaught exceptions display in the browser
- System logging in `var/report` is verbose
- An exception is thrown in the error handler, rather than being logged
- An exception is thrown when an event subscriber cannot be invoked
- Shows custom `X-Magento-*` HTTP request and response headers

>[!NOTE]
>
>This mode is not supported in the Adobe Commerce Cloud environment and Adobe Commerce Support is unable to facilitate changing the application mode.

## Production mode

The _production_ mode is best for deploying the Commerce application on a production system. After optimizing the server environment, such as the database and web server, you should run the [static view files deployment tool](../cli/static-view-file-deployment.md) to write static view files to the `pub/static` directory. This improves performance by providing all necessary static files at deployment instead of forcing the Commerce application to dynamically locate and copy (materialize) static files on demand during run time.

Some fields, such as the Advanced and Developer system configuration sections in the Admin, are not available in production mode. For example, you _cannot_ enable or disable cache types using the Admin. You can enable and disable cache types _only_ using the [command line](../cli/manage-cache.md#config-cli-subcommands-cache-en).

In production mode:

- Static view files are served from the cache only
- Errors and exceptions are logged to the file system and are never displayed to the user
- Some configuration fields in the Admin are not available

## Maintenance mode

The _maintenance_ mode limits or prevents access to a site during improvements, updates, and configuration tasks. By default, the site redirects visitors to a default `Service Temporarily Unavailable` page.

You can create a [custom maintenance page](../../upgrade/troubleshooting/maintenance-mode-options.md), manually enable and disable maintenance mode, and configure maintenance mode to allow visitors from authorized IP addresses to view the store normally. See [enable and disable maintenance mode](../../installation/tutorials/maintenance-mode.md) in the _Installation Guide_.

If you are using Commerce on cloud infrastructure, the Commerce application runs in maintenance mode during the deploy phase. When the deployment completes successfully, the Commerce application returns to running in production mode. See [Deployment hooks](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/deploy/best-practices.html#phase-5%3A-deployment-hooks) in the _Commerce on Cloud Infrastructure guide_.

In maintenance mode:

- Site visitors are redirected to a default `Service Temporarily Unavailable` page
- The `var/` directory contains the `.maintenance.flag` file
- You can limit visitor access based on IP addresses
