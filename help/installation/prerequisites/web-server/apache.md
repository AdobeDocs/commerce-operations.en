---
title: Install Apache for On-Premises Deployments
description: Learn how to install and configure Apache for on-premises Adobe Commerce deployments. Enable required modules, rewrites, and `.htaccess` settings.
feature: Install, Configuration
badgePaas: label="On-premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
exl-id: a9a394c9-389f-42ef-9029-dd22c979cfb8
---
# Install Apache for on-premises deployments {#apache}

This guide walks you through installing Apache for Adobe Commerce on-premises deployments and configuring the Apache settings that Commerce requires. It includes shared Apache requirements and operating system-specific procedures for Ubuntu and CentOS. Adobe recommends following the configuration instructions provided in this guide to preserve both the functionality and security of the Commerce application.

Adobe supports the Apache versions listed in the [system requirements](../../system-requirements.md) for your Adobe Commerce release. Supported versions vary by release. Apache also requires a supported PHP configuration. For related PHP requirements, see [PHP settings](../php-settings.md).

Start with the section that matches your environment:

- If Apache is already installed, start with [Review Apache requirements](#review-apache-requirements).
- If you need to install or upgrade Apache on Ubuntu, go to [Install or upgrade Apache on Ubuntu](#installing-or-upgrading-apache-on-ubuntu).
- If you need to install Apache on CentOS, go to [Install Apache on CentOS](#installing-apache-on-centos).

## Review Apache requirements

Complete these requirements on any Apache server that hosts Adobe Commerce.

### Configure required directives

Set `AllowEncodedSlashes` in the server config (globally) or in the virtual host configurations to avoid decoding the encoded slashes that can cause issues for URLs. For example, when retrieving products with a slash in the SKU via the API, you do not want the slash converted. The following example block is not complete and other directives are required.

   ```conf
   <VirtualHost *:443>
     # Allow encoded slashes
     AllowEncodedSlashes NoDecode
   </VirtualHost>
   ```

### Configure rewrites and .htaccess {#apache-rewrites-and-htaccess}

Use this section to enable Apache rewrites and configure the [distributed `.htaccess` file](https://httpd.apache.org/docs/current/howto/htaccess.html). Adobe Commerce uses server rewrites and `.htaccess` to provide directory-level instructions for Apache.

>[!IMPORTANT]
>
>Failure to enable these settings typically results in no styles displaying on your storefront or Admin. It can also prevent Apache from applying the Adobe Commerce security protections defined in `.htaccess`.

1. Enable the Apache rewrite module:

   ```bash
   a2enmod rewrite
   ```

1. Enable the application to use the distributed `.htaccess` configuration file.

   1. On Ubuntu, edit `/etc/apache2/sites-available/000-default.conf`. For other Apache layouts or if additional parameters are required, see the [Apache documentation](https://httpd.apache.org/docs/current/mod/mod_rewrite.html) and the [Apache access control documentation](https://httpd.apache.org/docs/2.4/mod/mod_access_compat.html#order).

   1. Add or update the `AllowOverride` directive for the directory where you plan to install Adobe Commerce.

     For example, if you install Adobe Commerce in the default `docroot`, add the following block to `000-default.conf`:

    ```conf
    <Directory "/var/www/html">
      AllowOverride All
    </Directory>
    ```

    >[!NOTE]
    >
    >If you upgraded from an earlier Apache version, first look for an existing `<Directory "/var/www/html">` or `<Directory "/var/www">` block in `000-default.conf`. If you install Adobe Commerce in a different `docroot`, update the matching `<Directory>` block for that path.

1. Restart Apache to apply your changes:

   ```bash
   service apache2 restart
   ```

### Install required modules

Adobe Commerce requires the following Apache modules to be installed:

- [mod_deflate.c](https://httpd.apache.org/docs/2.4/mod/mod_deflate.html)
- [mod_expires.c](https://httpd.apache.org/docs/2.4/mod/mod_expires.html)
- [mod_headers.c](https://httpd.apache.org/docs/2.4/mod/mod_headers.html)
- [mod_rewrite.c](https://httpd.apache.org/docs/2.4/mod/mod_rewrite.html)
- [mod_security.c](https://modsecurity.org)
- [mod_ssl.c](https://httpd.apache.org/docs/2.4/mod/mod_ssl.html)

## Verify Apache is installed

To verify that Apache is installed and view the current version, enter:

```bash
apache2 -v
```

The result displays information similar to the following:

```text
Server version: Apache/<installed-version>
Server built: <build-date>
```

- If Apache is *not* installed, see:
  - [Install or upgrade Apache on Ubuntu](#installing-or-upgrading-apache-on-ubuntu)
  - [Install Apache on CentOS](#installing-apache-on-centos)

## Install or upgrade Apache on Ubuntu {#installing-or-upgrading-apache-on-ubuntu}

Installing and configuring Apache on Ubuntu is a three-step process:

1. Install the software.
1. Enable rewrites.
1. Specify `.htaccess` directives.

When you configure Apache server rewrites, you must specify the type of directives that can be used in `.htaccess`, which the application uses to specify rewrite rules and security protections.

### Install Apache on Ubuntu

1. Install Apache if you have not already done so:

   ```bash
   apt-get -y install apache2
   ```

1. Verify the installation:

   ```bash
   apache2 -v
   ```

   Messages similar to the following display to confirm that the installation was successful:

   ```text
   Server version: Apache/<installed-version>
   Server built: <build-date>
   ```

1. Continue with the next section.

   >[!NOTE]
   >
   >Even if Apache is provided by default with Ubuntu, see the following section to configure it.

### Upgrade Apache on Ubuntu

If Apache is already installed and you are using a version earlier than `2.4`, upgrade to Apache `2.4` or to the latest version supported by the Adobe Commerce version you have deployed. See [system requirements](../../system-requirements.md).

1. Update package information:

   ```bash
   apt-get -y update
   ```

1. Add a repository that provides a supported Apache version for your environment, if needed.

1. Install or upgrade Apache:

   ```bash
   apt-get install -y apache2
   ```

   >[!NOTE]
   >
   >If the `apt-get install` command fails because of unmet dependencies, consult your operating system package documentation or distribution support resources.

1. Verify the installation:

   ```bash
   apache2 -v
   ```

1. Confirm that the installed version matches the version supported for your Adobe Commerce release in [system requirements](../../system-requirements.md).

1. Enable [rewrites and `.htaccess` for Ubuntu](#enable-rewrites-and-htaccess-for-ubuntu).

### Enable rewrites and .htaccess for Ubuntu

1. Open the `/etc/apache2/sites-available/000-default.conf` file for editing:

   ```bash
   vim /etc/apache2/sites-available/000-default.conf
   ```

1. Locate the block that starts with:

   ```conf
   <Directory "/var/www/html">
   ```

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

>[!IMPORTANT]
>
>Failure to enable these settings typically results in no styles displaying on your storefront or Admin. It can also prevent Apache from applying the Adobe Commerce security protections defined in `.htaccess`.

## Install Apache on CentOS {#installing-apache-on-centos}

Installing and configuring Apache on CentOS is a three-step process:

1. Install the software
2. Enable rewrites
3. Specify `.htaccess` directives.

When you configure Apache server rewrites, you must specify the type of directives that can be used in `.htaccess`, which the application uses to specify rewrite rules and security protections.

### Installing Apache

1. Install Apache if you have not already done so.

   ```bash
   yum -y install httpd
   ```

1. Verify the installation:

   ```bash
   httpd -v
   ```

   Messages similar to the following display to confirm that the installation was successful:

   ```text
   Server version: Apache/<installed-version>
   Server built: <build-date>
   ```

1. Continue with the next section.

   >[!NOTE]
   >
   >Even if Apache is provided by default with CentOS, see the following section to configure it.

### Enable rewrites and .htaccess for CentOS

1. Open the `/etc/httpd/conf/httpd.conf` file for editing:

   ```bash
   vim /etc/httpd/conf/httpd.conf
   ```

1. Locate the block that starts with:

   ```conf
   <Directory "/var/www/html">
   ```

1. Change the value of `AllowOverride` to `All`.

   For example:

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
   >The preceding values for `Order` might not work in all cases. For more information, see the [Apache documentation](https://httpd.apache.org/docs/2.4/mod/mod_authz_host.html#order).

1. Save the file and exit the text editor.

1. To apply the Apache settings, restart Apache.

   ```bash
   systemctl restart httpd
   ```

>[!IMPORTANT]
>
>Failure to enable these settings typically results in no styles displaying on your storefront or Admin. It can also prevent Apache from applying the Adobe Commerce security protections defined in `.htaccess`.

## Solving 403 (Forbidden) errors

If you encounter 403 Forbidden errors when trying to access the site, you can update your Apache configuration or your virtual host configuration to enable visitors to the site:

### Solve 403 Forbidden errors for Apache

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
