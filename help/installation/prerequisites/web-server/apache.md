---
title: Apache
description: Follow these steps to install and configure the Apache web server for on-premises installations of Adobe Commerce.
exl-id: a9a394c9-389f-42ef-9029-dd22c979cfb8
---
# Apache

Adobe Commerce supports Apache 2.4.x.

## Apache required directives

1. Set `AllowEncodedSlashes` in the server config (globally) or in the virtual host configurations to avoid decoding the encoded slashes that may cause issues for URLs. For instance, when retrieving products with a slash in the SKU via the API, you do not want that converted. The sample block is not complete and other directives are required.

   ```conf
   <VirtualHost *:443>
     # Allow encoded slashes
     AllowEncodedSlashes NoDecode
   </VirtualHost>
   ```

## Apache rewrites and htaccess

This topic discusses how to enable Apache 2.4 rewrites and specify a setting for the [distributed configuration file, `.htaccess`](https://httpd.apache.org/docs/current/howto/htaccess.html).

Adobe Commerce uses server rewrites and `.htaccess` to provide directory-level instructions for Apache. The following instructions are included in all other sections in this topic as well.

Use this section to enable Apache 2.4 rewrites and specify a setting for the [distributed configuration file, `.htaccess`](https://httpd.apache.org/docs/current/howto/htaccess.html)

Adobe Commerce uses server rewrites and `.htaccess` to provide directory-level instructions for Apache.

>[!NOTE]
>
>Failure to enable these settings typically results in no styles displaying on your storefront or Admin.

1. Enable the Apache rewrite module:

   ```bash
   a2enmod rewrite
   ```

1. To enable the application to use the distributed `.htaccess` configuration file, see the guidelines in the [Apache 2.4 documentation](https://httpd.apache.org/docs/current/mod/mod_rewrite.html).

   >[!TIP]
   >
   >In Apache 2.4, the server's default site configuration file is `/etc/apache2/sites-available/000-default.conf`.

   For example, you can add the following to the end of `000-default.conf`:

   ```
   <Directory "/var/www/html">
       AllowOverride All
   </Directory>
   ```

   >[!NOTE]
   >
   >Sometimes, additional parameters might be required. For more information, see the [Apache 2.4 documentation](https://httpd.apache.org/docs/2.4/mod/mod_access_compat.html#order).

1. If you changed Apache settings, restart Apache:

   ```bash
   service apache2 restart
   ```

   >[!NOTE]
   >
   >-  If you upgraded from an earlier Apache version, first look for `<Directory "/var/www/html">` or `<Directory "/var/www">` in `000-default.conf`.
   >-  You must change the value of `AllowOverride` in the directive for the directory to which you expect to install the Adobe Commerce software. For example, to install in the web server docroot, edit the directive in `<Directory /var/www>`.

>[!NOTE]
>
>Failure to enable these settings typically results in styles not displaying on the storefront or Admin.

## Apache required modules

Adobe Commerce requires the following Apache modules to be installed:

-  [mod_deflate.c](https://httpd.apache.org/docs/2.4/mod/mod_deflate.html)
-  [mod_expires.c](https://httpd.apache.org/docs/2.4/mod/mod_expires.html)
-  [mod_headers.c](https://httpd.apache.org/docs/2.4/mod/mod_headers.html)
-  [mod_rewrite.c](https://httpd.apache.org/docs/2.4/mod/mod_rewrite.html)
-  [mod_security.c](https://modsecurity.org)
-  [mod_ssl.c](https://httpd.apache.org/docs/2.4/mod/mod_ssl.html)

## Verify the Apache version

To verify the Apache version that you're currently running, enter:

```bash
apache2 -v
```

The result displays similar to the following:

```
Server version: Apache/2.4.04 (Ubuntu)
Server built: Jul 22 2020 14:35:32
```

-  If Apache is *not* installed, see:
    -  [Installing or upgrading Apache on Ubuntu](#installing-apache-on-ubuntu)
    -  [Installing Apache on CentOS](#installing-apache-on-centos)

## Installing or upgrading Apache on Ubuntu

The following sections discuss how to install or upgrade Apache:

-  Install Apache
-  Upgrade to Apache 2.4 on Ubuntu to use PHP 7.4.

### Installing Apache on Ubuntu

To install the default version of Apache:

1. Install Apache

   ```bash
   apt-get -y install apache2
   ```

1. Verify the installation.

   ```bash
   apache2 -v
   ```

   The result displays similar to the following:

   ```
   Server version: Apache/2.4.18 (Ubuntu)
   Server built: 2020-04-15T18:00:57
   ```

1. Enable [rewrites and `.htaccess`](#apache-rewrites-and-htaccess).

### Upgrading Apache on Ubuntu

To upgrade to Apache 2.4:

1. Add the `ppa:ondrej` repository, which has Apache 2.4:

   ```bash
   apt-get -y update
   ```

   ```bash
   apt-add-repository ppa:ondrej/apache2
   ```

   ```bash
   apt-get -y update
   ```

1. Install Apache 2.4:

   ```bash
   apt-get install -y apache2
   ```

   >[!NOTE]
   >
   >If the 'apt-get install' command fails because of unmet dependencies, consult a resource like [https://askubuntu.com/](https://askubuntu.com/questions/140246/how-do-i-resolve-unmet-dependencies-after-adding-a-ppa).

1. Verify the installation.

   ```bash
   apache2 -v
   ```

   Messages similar to the following should display:

   ```
   Server version: Apache/2.4.10 (Ubuntu)
   Server built: Jul 22 2020 22:46:25
   ```

1. Enable [rewrites and `.htaccess`](#apache-rewrites-and-htaccess).

## Installing Apache on CentOS

Adobe Commerce requires Apache server rewrites. You must also specify the type of directives that can be used in `.htaccess`, which the application uses to specify rewrite rules.

Installing and configuring Apache is basically a three-step process: install the software, enable rewrites, and specify `.htaccess` directives.

### Installing Apache

1. Install Apache 2.4 if you have not already done so.

   ```bash
   yum -y install httpd
   ```

1. Verify the installation:

   ```bash
   httpd -v
   ```

   Messages similar to the following display to confirm that the installation was successful:

   ```
   Server version: Apache/2.4.40 (Unix)
   Server built: Oct 16 2020 14:48:21
   ```

1. Continue with the next section.

   >[!NOTE]
   >
   >Even if Apache 2.4 is provided by default with CentOS, see the following section to configure it.

### Enable rewrites and .htaccess for CentOS

1. Open `/etc/httpd/conf/httpd.conf` file for editing:

   ```bash
   vim /etc/httpd/conf/httpd.conf`
   ```

1. Locate the block that starts with:

   ```conf
   <Directory "/var/www/html">
   ```

1. Change the value of `AllowOverride` to `All`.

   For example,

   ```conf
   <Directory "/var/www/">
     Options Indexes FollowSymLinks MultiViews
     AllowOverride All
     Order allow,deny
     Allow from all
   </Directory>
   ```

   >[!NOTE]
   >
   >The preceding values for `Order` might not work in all cases. For more information, see the Apache documentation ([2.4](https://httpd.apache.org/docs/2.4/mod/mod_authz_host.html#order)).

1. Save the file and exit the text editor.

1. To apply Apache settings, restart Apache.

   ```bash
   service apache2 restart
   ```

>[!NOTE]
>
>Failure to enable these settings typically results in no styles displaying on your storefront or Admin.

### Enable rewrites and .htaccess for Ubuntu

1. Open `/etc/apache2/sites-available/default` file for editing:

   ```bash
   vim /etc/apache2/sites-available/default
   ```

1. Locate the block that starts with:

   `<Directory "/var/www/html">`

1. Change the value of `AllowOverride` to `All`.

   For example:

   ```conf
   <Directory "/var/www/html">
     Options Indexes FollowSymLinks MultiViews
     AllowOverride All
     Order allow,deny
     Allow from all
   </Directory>
   ```

1. Save the file and exit the text editor.

1. Configure Apache to use the `mod_rewrite` module:

   ```bash
   cd /etc/apache2/mods-enabled
   ```

   ```bash
   ln -s ../mods-available/rewrite.load
   ```

1. Restart Apache to apply changes:

   ```bash
   service apache2 restart
   ```

## Solving 403 (Forbidden) errors

If you encounter 403 Forbidden errors when trying to access the site, you can update your Apache configuration or your virtual host configuration to enable visitors to the site:

### Solving 403 Forbidden errors for Apache 2.4

To enable website visitors to access your site, use one of the [Require directives](https://httpd.apache.org/docs/2.4/howto/access.html).

For example:

```conf
<Directory "/var/www/">
  Options Indexes FollowSymLinks MultiViews
  AllowOverride All
  Order allow,deny
  Require all granted
</Directory>
```

>[!NOTE]
>
>The preceding values for `Order` might not work in all cases. For more information, see the [Apache documentation](https://httpd.apache.org/docs/2.4/mod/mod_access_compat.html#order).
