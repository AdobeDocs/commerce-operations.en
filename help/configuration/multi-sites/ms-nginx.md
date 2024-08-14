---
title: Set up multiple websites with Nginx
description: Follow this tutorial to set up multiple websites with Nginx.
exl-id: f13926a2-182c-4ce2-b091-19c5f978f267
---
# Set up multiple websites with Nginx

We assume that:

- You are working on a development machine (laptop, virtual machine, or similar).

   Additional tasks might be required to deploy multiple websites in a hosted environment; check with your hosting provider for more information.

   Additional tasks are required to set up Adobe Commerce on cloud infrastructure. After you complete the tasks discussed in this topic, see [Set up multiple websites or stores](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/multiple-sites.html) in the _Commerce on Cloud Infrastructure guide_.

- You accept multiple domains in one virtual host file or use one virtual host per website; the virtual host configuration files are located in `/etc/nginx/sites-available`.
- You use the `nginx.conf.sample` provided by Commerce with only the modifications discussed in this tutorial.
- The Commerce software is installed in `/var/www/html/magento2`.
- You have two websites other than the default:

  - `french.mysite.mg` with website code `french` and store view code `fr`
  - `german.mysite.mg` with website code `german` and store view code `de`
  - `mysite.mg` is the default website and default store view

>[!TIP]
>
>Refer to [Create websites](ms-admin.md#step-2-create-websites) and [Create store views](ms-admin.md#step-4-create-store-views) for help with locating these values.

The following is a roadmap for setting up multiple websites with nginx:

1. [Set up websites, stores, and store views](ms-admin.md) in the Admin.
1. Create an [Nginx virtual host](#step-2-create-nginx-virtual-hosts)) to map many websites or one Nginx virtual host per Commerce website (steps detailed below).
1. Pass the values of the [MAGE variables](ms-overview.md) `$MAGE_RUN_TYPE` and `$MAGE_RUN_CODE` to nginx using the Magento-provided `nginx.conf.sample` (steps detailed below).

   - `$MAGE_RUN_TYPE` can be either `store` or `website`:

     - Use `website` to load your website in your storefront.
     - Use `store` to load any store view in your storefront.

   - `$MAGE_RUN_CODE` is the unique website or store view code that corresponds to `$MAGE_RUN_TYPE`.

1. Update the Base URL configuration on the Commerce admin.

## Step 1: Create websites, stores, and store views in the Admin

See [Set up multiple websites, stores, and store views in the Admin](ms-admin.md).

## Step 2: Create nginx virtual hosts

This step discusses how to load websites on the storefront. You can use either websites or store views; if you use store views, you must adjust parameter values accordingly. You must complete the tasks in this section as a user with `sudo` privileges.

By using just one [nginx virtual host file](#step-2-create-nginx-virtual-hosts), you can keep your nginx configuration simple and clean. By using several virtual host files, you can customize each store (to use a custom location for `french.mysite.mg` for instance).

**To create one virtual host** (simplified):

This configuration expands upon [nginx configuration](../../installation/prerequisites/web-server/nginx.md).

1. Open a text editor and add the following contents to a new file named `/etc/nginx/sites-available/magento`:

   ```conf
   map $http_host $MAGE_RUN_CODE {
       default '';
       french.mysite.mg french;
       german.mysite.mg german;
   }

   server {
       listen 80;
       server_name mysite.mg french.mysite.mg german.mysite.mg;
       set $MAGE_ROOT /var/www/html/magento2;
       set $MAGE_MODE developer;
       set $MAGE_RUN_TYPE website; #or set $MAGE_RUN_TYPE store;
       include /var/www/html/magento2/nginx.conf;
   }
   ```

1. Save your changes to the files and exit the text editor.
1. Verify the server configuration:

   ```bash
   nginx -t
   ```

1. If successful, the following message displays:

   ```
   nginx: configuration file /etc/nginx/nginx.conf test is successful
   ```

   If errors display, check the syntax of your virtual host configuration files.

1. Create symbolic link in the `/etc/nginx/sites-enabled` directory:

   ```bash
   cd /etc/nginx/sites-enabled
   ```

   ```bash
   ln -s /etc/nginx/sites-available/magento magento
   ```

For more detail about the map directive, see [nginx documentation on the map directive](http://nginx.org/en/docs/http/ngx_http_map_module.html#map).


**To create multiple virtual hosts**:

1. Open a text editor and add the following contents to a new file named `/etc/nginx/sites-available/french.mysite.mg`:

   ```conf
   server {
       listen 80;
       server_name french.mysite.mg;
       set $MAGE_ROOT /var/www/html/magento2;
       set $MAGE_MODE developer;
       set $MAGE_RUN_TYPE website; #or set $MAGE_RUN_TYPE store;
       set $MAGE_RUN_CODE french;
       include /var/www/html/magento2/nginx.conf;
   }
   ```

1. Create another file named `german.mysite.mg` in the same directory with the following contents:

   ```conf
   server {
       listen 80;
       server_name german.mysite.mg;
       set $MAGE_ROOT /var/www/html/magento2;
       set $MAGE_MODE developer;
       set $MAGE_RUN_TYPE website; #or set $MAGE_RUN_TYPE store;
       set $MAGE_RUN_CODE german;
       include /var/www/html/magento2/nginx.conf;
   }
   ```

1. Save your changes to the files and exit the text editor.
1. Verify the server configuration:

   ```bash
   nginx -t
   ```

1. If successful, the following message displays:

   ```
   nginx: configuration file /etc/nginx/nginx.conf test is successful
   ```

   If errors display, check the syntax of your virtual host configuration files.

1. Create symbolic links in the `/etc/nginx/sites-enabled` directory:

   ```bash
   cd /etc/nginx/sites-enabled
   ```

   ```bash
   ln -s /etc/nginx/sites-available/french.mysite.mg french.mysite.mg
   ```

   ```bash
   ln -s /etc/nginx/sites-available/german.mysite.mg german.mysite.mg
   ```

## Step 3: Modify nginx.conf.sample

>[!TIP]
>
>Do not edit the `nginx.conf.sample` file; it is a core Commerce file that may be updated with each new release. Instead, copy the `nginx.conf.sample` file, rename it, and then edit the copied file.

**To edit the PHP entry point for the main application**:

To modify the `nginx.conf.sample` file**:

1. Open a text editor and review the `nginx.conf.sample` file ,`<magento2_installation_directory>/nginx.conf.sample`. Look for the following section:

   ```conf
   # PHP entry point for main application
   location ~ (index|get|static|report|404|503|health_check)\.php$ {
       try_files $uri =404;
       fastcgi_pass   fastcgi_backend;
       fastcgi_buffers 1024 4k;

       fastcgi_param  PHP_FLAG  "session.auto_start=off \n suhosin.session.cryptua=off";
       fastcgi_param  PHP_VALUE "memory_limit=1G \n max_execution_time=18000";
       fastcgi_read_timeout 600s;
       fastcgi_connect_timeout 600s;

       fastcgi_index  index.php;
       fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
       include        fastcgi_params;
   }
   ```

1. Update the `nginx.conf.sample` file with the following two lines before the include statement:

   ```conf
   fastcgi_param MAGE_RUN_TYPE $MAGE_RUN_TYPE;
   fastcgi_param MAGE_RUN_CODE $MAGE_RUN_CODE;
   ```

An example updated PHP entry point for the main application looks like:

```conf
# PHP entry point for main application

location ~ (index|get|static|report|404|503|health_check)\.php$ {
    try_files $uri =404;
    fastcgi_pass   fastcgi_backend;
    fastcgi_buffers 1024 4k;

    fastcgi_param  PHP_FLAG  "session.auto_start=off \n suhosin.session.cryptua=off";
    fastcgi_param  PHP_VALUE "memory_limit=1G \n max_execution_time=18000";
    fastcgi_read_timeout 600s;
    fastcgi_connect_timeout 600s;

    fastcgi_index  index.php;
    fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
    # START - Multisite customization
    fastcgi_param MAGE_RUN_TYPE $MAGE_RUN_TYPE;
    fastcgi_param MAGE_RUN_CODE $MAGE_RUN_CODE;
    # END - Multisite customization
    include        fastcgi_params;
}
```

## Step 4: Update the Base URL configuration

You must update the Base URL for the `french` and the `german` websites in the Commerce admin.

### Update French Website Base URL

1. Log in to the Commerce admin and navigate to **Stores** > **Settings** > **Configuration** > **General** > **Web**.
1. Change the _configuration scope_ to the `french` website.
1. Expand **Base URLs** section and update the **Base URL** and **Base Link URL** value to `http://french.magento24.com/`.
1. Expand **Base URLs (Secure)** section and update the **Secure Base URL** and **Secure Base Link URL** value to `https://french.magento24.com/`.
1. Click **Save Config** and save the configuration changes.

### Update German Website Base URL

1. Log in to the Commerce admin and navigate to **Stores** > **Settings** > **Configuration** > **General** > **Web**.
1. Change the _configuration scope_ to the `german` website.
1. Expand **Base URLs** section and update the **Base URL** and **Base Link URL** value to `http://german.magento24.com/`.
1. Expand **Base URLs (Secure)** section and update the **Secure Base URL** and **Secure Base Link URL** value to `https://german.magento24.com/`.
1. Click **Save Config** and save the configuration changes.

### Clean the Cache

Run the following command to clean the `config` and `full_page` caches.

```bash
bin/magento cache:clean config full_page
```

## Verify your site

Unless you have DNS set up for your stores' URLs, you must add a static route to the host in your `hosts` file:

1. Locate your operating system `hosts` file.
1. Add the static route in the format:

   ```conf
   <ip-address> french.mysite.mg
   <ip-address> german.mysite.mg
   ```

1. Go to one of the following URLs in your browser:

   ```http
   http://mysite.mg/admin
   http://french.mysite.mg/frenchstoreview
   http://german.mysite.mg/germanstoreview
   ```

>[!INFO]
>
>- Additional tasks might be required to deploy multiple websites in a hosted environment; check with your hosting provider for more information.
>- Additional tasks are required to set up Adobe Commerce on cloud infrastructure; see [Set up multiple Cloud websites or stores](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/multiple-sites.html) in the _Commerce on Cloud Infrastructure guide_.

### Troubleshooting

- If your French and German sites return 404s but your Admin loads, make sure you completed [Step 6: Add the store code to the base URL](ms-admin.md#step-6-add-the-store-code-to-the-base-url).
- If all URLs return 404s, make sure you restarted your web server.
- If the Admin does not function properly, make sure you set up your virtual hosts properly.
