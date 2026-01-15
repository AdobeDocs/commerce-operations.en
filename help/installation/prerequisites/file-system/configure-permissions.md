---
title: Configure file ownership and permissions
description: Follow these steps to configure file system permissions for on-premises installations of Adobe Commerce.
exl-id: 2410ee4f-978c-4b71-b3f6-0c042f9f4dc4
---
# Configure file ownership and permissions

This topic discusses how to set read-write permissions for the web server group before you install Adobe Commerce. This is necessary so the command line can write files to the file system.

The procedure you use is different, depending on whether you use [shared hosting](#set-permissions-for-one-user-on-shared-hosting) and have one user or if you use a [private server](#set-ownership-and-permissions-for-two-users) and have two users.

## Set permissions for one user on shared hosting

This section discusses how to set pre-installation permissions if you log in to the application server as the same user that also runs the web server. This type of setup is common in shared hosting environments.

To set permissions before you install the application:

1. Log in to your application server.
1. Use a file manager application provided by your shared hosting provider to verify that write permissions are set on the following directories:

   * `vendor` (Composer or compressed archive installation)
   * `app/etc`
   * `pub/static`
   * `var`
   * `generated`
   * Any other static resources

1. If you have command-line access, enter the following commands in the order shown:

   ```bash
   cd <app_root>
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod u+w {} +
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod u+w {} +
   ```

   ```bash
   chmod u+x bin/magento
   ```

   To optionally enter all commands on one line, enter the following assuming the application is installed in `/var/www/html/magento2`:

   ```bash
   cd /var/www/html/magento2 && find var generated vendor pub/static pub/media app/etc -type f -exec chmod u+w {} + && find var generated vendor pub/static pub/media app/etc -type d -exec chmod u+w {} + && chmod u+x bin/magento
   ```

1. If you have not already done so, get the application in one of the following ways:

   * [Composer metapackage](../../composer.md)
   * [Clone the repository (contributing developers only)](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

1. After you have set file system ownership and permissions, [install the application](../../advanced.md)

>[!NOTE]
>
>To further restrict permissions after installing the application, you can [configure a umask](../../next-steps/set-umask.md).

## Set ownership and permissions for two users

This section discusses how to set ownership and permissions for your own server or a private hosting setup. In this type of setup, you typically *cannot* log in as, or switch to, the web server user. You typically log in as one user and run the web server as a different user.

To set ownership and permissions for a two-user system:

Complete the following tasks in the order shown:

* [About the shared group](#about-the-shared-group)
* [Create the file system owner and give the user a strong password](#create-the-file-system-owner-and-give-the-user-a-strong-password)
* [Find the web server user's group](#find-the-web-server-user-group)
* [Put the file system owner in the web server group](#put-the-file-system-owner-in-the-web-server-group)
* [Get the software](#get-the-software)
* [Set ownership and permissions for the shared group](#set-ownership-and-permissions-for-the-shared-group)

### About the shared group

To enable the web server to write files and directories in the file system but to also maintain *ownership* by the file system owner, both users must be in the same group. This is necessary so both users can share access to files (including files created using the Admin or other web-based utilities).

This section discusses how to create a file system owner and put that user in the web server's group. You can use an existing user account if you wish; we recommend that the user have a strong password for security reasons.

>[!NOTE]
>
>Skip to [Find the web server user group](#find-the-web-server-user-group) if you plan on using an existing user account.

### Create the file system owner and give the user a strong password

This section discusses how to create the file system owner. (file system owner is another term for the *command-line user*.)

To create a user on CentOS or Ubuntu, enter the following command as a user with `root` privileges:

```bash
adduser <username>
```

To give the user a password, enter the following command as a user with `root` privileges:

```bash
passwd <username>
```

Follow the prompts on your screen to create a password for the user.

>[!WARNING]
>
>If you don't have `root` privileges on your application server, you can use another local user account. Make sure that the user has a strong password and continue with [Put the file system owner in the web server group](#step-3-put-the-file-system-owner-in-the-web-servers-group).

For example, to create a user named `magento_user` and give the user a password, enter:

```bash
sudo adduser magento_user
```

```bash
sudo passwd magento_user
```

>[!WARNING]
>
>Because the point of creating this user is to provide added security, make sure you create a [strong password](https://en.wikipedia.org/wiki/Password_strength).

### Find the web server user group

To find the web server user's group:

* CentOS:

   ```bash
   grep -E -i '^user|^group' /etc/httpd/conf/httpd.conf
   ```

   or

   ```bash
   grep -Ei '^user|^group' /etc/httpd/conf/httpd.conf
   ```

Typically, the user and group name are both `apache`.

* Ubuntu: `ps aux | grep apache` to find the Apache user, then `groups <apache user>` to find the group.

Typically, the username and the group name are both `www-data`.

### Put the file system owner in the web server group

To put the file system owner in the web server's primary group (assuming the typical Apache group name for CentOS and Ubuntu), enter the following command as a user with `root` privileges:

* CentOS: `usermod -a -G apache <username>`
* Ubuntu: `usermod -a -G www-data <username>`

>[!NOTE]
>
>The `-a -G` options are important because they add `apache` or `www-data` as a *secondary* group to the user account, which preserves the user's *primary* group. Adding a secondary group to a user account helps [restrict file ownership and permissions](#set-ownership-and-permissions-for-two-users) to ensure members of a shared group only have access to certain files.

For example, to add the user `magento_user` to the `apache` primary group on CentOS:

```bash
sudo usermod -a -G apache magento_user
```

To confirm that your user is a member of the web server group, enter the following command:

```bash
groups magento_user
```

The following sample result shows the user's primary (`magento`) and secondary (`apache`) groups.

```bash
magento_user : magento_user apache
```

>[!NOTE]
>
>Typically, the username and primary group name are the same.

To complete the task, restart the web server:

* Ubuntu: `service apache2 restart`
* CentOS: `service httpd restart`

### Get the software

If you have not already done so, get the software in one of the following ways:

* [Composer metapackage](../../composer.md)
* [Clone the repository (contributing developers only)](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository)

### Set ownership and permissions for the shared group

To set ownership and permissions before you install the application:

1. Log in to your application server as, or switch to, the file system owner.
1. Enter the following commands in the order shown:

   ```bash
   cd <app_root>
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```bash
   find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

   ```bash
   chown -R :<web server group> .
   ```

   ```bash
   chmod u+x bin/magento
   ```

To optionally enter all commands on one line, enter the following assuming the application is installed in `/var/www/html/magento2` and the web server group name is `apache`:

```bash
cd /var/www/html/magento2 && find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} + && find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} + && chown -R :apache . && chmod u+x bin/magento
```

In the event file system permissions are set improperly and can't be changed by the file system owner, you can enter the command as a user with `root` privileges:

```bash
cd /var/www/html/magento2 && sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} + && sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} + && sudo chown -R :apache . && sudo chmod u+x bin/magento
```

## Switch to the file system owner

After you've performed the other tasks in this topic, enter one of the following commands to switch to that user:

* Ubuntu: `su <username>`
* CentOS: `su - <username>`

For example,

```bash
su magento_user
```
