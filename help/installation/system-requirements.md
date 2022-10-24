---
title: System requirements
description: Use this reference to identify required software dependencies that have been tested with Adobe Commerce and Magento Open Source releases.
---

# System requirements

This table shows versions of third-party software dependencies that Adobe has tested with specific Adobe Commerce and Magento Open Source releases. Adobe only supports the combination of system requirements described in the following table.

For example, 2.4.3 is fully tested with MariaDB 10.4. Adobe recommends that you upgrade to MariaDB 10.4 before upgrading to 2.4.3.

{{$include /help/_includes/templated/system-requirements-table.md}}

## Miscellaneous

This section describes support and compatibility for all other types of required and optional software.

>[!NOTE]
>
>The following requirements apply to the latest 2.4.x patch release of Adobe Commerce and Magento Open Source.

### Mail server

Mail Transfer Agent (MTA) or an SMTP server

### Operating systems (Linux x86-64)

Linux distributions, such as RedHat Enterprise Linux (RHEL), CentOS, Ubuntu, Debian, and similar. Microsoft Windows and macOS are not supported.

### PHP extensions

>[!NOTE]
>
>The [PHP installation instructions](prerequisites/php-settings.md) include a step for installing these extensions.

{{$include /help/_includes/templated/php-extensions.md}}

Refer to [official PHP documentation](https://php.net/manual/en/extensions.php) for installation details.

### PHP OPcache

We strongly recommend you verify that [PHP OPcache](https://php.net/manual/en/intro.opcache.php) is enabled for performance reasons. The OPcache is enabled in many PHP distributions. To verify if it is installed, see our [PHP documentation](prerequisites/php-settings.md).

If you must install it separately, see the [PHP OPcache documentation](https://php.net/manual/en/opcache.setup.php).

### PHP settings

We recommend particular PHP configuration settings, such as `memory_limit`, that can avoid common problems when using Adobe Commerce and Magento Open Source.

For more information, see [Required PHP settings](prerequisites/php-settings.md).

### PHPUnit

PHPUnit (as a command-line tool) 9.0.0

### RAM

Upgrading the applications and extensions you obtain from the Commerce Marketplace and other sources can require up to 2 GB of RAM. If you are using a system with less than 2 GB of RAM, we recommend you create a [swap file](https://support.magento.com/hc/en-us/articles/360032980432); otherwise, your upgrade might fail.

### System dependencies

Adobe Commerce and Magento Open Source require the following system tools for some operations:

-  [bash](https://www.gnu.org/software/bash/)
-  [gzip](https://www.gzip.org/)
-  [lsof](https://linux.die.net/man/8/lsof)
-  [mysql](https://www.mysql.com/)
-  [mysqldump](https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html)
-  [nice](https://linux.die.net/man/1/nice)
-  [php](https://www.php.net/)
-  [sed](https://www.gnu.org/software/sed/manual/sed.html)
-  [tar](https://linux.die.net/man/1/tar)

### SSL

-  A valid [security certificate](https://glossary.magento.com/security-certificate) is required for HTTPS.
-  Self-signed SSL certificates are not supported.
-  Transport Layer Security (TLS) requirement - PayPal and `repo.magento.com` both require TLS 1.2 or later.

### Supported browsers

Storefront and Admin:

-  Microsoft Edge (latest and previous major version)
-  Firefox (latest and previous major version; any operating system)
-  Chrome (latest and previous major version; any operating system)
-  Safari (latest and previous major version; macOS only)
-  Safari Mobile for iPad 2, iPad Mini, iPad with Retina Display (iOS 12 or later), for desktop storefront
-  Safari Mobile for iPhone 6 or later; iOS 12 or later, for mobile storefront
-  Chrome for mobile (latest and previous major version [Android 4 or later] for mobile storefront)

### Xdebug

[php_xdebug 2.5.x](https://xdebug.org/download) or later (development environments only; can have an adverse effect on performance)

>[!NOTE]
>
>There is a known issue with `xdebug` that can affect Adobe Commerce or Magento Open Source installations or access to the storefront or Admin after installation. For details, see [Known issue with xdebug](https://support.magento.com/hc/en-us/articles/360034242212).
