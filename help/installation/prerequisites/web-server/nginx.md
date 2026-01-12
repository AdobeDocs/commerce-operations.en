---
title: Nginx
description: Follow these steps to install and configure the Nginx web server for on-premises installations of Adobe Commerce.
exl-id: 041ddb9d-868e-4021-9388-1c9ea11bfd8f
---
# Nginx

Adobe Commerce supports nginx 1.x (or the [latest mainline version](https://nginx.org/en/linux_packages.html#mainline)). You must also install the latest version of `php-fpm`.

Installation instructions vary based on which operating system that you are using. See [PHP](../php-settings.md) for information.

## Ubuntu

The following section describes how to install Adobe Commerce 2.x on Ubuntu using nginx, PHP, and MySQL.

### Install nginx

```bash
sudo apt -y install nginx
```

You can also [build nginx from source](https://www.armanism.com/blog/install-nginx-on-ubuntu)

After completing the following sections and installing the application, we will use a sample configuration file to [configure nginx](#configure-nginx).

### Install and configure php-fpm

Adobe Commerce requires several [PHP extensions](../php-settings.md) to function properly. In addition to these extensions, you must also install and configure the `php-fpm` extension if you are using nginx.

To install and configure `php-fpm`:

1. Install `php-fpm` and `php-cli`:

   ```bash
   apt-get -y install php7.2-fpm php7.2-cli
   ```

   >[!NOTE]
   >
   >This command installs the latest available version of PHP 7.2.X. See [system requirements](../../system-requirements.md) for supported PHP versions.

1. Open the `php.ini` files in an editor:

   ```bash
   vim /etc/php/7.2/fpm/php.ini
   ```

   ```bash
   vim /etc/php/7.2/cli/php.ini
   ```

1. Edit both files to match the following lines:

   ```conf
   memory_limit = 2G
   max_execution_time = 1800
   zlib.output_compression = On
   ```

   >[!NOTE]
   >
   >We recommend setting the memory limit to 2 G when testing Adobe Commerce. Refer to [Required PHP settings](../php-settings.md) for more information.

1. Save and exit the editor.

1. Restart the `php-fpm` service:

   ```bash
   systemctl restart php7.2-fpm
   ```

### Install and configure MySQL

Refer to [MySQL](../database/mysql.md) for more information.

### Install and configure

There are several ways to download Adobe Commerce, including:

* [Get the Composer metapackage](../../composer.md)

* [Clone the git repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

This example shows a Composer-based installation using the command line.

1. As the [file system owner](../file-system/overview.md), log in to your application server.

1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot. For this example, we're using the Ubuntu default `/var/www/html`.

   ```bash
   cd /var/www/html
   ```

1. Install Composer globally. Composer is required to update dependencies before installing Adobe Commerce:

   ```bash
   curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
   ```

1. Create a Composer project using the Adobe Commerce metapackage.

   **Magento Open Source**

   ```bash
   composer create-project --repository=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
   ```

   **Adobe Commerce**

   ```bash
   composer create-project --repository=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
   ```

   When prompted, enter your [authentication keys](../authentication-keys.md). Your _public key_ is your username; your _private key_ is your password.

1. Set read-write permissions for the web server group before you install the application. This is necessary so that the command line can write files to the file system.

   ```bash
   cd /var/www/html/<magento install directory>
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

   ```bash
   chown -R :www-data . # Ubuntu
   ```

   ```bash
   chmod u+x bin/magento
   ```

1. Install from the [command line](../../advanced.md). This example assumes that the install directory is named `magento2ee`, the `db-host` is on the same machine (`localhost`), and that the `db-name`, `db-user`, and `db-password` are all `magento`:

   ```bash
   bin/magento setup:install \
   --base-url=http://localhost/magento2ee \
   --db-host=localhost \
   --db-name=magento \
   --db-user=magento \
   --db-password=magento \
   --backend-frontname=admin \
   --admin-firstname=admin \
   --admin-lastname=admin \
   --admin-email=admin@admin.com \
   --admin-user=admin \
   --admin-password=admin123 \
   --language=en_US \
   --currency=USD \
   --timezone=America/Chicago \
   --use-rewrites=1 \
   --search-engine=elasticsearch7 \
   --elasticsearch-host=es-host.example.com \
   --elasticsearch-port=9200

   ```

1. Switch to developer mode:

   ```bash
   cd /var/www/html/magento2/bin
   ```

   ```bash
   ./magento deploy:mode:set developer
   ```

### Configure nginx

We recommend configuring nginx using the `nginx.conf.sample` configuration file provided in the installation directory and nginx virtual host.

These instructions assume you're using the Ubuntu default location for the nginx virtual host (for example, `/etc/nginx/sites-available`) and Ubuntu default docroot (for example, `/var/www/html`), however, you can change these locations to suit your environment.

1. Create a new virtual host for your site:

   ```bash
   vim /etc/nginx/sites-available/magento
   ```

1. Add the following configuration:

   ```conf
   upstream fastcgi_backend {
     server  unix:/run/php/php7.2-fpm.sock;
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

   ```bash
   ln -s /etc/nginx/sites-available/magento /etc/nginx/sites-enabled
   ```

1. Verify that the syntax is correct:

   ```bash
   nginx -t
   ```

1. Restart nginx:

   ```bash
   systemctl restart nginx
   ```

### Verify the installation

Open a web browser and navigate to your site's base URL to [verify the installation](../../next-steps/verify.md).

## CentOS 7

The following section describes how to install Adobe Commerce 2.x on CentOS 7 using nginx, PHP, and MySQL.

### Install nginx

```bash
yum -y install epel-release
```

```bash
yum -y install nginx
```

After installation is complete, start nginx and configure it to start at boot time:

```bash
systemctl start nginx
```

```bash
systemctl enable nginx
```

After completing the following sections and installing the application, we'll use a sample configuration file to configure nginx.

### Install and configure php-fpm

Adobe Commerce requires several [PHP](../php-settings.md) extensions to function properly. In addition to these extensions, you must also install and configure the `php-fpm` extension if you're using nginx.

1. Install `php-fpm`:

   ```bash
   yum -y install php70w-fpm
   ```

1. Open the `/etc/php.ini` file in an editor.

1. Uncomment the `cgi.fix_pathinfo` line and change the value to `0`.

1. Edit the file to match the following lines:

   ```conf
   memory_limit = 2G
   max_execution_time = 1800
   zlib.output_compression = On
   ```

   >[!NOTE]
   >
   >We recommend setting the memory limit to 2 G when testing Adobe Commerce. Refer to [Required PHP settings](../php-settings.md) for more information.

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

1. Create a directory for the PHP session path and change the owner to the `apache` user and group:

   ```bash
   mkdir -p /var/lib/php/session/
   ```

   ```bash
   chown -R apache:apache /var/lib/php/
   ```

1. Create a directory for the PHP session path and change the owner to the `apache` user and group:

   ```bash
   mkdir -p /run/php-fpm/
   ```

   ```bash
   chown -R apache:apache /run/php-fpm/
   ```

1. Start the `php-fpm` service and configure it to start at boot time:

   ```bash
   systemctl start php-fpm
   ```

   ```bash
   systemctl enable php-fpm
   ```

1. Verify that the `php-fpm` service is running:

   ```bash
   netstat -pl | grep php-fpm.sock
   ```

### Install and configure MySQL

Refer to [MySQL](..//database/mysql.md) for more information.

### Install and configure

There are several ways to download the Adobe Commerce, including:

* [Get the Composer metapackage](../../composer.md)

* [Clone the git repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

This example shows a Composer-based installation using the command line.

1. As the [file system owner](../file-system/overview.md), log in to your application server.

1. Change to the web server docroot directory or a directory that you have configured as a virtual host docroot. For this example, we're using the Ubuntu default `/var/www/html`.

   ```bash
   cd /var/www/html
   ```

1. Install Composer globally. Composer is required to update dependencies before installing Adobe Commerce:

   ```bash
   curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
   ```

1. Create a Composer project using the Adobe Commerce metapackage.

   **Magento Open Source**

   ```bash
   composer create-project --repository=https://repo.magento.com/ magento/project-community-edition <install-directory-name>
   ```

   **Adobe Commerce**

   ```bash
   composer create-project --repository=https://repo.magento.com/ magento/project-enterprise-edition <install-directory-name>
   ```

   When prompted, enter your [authentication keys](../authentication-keys.md). Your _public key_ is your username; your _private key_ is your password.

1. Set read-write permissions for the web server group before you install the application. This is necessary so that the command line can write files to the file system.

   ```bash
   cd /var/www/html/<magento install directory>
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

   ```bash
   chown -R :www-data . # Ubuntu
   ```

   ```bash
   chmod u+x bin/magento
   ```

1. Install from the [command line](../../advanced.md). This example assumes that the install directory is named `magento2ee`, the `db-host` is on the same machine (`localhost`), and that the `db-name`, `db-user`, and `db-password` are all `magento`:

   ```bash
   bin/magento setup:install \
   --base-url=http://localhost/magento2ee \
   --db-host=localhost \
   --db-name=magento \
   --db-user=magento \
   --db-password=magento \
   --backend-frontname=admin \
   --admin-firstname=admin \
   --admin-lastname=admin \
   --admin-email=admin@admin.com \
   --admin-user=admin \
   --admin-password=admin123 \
   --language=en_US \
   --currency=USD \
   --timezone=America/Chicago \
   --use-rewrites=1
   ```

1. Switch to developer mode:

   ```bash
   cd /var/www/html/magento2/bin
   ```

   ```bash
   ./magento deploy:mode:set developer
   ```

### Configure nginx

We recommend configuring nginx using the `nginx.conf.sample` configuration file provided in the installation directory and nginx virtual host.

These instructions assume you're using the CentOS default location for the nginx virtual host (for example, `/etc/nginx/conf.d`) and default docroot (for example, `/usr/share/nginx/html`), however, you can change these locations to suit your environment.

1. Create a new virtual host for your site:

   ```bash
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

   ```bash
   nginx -t
   ```

1. Restart nginx:

   ```bash
   systemctl restart nginx
   ```

### Configure SELinux and Firewalld

SELinux is enabled by default on CentOS 7. Use the following command to see if it's running:

```bash
sestatus
```

To configure SELinux and firewalld:

1. Install SELinux management tools:

   ```bash
   yum -y install policycoreutils-python
   ```

1. Run the following commands to change the security context for the installation directory:

   ```bash
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/app/etc(/.*)?'
   ```

   ```bash
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/var(/.*)?'
   ```

   ```bash
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/pub/media(/.*)?'
   ```

   ```bash
   semanage fcontext -a -t httpd_sys_rw_content_t '/usr/share/nginx/html/magento2/pub/static(/.*)?'
   ```

   ```bash
   restorecon -Rv '/usr/share/nginx/html/magento2/'
   ```

1. Install the firewalld package:

   ```bash
   yum -y install firewalld
   ```

1. Start the firewall service and configure it to start at boot time:

   ```bash
   systemctl start firewalld
   ```

   ```bash
   systemctl enable firewalld
   ```

1. Run the following commands to open ports for HTTP and HTTPS so you can access the base URL from a web browser:

   ```bash
   firewall-cmd --permanent --add-service=http
   ```

   ```bash
   firewall-cmd --permanent --add-service=https
   ```

   ```bash
   firewall-cmd --reload
   ```

### Verify the installation

Open a web browser and navigate to your site's base URL to [verify the installation](../../next-steps/verify.md).
