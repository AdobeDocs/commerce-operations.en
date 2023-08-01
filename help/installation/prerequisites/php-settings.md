---
title: PHP settings
description: Follow these steps to install required PHP extensions and configure required PHP settings for on-premises installations of Adobe Commerce and Magento Open Source.
feature: Install, Configuration
exl-id: 84064442-7053-42ab-a8a6-9b313e5efc78
---
# PHP settings

This topic discusses how to set required PHP options.

>[!NOTE]
>
>See [system requirements](../system-requirements.md) for supported versions of PHP.

## Verify PHP is installed

Most flavors of Linux have PHP installed by default. This topic assumes that you have already installed PHP. To verify if PHP is installed already, in the command line, type:

```bash
php -v
```

If PHP is installed, a message similar to the following displays:

```terminal
PHP 7.4.0 (cli) (built: Aug 14 2019 16:42:46) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies with Zend OPcache v7.1.6, Copyright (c) 1999-2018, by Zend Technologies
```

Adobe Commerce and Magento Open Source 2.4 is compatible with PHP 7.3, but we test with, and recommend using, PHP 7.4.

If PHP is not installed, or a version upgrade is needed, install it following instructions for your particular Linux flavor.
On CentOS, [additional steps may be required](https://wiki.centos.org/HowTos/php7).

## Verify installed extensions

Adobe Commerce and Magento Open Source requires a set of extensions to be installed.

{{$include /help/_includes/templated/php-extensions.md}}

To verify installed extensions:

1. List installed modules.

   ```bash
   php -m
   ```

1. Verify that all required extensions are installed.
1. Add any missing modules using the same workflow used for installing PHP. For example, if you use `yum` to install PHP, the PHP 7.4 modules can be added with:

   ```bash
    yum -y install php74u-pdo php74u-mysqlnd php74u-opcache php74u-xml php74u-gd php74u-devel php74u-mysql php74u-intl php74u-mbstring php74u-bcmath php74u-json php74u-iconv php74u-soap
   ```

## Check PHP settings

>[!WARNING]
>
>If you are using PHP 7.4.20, set `pcre.jit=0` in your `php.ini` file. This gets around a PHP [bug](https://bugs.php.net/bug.php?id=81101) that prevents CSS from loading.

-  Set the system time zone for PHP; otherwise, errors like the following display during the installation and time-related operations like cron might not work:

```terminal
PHP Warning:  date(): It is not safe to rely on the system's timezone settings. [more messages follow]
```

-  Set the PHP memory limit.

   Our detailed recommendations are:

    -  Compiling code or deploying static assets, `1G`
    -  Debugging, `2G`
    -  Testing, `~3-4G`

-  Increase the values for the PHP `realpath_cache_size` and `realpath_cache_ttl` to recommended settings:

   ```conf
   realpath_cache_size=10M
   realpath_cache_ttl=7200
   ```

   These settings allow PHP processes to cache paths to files instead of looking them up each time a page loads. See [Performance Tuning](https://www.php.net/manual/en/ini.core.php) in the PHP documentation.

-  Enable [`opcache.save_comments`](https://www.php.net/manual/en/opcache.configuration.php#ini.opcache.save-comments), which is required for Adobe Commerce and Magento Open Source 2.1 and later.

   We recommend you enable the [PHP OPcache](https://www.php.net/manual/en/book.opcache.php) for performance reasons. The OPcache is enabled in many PHP distributions.

   Adobe Commerce and Magento Open Source 2.1 and later use PHP code comments for code generation.

>[!NOTE]
>
>To avoid issues during installation and upgrade, we strongly recommend you apply the same PHP settings to both the PHP command-line configuration and the PHP web server plug-in configuration. For more information, see the next section.

## Find PHP configuration files

This section discusses how you find the configuration files necessary to update required settings.

### Find `php.ini` configuration file

To find the web server configuration, run a [`phpinfo.php` file](optional-software.md#create-phpinfophp) in your web browser and look for the `Loaded Configuration File` as follows:

![PHP info page](../../assets/installation/config_phpini-webserver.png)

To locate the PHP command-line configuration, enter

```bash
php --ini | grep "Loaded Configuration File"
```

>[!NOTE]
>
>If you have only one `php.ini` file, make the changes in that file. If you have two `php.ini` files, make the changes in *all* files. Failure to do so might cause unpredictable performance.

### Find OPcache configuration settings

PHP OPcache settings are typically located either in `php.ini` or `opcache.ini`. The location might depend on your operating system and PHP version. The OPcache configuration file might have an `opcache` section or settings like `opcache.enable`.

Use the following guidelines to find it:

-  Apache web server:

   For Ubuntu with Apache, OPcache settings are typically located in the `php.ini` file.

   For CentOS with Apache or nginx, OPcache settings are typically located in `/etc/php.d/opcache.ini`

   If not, use the following command to locate it:

   ```bash
   sudo find / -name 'opcache.ini'
   ```

-  nginx web server with PHP-FPM: `/etc/php/7.2/fpm/php.ini`

If you have more than one `opcache.ini`, modify all of them.

## How to set PHP options

To set PHP options:

1. Open a `php.ini` in a text editor.
1. Locate your server's time zone in the available [time zone settings](https://www.php.net/manual/en/timezones.php)
1. Locate the following setting and uncomment it if necessary:

   ```conf
   date.timezone =
   ```

1. Add the time zone setting that you found in step 2.

1. Change the value of `memory_limit` to one of the values recommended at the beginning of this section.

   For example,

   ```conf
   memory_limit=2G
   ```

1. Add or update the `realpath_cache` configuration to match the following values:

   ```conf
   ;
   ; Increase realpath cache size
   ;
   realpath_cache_size = 10M

   ;
   ; Increase realpath cache ttl
   ;
   realpath_cache_ttl = 7200
   ```

1. Save your changes and exit the text editor.

1. Open the other `php.ini` (if they are different) and make the same changes in it.

## Set OPcache options

To set `opcache.ini` options:

1. Open your OPcache configuration file in a text editor:

   -  `opcache.ini` (CentOS)
   -  `php.ini` (Ubuntu)
   -  `/etc/php/7.2/fpm/php.ini` (nginx web server (CentOS or Ubuntu))

1. Locate `opcache.save_comments` and uncomment it if necessary.
1. Make sure that its value is set to `1`.
1. Save your changes and exit the text editor.
1. Restart your web server:

   -  Apache, Ubuntu: `service apache2 restart`
   -  Apache, CentOS: `service httpd restart`
   -  nginx, Ubuntu and CentOS: `service nginx restart`

## Troubleshooting

See the following Adobe Commerce Support articles for help with troubleshooting PHP problems:

-  [PHP version error or 404 error when accessing Adobe Commerce in browser](https://support.magento.com/hc/en-us/articles/360033117152-PHP-version-error-or-404-error-when-accessing-Magento-in-browser)
-  [PHP settings errors](https://support.magento.com/hc/en-us/articles/360034599631-PHP-settings-errors)
-  [PHP mcrypt extension not installed properly](https://support.magento.com/hc/en-us/articles/360034280132-PHP-mcrypt-extension-not-installed-properly-)
-  [PHP version readiness check issues](https://support.magento.com/hc/en-us/articles/360033546411)
-  [Common PHP Fatal Errors and solutions](https://support.magento.com/hc/en-us/articles/360030568432)
