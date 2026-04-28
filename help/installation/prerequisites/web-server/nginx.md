---
title: Install Nginx for On-Premises Deployments
description: Learn how to install and configure the Nginx web server for on-premises Adobe Commerce deployments. Set up PHP-FPM and your virtual host.
feature: Install, Configuration
badgePaas: label="On-premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."

exl-id: 041ddb9d-868e-4021-9388-1c9ea11bfd8f
---
# Install Nginx for on-premises deployments {#nginx}

This guide walks you through installing Nginx for Adobe Commerce on-premises deployments and configuring the Nginx settings that Commerce requires. It includes operating system-specific procedures for Ubuntu and CentOS, along with guidance for configuring PHP-FPM. Adobe recommends following the configuration instructions provided in this guide to preserve both the functionality and security of the Commerce application.

Adobe supports the Nginx versions listed in the [system requirements](../../system-requirements.md) for your Adobe Commerce release. Supported versions vary by release. Nginx also requires a supported PHP-FPM configuration. For related PHP requirements, see [PHP](../php-settings.md).

## Install on Ubuntu

Use this section to install Adobe Commerce on Ubuntu with Nginx, PHP, and MySQL.

### Install Nginx

```shell
sudo apt -y install nginx
```

You can also [build Nginx from source](https://www.armanism.com/blog/install-nginx-on-ubuntu).

After you complete the following sections and install the application, use the sample configuration file to [configure Nginx](#configure-nginx). This recommended configuration preserves both the functionality and security of the Commerce application.

### Install and configure PHP-FPM

Adobe Commerce requires several [PHP extensions](../php-settings.md) to function properly. In addition to these extensions, you must also install and configure the `php-fpm` extension if you are using Nginx.

To install and configure `php-fpm`:

1. Install the `php-fpm` and `php-cli` packages for the PHP version supported by your Adobe Commerce release. On Ubuntu, package names typically follow this pattern:

   ```shell
   apt-get -y install php<php-version>-fpm php<php-version>-cli
   ```

   >[!NOTE]
   >
   >Replace `<php-version>` with the supported PHP minor version listed in [system requirements](../../system-requirements.md) for the Adobe Commerce release you are installing. Use the same value in the file paths, service name, and socket path in the following steps.

1. Open the `php.ini` files in an editor:

   ```shell
   vim /etc/php/<php-version>/fpm/php.ini
   ```

   ```shell
   vim /etc/php/<php-version>/cli/php.ini
   ```

1. Edit both files to match the following lines:

   ```conf
   memory_limit = 2G
   max_execution_time = 1800
   zlib.output_compression = On
   ```

   >[!NOTE]
   >
   >Adobe recommends setting the memory limit to 2 GB when testing Adobe Commerce. Refer to [Required PHP settings](../php-settings.md) for more information.

1. Save and exit the editor.

1. Restart the `php-fpm` service:

   ```shell
   systemctl restart php<php-version>-fpm
   ```

### Install and configure MySQL

Refer to [MySQL](../database/mysql.md) for more information.

### Install Adobe Commerce

You can download Adobe Commerce in several ways:

* [Get the Composer metapackage](../../composer.md)

* [Clone the git repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

This example shows a Composer-based installation using the command line.

1. As the [file system owner](../file-system/overview.md), log in to your application server.

1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot. For this example, we're using the Ubuntu default `/var/www/html`.

   ```shell
   cd /var/www/html
   ```

1. Install Composer globally. Composer is required to update dependencies before installing Adobe Commerce:

   ```shell
   curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
   ```

1. Create a Composer project using the Adobe Commerce metapackage.

   **Magento Open Source**

   ```shell
   composer create-project --repository=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
   ```

   **Adobe Commerce**

   ```shell
   composer create-project --repository=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
   ```

   When prompted, enter your [authentication keys](../authentication-keys.md). Your _public key_ is your username; your _private key_ is your password.

1. Set read-write permissions for the web server group before you install the application. This is necessary so that the command line can write files to the file system.

   ```shell
   cd /var/www/html/<magento install directory>
   ```

   ```shell
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```shell
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

   ```shell
   chown -R :www-data . # Ubuntu
   ```

   ```shell
   chmod u+x bin/magento
   ```

1. Install from the [command line](../../advanced.md). This example assumes that the install directory is named `magento2ee` and that the database host is on the same machine (`localhost`):

   ```shell
   bin/magento setup:install \
   --base-url=http://localhost/magento2ee \
   --db-host=localhost \
   --db-name=<db-name> \
   --db-user=<db-user> \
   --db-password=<db-password> \
   --backend-frontname=<backend-uri> \
   --admin-firstname=<admin-first-name> \
   --admin-lastname=<admin-last-name> \
   --admin-email=<admin-email> \
   --admin-user=<admin-user> \
   --admin-password=<admin-password> \
   --language=en_US \
   --currency=USD \
   --timezone=America/Chicago \
   --use-rewrites=1 \
   --search-engine=<search-engine-value> \
   --<search-engine-host-parameter>=search-host.example.com \
   --<search-engine-port-parameter>=9200

   ```

   >[!NOTE]
   >
   >Use the `--search-engine` value and matching host/port options required by the Adobe Commerce release you are installing. For versions earlier than 2.4.6, use `elasticsearch7` with the `--elasticsearch-*` options for Elasticsearch 7 or OpenSearch. For version 2.4.6 and later, use the search engine value and corresponding CLI options supported by that release.

1. Switch to developer mode:

   ```shell
   cd /var/www/html/magento2/bin
   ```

   ```shell
   ./magento deploy:mode:set developer
   ```

### Configure Nginx

Adobe recommends configuring Nginx using the `nginx.conf.sample` configuration file provided in the installation directory and your Nginx virtual host configuration to preserve both the functionality and security of the Commerce application.

>[!IMPORTANT]
>
>The `nginx.conf.sample` file provides required application routing as well as security-hardening rules. For example, it restricts execution of harmful scripts uploaded to the server. If you do not use this file or modify its rules, you are responsible for implementing equivalent security controls in your custom nginx configuration.

These instructions assume that you are using the Ubuntu default location for the Nginx virtual host, such as `/etc/nginx/sites-available`, and the Ubuntu default docroot, such as `/var/www/html`. You can change these locations to suit your environment.

1. Create a new virtual host for your site:

   ```shell
   vim /etc/nginx/sites-available/magento
   ```

1. Add the following configuration:

   ```conf
   upstream fastcgi_backend {
     server  unix:/run/php/php<php-version>-fpm.sock;
   }

   server {

     listen 80;
     server_name www.magento-dev.com;
     set $MAGE_ROOT /var/www/html/magento2;
     include /var/www/html/magento2/nginx.conf.sample;
   }
   ```

   >[!NOTE]
   >
   >The `include` directive must point to the sample nginx configuration file in your installation directory.

1. Replace `www.magento-dev.com` with your domain name. This must match the base URL you specified when installing Adobe Commerce.

1. Save and exit the editor.

1. Activate the newly created virtual host by creating a symlink to it in the `/etc/nginx/sites-enabled` directory:

   ```shell
   ln -s /etc/nginx/sites-available/magento /etc/nginx/sites-enabled
   ```

1. Verify that the syntax is correct:

   ```shell
   nginx -t
   ```

1. Restart Nginx:

   ```shell
   systemctl restart nginx
   ```

### Verify the installation

To verify the installation, open a web browser and navigate to your site's base URL. For more information, see [Verify the installation](../../next-steps/verify.md).

## Install on CentOS 7

Use this section to install Adobe Commerce on CentOS 7 with Nginx, PHP, and MySQL.

### Install Nginx

```shell
yum -y install epel-release
```

```shell
yum -y install nginx
```

After installation is complete, start nginx and configure it to start at boot time:

```shell
systemctl start nginx
```

```shell
systemctl enable nginx
```

After you complete the following sections and install the application, use a sample configuration file to configure Nginx.

### Install and configure PHP-FPM

Adobe Commerce requires several [PHP](../php-settings.md) extensions to function properly. In addition to these extensions, you must also install and configure the `php-fpm` extension if you are using Nginx.

1. Install `php-fpm`:

   ```shell
   yum -y install <php-fpm-package>
   ```

1. Open the `/etc/php.ini` file in an editor.

   >[!NOTE]
   >
   >Install the package that provides `php-fpm` for the PHP version supported by the Adobe Commerce release you are installing. Package names vary by repository and operating system. See [system requirements](../../system-requirements.md).

1. Uncomment the `cgi.fix_pathinfo` line and change the value to `0`.

1. Edit the file to match the following lines:

   ```conf
   memory_limit = 2G
   max_execution_time = 1800
   zlib.output_compression = On
   ```

   >[!NOTE]
   >
   >Adobe recommends setting the memory limit to 2 GB when testing Adobe Commerce. Refer to [Required PHP settings](../php-settings.md) for more information.

1. Uncomment the session path directory and set the path:

   ```conf
   session.save_path = "/var/lib/php/session"
   ```

1. Save and exit the editor.

1. Open `/etc/php-fpm.d/www.conf` in an editor.

1. Edit the file to match the following lines:

   ```conf
   user = nginx
   group = nginx
   listen = /run/php-fpm/php-fpm.sock
   listen.owner = nginx
   listen.group = nginx
   listen.mode = 0660
   ```

1. Uncomment the environment lines:

   ```conf
   env[HOSTNAME] = $HOSTNAME
   env[PATH] = /usr/local/bin:/usr/bin:/bin
   env[TMP] = /tmp
   env[TMPDIR] = /tmp
   env[TEMP] = /tmp
   ```

1. Save and exit the editor.

1. Create a directory for the PHP session path and change the owner to the `nginx` user and group:

   ```shell
   mkdir -p /var/lib/php/session/
   ```

   ```shell
   chown -R nginx:nginx /var/lib/php/
   ```

1. Create a directory for the PHP-FPM socket and change the owner to the `nginx` user and group:

   ```shell
   mkdir -p /run/php-fpm/
   ```

   ```shell
   chown -R nginx:nginx /run/php-fpm/
   ```

1. Start the `php-fpm` service and configure it to start at boot time:

   ```shell
   systemctl start php-fpm
   ```

   ```shell
   systemctl enable php-fpm
   ```

1. Verify that the `php-fpm` service is running:

   ```shell
   netstat -pl | grep php-fpm.sock
   ```

### Install and configure MySQL

Refer to [MySQL](../database/mysql.md) for more information.

### Install Adobe Commerce

You can download Adobe Commerce in several ways:

* [Get the Composer metapackage](../../composer.md)

* [Clone the git repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

This example shows a Composer-based installation using the command line.

1. As the [file system owner](../file-system/overview.md), log in to your application server.

1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot. For this example, use the CentOS default `/usr/share/nginx/html`.

   ```shell
   cd /usr/share/nginx/html
   ```

1. Install Composer globally. Composer is required to update dependencies before installing Adobe Commerce:

   ```shell
   curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
   ```

1. Create a Composer project using the Adobe Commerce metapackage.

   **Magento Open Source**

   ```shell
   composer create-project --repository=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
   ```

   **Adobe Commerce**

   ```shell
   composer create-project --repository=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
   ```

   When prompted, enter your [authentication keys](../authentication-keys.md). Your _public key_ is your username; your _private key_ is your password.

1. Set read-write permissions for the web server group before you install the application. This is necessary so that the command line can write files to the file system.

   ```shell
   cd /usr/share/nginx/html/<magento install directory>
   ```

   ```shell
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```shell
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

   ```shell
   chown -R :nginx . # CentOS
   ```

   ```shell
   chmod u+x bin/magento
   ```

1. Install from the [command line](../../advanced.md). This example assumes that the install directory is named `magento2ee` and that the database host is on the same machine (`localhost`):

   ```shell
   bin/magento setup:install \
   --base-url=http://localhost/magento2ee \
   --db-host=localhost \
   --db-name=<db-name> \
   --db-user=<db-user> \
   --db-password=<db-password> \
   --backend-frontname=<backend-uri> \
   --admin-firstname=<admin-first-name> \
   --admin-lastname=<admin-last-name> \
   --admin-email=<admin-email> \
   --admin-user=<admin-user> \
   --admin-password=<admin-password> \
   --language=en_US \
   --currency=USD \
   --timezone=America/Chicago \
   --use-rewrites=1
   ```

1. Switch to developer mode:

   ```shell
   cd /usr/share/nginx/html/magento2/bin
   ```

   ```shell
   ./magento deploy:mode:set developer
   ```

### Configure Nginx

We recommend configuring Nginx using the `nginx.conf.sample` file in the installation directory and your Nginx virtual host configuration.

>[!IMPORTANT]
>
>The `nginx.conf.sample` file provides required application routing as well as security-hardening rules. For example, it restricts execution of harmful scripts uploaded to the server. If you do not use this file or modify its rules, you are responsible for implementing equivalent security controls in your custom nginx configuration.

These instructions assume that you are using the CentOS default location for the Nginx virtual host, such as `/etc/nginx/conf.d`, and the default docroot, such as `/usr/share/nginx/html`. You can change these locations to suit your environment.

1. Create a new virtual host for your site:

   ```shell
   vim /etc/nginx/conf.d/magento.conf
   ```

1. Add the following configuration:

   ```conf
   upstream fastcgi_backend {
     server  unix:/run/php-fpm/php-fpm.sock;
   }

   server {

     listen 80;
     server_name www.magento-dev.com;
     set $MAGE_ROOT /usr/share/nginx/html/magento2;
     include /usr/share/nginx/html/magento2/nginx.conf.sample;
   }
   ```

   >[!NOTE]
   >
   >The `include` directive must point to the sample nginx configuration file in your installation directory.

1. Replace `www.magento-dev.com` with your domain name.

1. Save and exit the editor.

1. Verify that the syntax is correct:

   ```shell
   nginx -t
   ```

1. Restart Nginx:

   ```shell
   systemctl restart nginx
   ```

### Configure SELinux and firewalld

SELinux is enabled by default on CentOS 7. Use the following command to confirm it is running:

```shell
sestatus
```

To configure SELinux and firewalld:

1. Install SELinux management tools:

   ```shell
   yum -y install policycoreutils-python
   ```

1. Run the following commands to change the security context for the installation directory:

   ```shell
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/app/etc(/.*)?'
   ```

   ```shell
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/var(/.*)?'
   ```

   ```shell
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/pub/media(/.*)?'
   ```

   ```shell
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/pub/static(/.*)?'
   ```

   ```shell
   restorecon -Rv '/usr/share/nginx/html/magento2/'
   ```

1. Install the firewalld package:

   ```shell
   yum -y install firewalld
   ```

1. Start the firewall service and configure it to start at boot time:

   ```shell
   systemctl start firewalld
   ```

   ```shell
   systemctl enable firewalld
   ```

1. Run the following commands to open ports for HTTP and HTTPS so you can access the base URL from a web browser:

   ```shell
   firewall-cmd --permanent --add-service=http
   ```

   ```shell
   firewall-cmd --permanent --add-service=https
   ```

   ```shell
   firewall-cmd --reload
   ```

### Verify the installation

To verify the installation, open a web browser and navigate to your site's base URL. For more information, see [Verify the installation](../../next-steps/verify.md).
