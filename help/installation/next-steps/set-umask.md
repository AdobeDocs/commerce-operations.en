---
title: Set a umask (optional)
description: Improve the security posture of your Adobe Commerce on-premises installation by restricting file system permissions.
feature: Install, Configuration
exl-id: 18d65d75-7be0-4488-bf35-4b058e4ae5ea
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 6388cf7b-8a81-5248-a1e4-7bb57bbe250f
    internal-label: Install
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Set a umask (optional)

The web server group must have write permissions to certain directories in the file system; however, you might want tighter security, especially in production. We provide the flexibility for you to further restrict those permissions using a [umask](https://www.cyberciti.biz/tips/understanding-linux-unix-umask-value-usage.html).

Our solution is to enable you to optionally create a file named `magento_umask` in your application root directory that restricts permissions for the web server group and everyone else.

>[!NOTE]
>
>We recommend changing the umask on a one-user or shared hosting system only. If you have a private application server, the group must have write access to the file system; the umask removes write access from the group.

The default umask (with no `magento_umask` specified) is `002`, which means:

*  775 for directories, which means full control by the user, full control by the group, and enables everyone to traverse the directory. These permissions are typically required by shared hosting providers.

*  664 for files, which means writable by the user, writable by the group, and read-only for everyone else

A common suggestion is to use a value of `022` in the `magento_umask` file, which means:

*  755 for directories: full control for the user, and everyone else can traverse directories.
*  644 for files: read-write permissions for the user, and read-only for everyone else.

To set `magento_umask`:

1. In a command-line terminal, log in to your application server as a [file system owner](../prerequisites/file-system/overview.md).
1. Navigate to the application installation directory:

   ```shell
   cd <Application install directory>
   ```

1. Use the following command to create a file named `magento_umask` and write the `umask` value to it.

   ```shell
   echo <desired umask number> > magento_umask
   ```

   You should now have a file named `magento_umask` in the `<Magento install dir>` with the only content being the `umask` number.

1. Log out and log back in as the [file system owner](../prerequisites/file-system/overview.md) to apply the changes.
