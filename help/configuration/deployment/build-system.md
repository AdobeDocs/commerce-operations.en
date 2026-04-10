---
title: Build System Setup
description: Learn how to deploy Commerce into a build system.
feature: Configuration, Build, Deploy
exl-id: f6daf5c6-6d12-46b0-b775-76791bacea53
---
# Build system setup

You can have one build system that meets the following requirements:

- All Commerce code is under source control in the same repository as the development and production systems
- Make sure all of the following are _included_ in source control:

  -  `app/etc/config.php`
  -  `generated` directory (and subdirectories)
  -  `pub/media` directory
  -  `pub/media/wysiwyg` directory (and subdirectories)
  -  `pub/static` directory (and subdirectories)

-  Must have a compatible PHP version installed
-  Must have Composer installed
-  It has file system ownership and permissions set as discussed in [Prerequisite for your development, build, and production systems](../deployment/technical-details.md).
-  The build system does not need Commerce to be installed, but the code must be available to it.

>[!WARNING]
>
>The database connection not required if it is already contained in `config.php`; see [Export the configuration](../cli/export-configuration.md). Otherwise, the database connection is required.

>[!INFO]
>
>The build machine can be on its own host or on the same host as an installed Commerce system.

## Configure the build machine

The following sections discuss how to configure the build machine.

### Install Composer

First, check if Composer is already installed:

In a command prompt, enter any of the following commands:

-  `composer --help`
-  `composer list --help`

If command help displays, Composer is already installed.

If an error displays, use the following steps to install Composer.

To install Composer:

1. Change to or create an empty directory on your Commerce server.

1. Enter the following commands:

   ```bash
   curl -sS https://getcomposer.org/installer | php
   ```

   ```bash
   mv composer.phar /usr/local/bin/composer
   ```

For additional installation options, see the [Composer installation documentation](https://getcomposer.org/download/).

### Install PHP

Install PHP on [CentOS](https://wiki.centos.org/HowTos/php7) or [Ubuntu](https://help.ubuntu.com/lts/serverguide/php.html).

### Set up the build system

To set up the build system:

1. Log in to the build system as, or switch to, the file system owner.
1. Retrieve the Commerce code from source control.

   If you use Git, use the following command:

   ```bash
   git clone [-b <branch name>] <repository URL>
   ```

1. Change to the Commerce root directory and enter:

   ```bash
   composer install
   ```

1. Wait for dependencies to update.
1. Set ownership:

   ```bash
   chown -R <Commerce file system owner name>:<web server username> .
   ```

   For example,

   ```bash
   chown -R commerce-username:apache .
   ```

1. If you use Git, open `.gitignore` in a text editor.
1. Start each of the following lines with a `#` character to comment them out:

   ```conf
   # app/etc/config.php
   # pub/media/*
   # generated/*
   # pub/media/*.*
   # pub/media/wysiwyg/*
   # pub/static/*
   ```

1. Save your changes to `.gitignore` and exit the text editor.
1. If you use Git, use the following commands to commit the change:

   ```bash
   git add .gitignore && git commit -m "Modify .gitignore for build and production"
   ```

   See the [`.gitignore` reference](../reference/config-reference-gitignore.md) for more information.

1. The build system should use [default mode](../bootstrap/application-modes.md#default-mode) or [developer mode](../bootstrap/application-modes.md#developer-mode):

   ```bash
   bin/magento deploy:mode:set <mode>
   ```

   `<mode>` is required. It can be either `default` or `developer`.

