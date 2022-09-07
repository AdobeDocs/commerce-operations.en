---
title: System requirements
---

# System requirements

This table shows versions of third-party software dependencies that Adobe has tested with specific Adobe Commerce and Magento Open Source releases. Adobe only supports the combination of system requirements described in the following table.

For example, 2.4.3 is fully tested with MariaDB 10.4. Adobe recommends that you upgrade to MariaDB 10.4 before upgrading to 2.4.3.

{% include install/system-requirements-table.html %}

## Miscellaneous

This section describes support and compatibility for all other types of required and optional software.

>[!NOTE]
>
>All of the following requirements apply to the latest patch release of Adobe Commerce and Magento Open Source 2.4.


### Mail server

Mail Transfer Agent (MTA) or an SMTP server

### Operating systems (Linux x86-64)

Linux distributions, such as RedHat Enterprise Linux (RHEL), CentOS, Ubuntu, Debian, and similar. Microsoft Windows and macOS are not supported.

### PHP extensions

>[!NOTE]
>
>The [PHP installation instructions][] include a step for installing these extensions.


{% include install/php-extensions-template.md %}

Refer to [official PHP documentation][] for installation details.

### PHP OPcache

We strongly recommend you verify that [PHP OPcache][] is enabled for performance reasons. The OPcache is enabled in many PHP distributions. To verify if it is installed, see our [PHP documentation][].

If you must install it separately, see the [PHP OPcache documentation][].

### PHP settings

We recommend particular PHP configuration settings, such as `memory_limit`, that can avoid common problems when using Magento.

For more information, see [Required PHP settings][].

### PHPUnit

PHPUnit (as a command-line tool) 9.0.0

### RAM

Upgrading the applications and extensions you obtain from the Commerce Marketplace and other sources can require up to 2GB of RAM. If you are using a system with less than 2GB of RAM, we recommend you create a [swap file](https://support.magento.com/hc/en-us/articles/360032980432); otherwise, your upgrade might fail.

### System dependencies

Adobe Commerce and Magento Open Source require the following system tools for some operations:

*  [bash][]
*  [gzip][]
*  [lsof][]
*  [mysql][]
*  [mysqldump][]
*  [nice][]
*  [php][]
*  [sed][]
*  [tar][]

### SSL

*  A valid [security certificate][] is required for HTTPS.
*  Self-signed SSL certificates are not supported.
*  Transport Layer Security (TLS) requirement - PayPal and `repo.magento.com` both require TLS 1.2 or later.

### Supported browsers

{% include browsers/supported-browsers-24.md %}

### Xdebug

[php_xdebug 2.5.x][] or later (development environments only; can have an adverse effect on performance)

>[!NOTE]
>
>There is a known issue with `xdebug` that can affect Adobe Commerce or Magento Open Source installations or access to the storefront or Admin after installation. For details, see [Known issue with xdebug][].


<!-- Link Definitions -->
[Known issue with xdebug]: https://support.magento.com/hc/en-us/articles/360034242212
[php_xdebug 2.5.x]: https://xdebug.org/download
[bash]: https://www.gnu.org/software/bash/
[gzip]: https://www.gzip.org/
[lsof]: https://linux.die.net/man/8/lsof
[mysql]: https://www.mysql.com/
[mysqldump]: https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html
[nice]: https://linux.die.net/man/1/nice
[php]: https://www.php.net/
[sed]: https://www.gnu.org/software/sed/manual/sed.html
[tar]: https://linux.die.net/man/1/tar
[PHP installation instructions]: prereq/php-settings.html
[official PHP documentation]: https://php.net/manual/en/extensions.php
[PHP OPcache]: https://php.net/manual/en/intro.opcache.php
[PHP documentation]: prereq/php-settings.html
[PHP OPcache documentation]: https://php.net/manual/en/opcache.setup.php
[Required PHP settings]: prerequisites/php-settings.md
[security certificate]: https://glossary.magento.com/security-certificate
