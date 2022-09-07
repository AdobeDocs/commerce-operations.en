---
title: File ownership and permissions
description:
---

# File ownership and permissions

It is important to secure your Adobe Commerce or Magento Open Source installation in a development environment to help prevent issues related to unauthorized people or processes accessing—and potentially harming—your system. Use the following file system ownership and permissions guidelines to protect your installation.

## File system owner

The file system owner is a user that owns and holds write permissions to files in the file system.

There are two types of file system owners:

-  **Shared hosting with a single user**

   Shared hosting providers enable you to log in to the application server as one user. As a single user, you can log in, transfer files using FTP, and run the web server. You have the option of setting a [`umask`](#restrict-access-with-a-umask) to further restrict access, particularly in a production environment.

-  **Private hosting with two users**

   Private hosting is useful if you manage an application server. Each user has a specific responsibility:

    -  The _web server user_ runs the Admin and storefront.

    -  The _command-line user_ runs cron jobs and command-line utilities.

   Both users require the same level of permissions to the file system, so it is best to use a [shared group](configure-permissions.md#set-ownership-and-permissions-for-two-users) and set a [`umask`](#restrict-access-with-a-umask).

### Restrict access with a umask {#restrict}

To tighten security, particularly in a production environment on a shared hosting system, you can use `umask` to restrict access. A `umask`—also referred to as a _file system creation mask_—is a set of bits that controls how the file permissions are set for newly created files.

>[!WARNING]
>
>File system security is complex and extremely important. We strongly recommend that you consult an experienced system administrator or network administrator before you decide the level of permissions to set. We provide a mechanism for you to use, but creating a permissions strategy is your responsibility.

Adobe Commerce and Magento Open Source use a three-bit, default mask: `002`. Subtract the default mask from the UNIX defaults of 666 for files and 777 for directories.

For example:

-  **775 for directories**—Full control by the user, full control by the group, and enables everyone to traverse the directory. These permissions are typically required by shared hosting providers.

-  **664 for files**—Writable by the user, writable by the group, and read-only for everyone else.

For more information about creating a `magento_umask` file, see [Optionally set a umask](../../next-steps/set-umask.md).

## Permissions, ownership, and application modes

We recommend different permissions and ownership when you use the different Adobe Commerce and Magento Open Source application modes:

- Default
- Developer
- Production

See [About modes](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/setup/application-modes.html) in the _Configuration guide_.

We further discuss permissions recommendations in [File systems access permissions](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/deployment/file-system-permissions.html) in the _Configuration guide_.

>[!TIP]
>
>Before you install Adobe Commerce or Magento Open Source, review [Configure file ownership and permissions](configure-permissions.md).

[shared group]
