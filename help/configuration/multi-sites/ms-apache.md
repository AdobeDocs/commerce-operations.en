---
title: Set up multiple websites with Apache
description: Follow this tutorial to set up multiple websites with Apache.
---

# Set up multiple websites with Apache

We assume that:

If necessary, copy the existing `index.php` entry point script for your website or store view and add to it the following:

- You are working on a development machine (laptop, virtual machine, and so on)

   Additional tasks might be required to deploy multiple websites in a hosted environment; check with your hosting provider for more information.

   Additional tasks are required to set up Adobe Commerce on cloud infrastructure. After you complete the tasks discussed in this topic, see [Set up multiple websites or stores](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/multiple-sites.html) in the _Commerce on Cloud Infrastructure guide_.

- You use one virtual host per website; the virtual host configuration file is `/etc/httpd/httpd.conf`

    Different versions of Apache on different operating systems set up virtual hosts differently. Consult the [Apache documentation](https://httpd.apache.org/docs/2.4/vhosts) or a network administrator if you are not sure how to set up a virtual host.

- The Commerce software is installed in `/var/www/html/magento2`
- You have two websites other than the default:

  - `french.mysite.mg` with website code `french` and store view code `fr`
  - `german.mysite.mg` with website code `german` and store view code `de`

## Roadmap for setting up multiple websites with Apache

Setting up multiple stores consists of the following tasks:

1. [Set up websites, stores, and store views](ms-admin.md) in the Admin.
1. Create one [Apache virtual host](#step-2-create-apache-virtual-hosts) per Commerce website.

## Step 1: Create websites, stores, and store views in the Admin

See [Set up multiple websites, stores, and store views in the Admin](ms-admin.md).

## Step 2: Create Apache virtual hosts

This section discusses how to set values for `MAGE_RUN_TYPE` and `MAGE_RUN_CODE` using the Apache server variable `SetEnvIf` in a virtual host.

For more information about `SetEnvIf`, see:

- [Apache 2.2](https://httpd.apache.org/docs/2.2/mod/mod_setenvif.html)
- [Apache 2.4](https://httpd.apache.org/docs/2.4/mod/mod_setenvif.html)

**To create Apache virtual hosts**:

1. As a user with `root` privileges, open the virtual host configuration file in a text editor.

   For example, open `/etc/httpd/conf/httpd.conf`

1. Locate the section starting with `<VirtualHost *:80>`.
1. Create the following virtual hosts after any existing virtual hosts:

   ```conf
   <VirtualHost *:80>
      ServerName          mysite.mg
      DocumentRoot        /var/www/html/magento2/pub/
   </VirtualHost>

   <VirtualHost *:80>
      ServerName          french.mysite.mg
      DocumentRoot        /var/www/html/magento2/pub/
      SetEnv MAGE_RUN_CODE "french"
      SetEnv MAGE_RUN_TYPE "website"
   </VirtualHost>

   <VirtualHost *:80>
      ServerName          german.mysite.mg
      DocumentRoot        /var/www/html/magento2/pub/
      SetEnv MAGE_RUN_CODE "german"
      SetEnv MAGE_RUN_TYPE "website"
   </VirtualHost>
   ```

1. Save your changes to `httpd.conf` and exit the text editor.
1. Restart Apache:

   - CentOS: `service httpd restart`
   - Ubuntu: `service apache2 restart`

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
