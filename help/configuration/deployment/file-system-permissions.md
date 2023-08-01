---
title: File systems access permissions
description: See how to set up the owner or owners of the Commerce application file system for a development and production system.
feature: Configuration, Roles/Permissions
exl-id: 95b27db9-5247-4f58-a9af-1590897d73db
---
# File systems access permissions

This section discusses how to set up the owner or owners of the Commerce file system for a development and production system. Before you continue, review the concepts discussed in [Overview of file system ownership and permissions](../../installation/prerequisites/file-system/overview.md).

This topic focuses on Commerce development and production systems. If you are installing Commerce, see [Set pre-installation ownership and permissions](../../installation/prerequisites/file-system/configure-permissions.md).

The sections that follow discuss requirements for one or two file system owners. That means:

- **One user**—Typically necessary on shared hosting providers, which allow you to access only one user on the server This user can log in, transfer files using FTP, and this user also runs the web server.

- **Two users**—We recommend two users if you run your own Commerce server: one to transfer files and run command-line utilities, and a separate user for the web server software. When possible, this is preferable because it is more secure.

  Instead, you have separate users:

  - The web server user, which runs the Admin and storefront.

  - A _command-line user_, which is a local user account you can use to log in to the server. This user runs Commerce cron jobs and command-line utilities.

## Production file system ownership for shared hosting (one user)

To use the one-owner setup, you must log in to your Commerce server as the same user that runs the web server. This is typical for shared hosting.

Because having one file system owner is less secure, we recommend you deploy Commerce in production on a private server instead of on shared hosting, if possible.

### Set up one owner for default or developer mode

In default or developer mode, the following directories must be writable by the user:

- `vendor`
- `app/etc`
- `pub/static`
- `var`
- Any other static resources
- `generated/code`
- `generated/metadata`
- `var/view_preprocessed`

You can set these permissions using either the command line or a file manager application provided by your shared hosting provider.

### Set up one owner for production mode

When you are ready to deploy your site to production, you should remove write access from files in the following directories for improved security:

- `vendor`
- `app/code`
- `app/etc`
- `pub/static`
- Any other static resources
- `generated/code`
- `generated/metadata`
- `var/view_preprocessed`

To update components, install new components, or to upgrade the Commerce software, all of the preceding directories must be read-write.

#### Make code files and directories read-only

To remove write permissions to files and directories from the web server user's group:

1. Log in to your Commerce server.

1. Change to your Commerce installation directory.

1. Change to production mode.

   ```bash
   bin/magento deploy:mode:set production
   ```

1. Remove write permissions to the following directories.

   ```bash
   find app/code var/view_preprocessed vendor pub/static app/etc generated/code generated/metadata \( -type f -or -type d \) -exec chmod u-w {} + && chmod o-rwx app/etc/env.php
   ```

1. Make the command-line tool executable.

   ```bash
   chmod u+x bin/magento
   ```

#### Make code files and directories writable

To make files and directories writable so you can update components and upgrade the Commerce software:

1. Log in to your Commerce server.
1. Change to your Commerce installation directory.
1. Enter the following commands:

   ```bash
   chmod -R u+w .
   ```

### Optionally set `magento_umask`

See [Optionally set a umask](../../installation/next-steps/set-umask.md) in the _Installation guide_.

## Production file system ownership for private hosting (two users)

If you use your own server (including a hosting provider's private server setup), there are two users:

- The **web server user**, which runs the Admin and storefront.

  Linux systems typically do not provide a shell for this user; you cannot log in to the Commerce server as, or switch to, the web server user.

- The **command-line user**, which you log in to your Commerce server as or switch to.

  Commerce uses this user to run CLI commands and cron.

  >[!INFO]
  >
  >The command-line user is also referred to as the _file system owner_.

Because these users require access to the same files, we recommend you create a [shared group](../../installation/prerequisites/file-system/configure-permissions.md#about-the-shared-group) to which they both belong. The following procedures assume you have already done this.

See one of the following sections:

- Two file system owners in developer or default mode
- Two file system owners in production mode

### Set up two owners for default or developer mode

Files in the following directories must be writable by both users in developer and default mode:

- `var`
- `generated`
- `pub/static`
- `pub/media`
- `app/etc`

Set the [`setgid`](https://linuxg.net/how-to-set-the-setuid-and-setgid-bit-for-files-in-linux-and-unix/) bit on directories so permissions always inherit from the parent directory.

>[!INFO]
>
>`setgid` applies only to directories, _not_ to files.

In addition, the directories should be writable by the web server group. Because content might exist in these directories, add the permissions recursively.

#### Set permissions and `setgid`

To set `setgid` and permissions for developer mode:

1. Log in to your Commerce server as, or switch to, the file system owner.
1. Enter the following commands in the order shown:

   ```bash
   cd <magento_root>
   ```

   ```bash
   find var generated pub/static pub/media app/etc -type f -exec chmod g+w {} +
   ```

   ```bash
   find var generated pub/static pub/media app/etc -type d -exec chmod g+ws {} +
   ```

### Two file system owners in production mode

When you are ready to deploy your site to production, you should remove write access from files in the following directories for improved security:

- `vendor`
- `app/code`
- `app/etc`
- `lib`
- `pub/static`
- Any other static resources
- `generated/code`
- `generated/metadata`
- `var/view_preprocessed`

#### Make code files and directories read-only

To remove writable permissions to files and directories from the web server user's group:

1. Log in to your Commerce server.
1. Change to your Commerce installation directory.
1. As the file system owner, enter the following command to change to production mode:

   ```bash
   bin/magento deploy:mode:set production
   ```

1. Enter the following command as a user with `root` privileges:

   ```bash
   find app/code lib pub/static app/etc generated/code generated/metadata var/view_preprocessed \( -type d -or -type f \) -exec chmod g-w {} + && chmod o-rwx app/etc/env.php
   ```

#### Make code files and directories writable

To make files and directories writable so you can update components and upgrade the Commerce software:

1. Log in to your Commerce server.
1. Change to your Commerce installation directory.
1. Enter the following command:

   ```bash
   find app/code lib var generated vendor pub/static pub/media app/etc \( -type d -or -type f \) -exec chmod g+w {} + && chmod o+rwx app/etc/env.php
   ```
