---
title: Optional software
description: Learn more about optional software that you can install to support on-premises installations of Adobe Commerce and Magento Open Source.
---

# Optional software

We strongly recommend you install NTP to ensure that cron-related tasks perform properly. (Server dates could be in the past or future, for example.)

The other optional utilities discussed in this topic might assist you with your installation; however, they are not required to install or use Adobe Commerce or Magento Open Source.

## Installing and Configuring Network Time Protocol (NTP)

[NTP](https://www.ntp.org/) enables servers to synchronize their system clocks using [globally available pool servers](https://www.ntppool.org/en/). We recommend you use NTP servers you trust, whether they are dedicated hardware solutions your internal network or external, public servers.

If you are deploying Adobe Commerce or Magento Open Source on multiple hosts, NTP is a simple way to guarantee their clocks are all synchronized, no matter what time zone the servers are in. Also, cron-related tasks (such as indexing and transactional e-mails) depend on the server clock being accurate.

### Install and configure NTP on Ubuntu

Enter the following command to install NTP:

```bash
apt-get install ntp
```

Continue with [Use NTP pool servers](#use-ntp-pool-servers).

### Install and configure NTP on CentOS

To install and configure NTP:

1. Enter the following command to find the appropriate NTP software:

   ```bash
   yum search ntp
   ```

1. Select a package to install. For example, `ntp.x86_64`.

1. Install the package.

   ```bash
   yum -y install ntp.x86_64
   ```

1. Enter the following command so that NTP starts when the server starts.

   ```bash
   chkconfig ntpd on
   ```

1. Continue with the next section.

### Use NTP pool servers

Selecting pool servers is up to you. If you use NTP pool servers, ntp.org recommends you use [pool servers](https://www.ntppool.org/en/) that are close to your servers' time zone as discussed on the [NTP pool project page](https://www.ntppool.org/en/use.html). If you have a private NTP server that is available to all hosts in your deployment, you can use that server instead.

1. Open `/etc/ntp.conf` in a text editor.

1. Look for lines similar to the following:

   ```conf
   server 0.centos.pool.ntp.org
   server 1.centos.pool.ntp.org
   server 2.centos.pool.ntp.org
   ```

1. Replace those lines or add additional lines that specify your NTP pool server or other NTP servers. It's a good idea to specify more than one.

1. An example of using three United States-based NTP servers follows:

   ```conf
   server 0.us.pool.ntp.org
   server 1.us.pool.ntp.org
   server 2.us.pool.ntp.org
   ```

1. Save your changes to `/etc/ntp.conf` and exit the text editor.

1. Restart the service.

   *  Ubuntu: `service ntp restart`

   *  CentOS: `service ntpd restart`

1. Enter `date` to check the server's date.

   If the date is incorrect, make sure the NTP client port (typically, UDP 123) is open in your firewall.

   Try the `ntpdate _[pool server hostname]_` command. If it fails, search for the error it returns.

   If all else fails, try rebooting the server.

## Create phpinfo.php

The [`phpinfo.php`](https://www.php.net/manual/en/function.phpinfo.php) file displays a large amount of information about [PHP](https://glossary.magento.com/php) and its extensions.

>[!NOTE]
>
>Use `phpinfo.php` in a development system _only_. It can be a security issue in production.


Add the following code anywhere in your web server's docroot:

```php
<?php
// Show all information, defaults to INFO_ALL
phpinfo();
```

For more information, see the [phpinfo manual page](https://www.php.net/manual/en/function.phpinfo.php).

To view the results, enter the following [URL](https://glossary.magento.com/url) in your browser's location or address field:

```http
http://<web server host or IP>/phpinfo.php
```

If a 404 (Not Found) error displays, check the following:

*  Start the web server if necessary.
*  Make sure that your firewall allows traffic on port 80.

   [Help for Ubuntu](https://help.ubuntu.com/community/UFW)

   [Help for CentOS](https://wiki.centos.org/HowTos/Network/IPTables)

## phpMyAdmin

The phpMyAdmin application is an easy to use, free database administration utility. You can use it to check and manipulate the contents of your database. You must log in to phpMyAdmin as the MySQL database administrative user.

For more information about phpMyAdmin`, see the [phpMyAdmin home page](https://www.phpmyadmin.net/).

For more detailed information about installation, see the [phpMyAdmin installation documentation](https://docs.phpmyadmin.net/en/latest/setup.html#quick-install).

>[!NOTE]
>
>Use phpMyAdmin in a development system _only_. It can be a security issue in production.


1. To use phpMyAdmin, enter the following command in your browser's address or location field:

   ```http
   http://<web server host or IP>/phpmyadmin
   ```

1. When prompted, log in using your MySQL database `root` or administrative user's username and password.
