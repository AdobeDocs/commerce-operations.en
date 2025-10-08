---
title: Set the operation mode
description: Learn how to set Adobe Commerce operation modes between developer and production. Discover mode switching commands and security implications.
exl-id: 62d183fa-d4ff-441d-b8bd-64ef5ae10978
---
# Set the operation mode

{{file-system-owner}}

To improve security and ease-of-use, we added a command that switches [application modes](../bootstrap/application-modes.md) from developer to production and vice versa.

Production mode has better performance because static view files are populated in the `pub/static` directory and because of code compilation.

>[!INFO]
>
>In version 2.0.6 and later, Commerce does not explicitly set file or directory permissions when you switch between default, develop, and production modes. Unlike other modes, developer and production modes are set in the `env.php` file. Adobe Commerce on cloud infrastructure supports production and maintenance modes only.
>
>See [Commerce ownership and permissions in development and production](../deployment/file-system-permissions.md).

When you change to developer or production mode, we clear the contents of following directories:

```
var/cache
generated/metadata
generated/code
var/view_preprocessed
pub/static
```

Exceptions:

- `.htaccess` files are not removed
- `pub/static` contains a file that specifies the version of static content; this file is not removed

>[!INFO]
>
>By default, Commerce uses the `var` directories to store the cache, logs, and compiled code. You can customize this directory but in this guide, it is assumed to be `var`.

## Display the current mode

The easiest way to do that is to run this command as the [file system owner](../../installation/prerequisites/file-system/overview.md). If you have shared hosting, this is the user your provider gives you to log in to the server. If you have a private server, it is typically a local user account on the Commerce server.

Command usage:

```bash
bin/magento deploy:mode:show
```

A message similar to the following displays:

```
Current application mode: {mode}. (Note: Environment variables may override this value.)
```

where:

- **`{mode}`** can be either `default`, `developer`, or `production`

## Change modes

Command usage:

```bash
bin/magento deploy:mode:set {mode} [-s|--skip-compilation]
```

where:

- **`{mode}`** is required; it can be either `developer` or `production`

- **`--skip-compilation`** is an optional parameter you can use to skip [code compilation](../cli/code-compiler.md) when you change to production mode.

Examples follow.

### Change to production mode

```bash
bin/magento deploy:mode:set production
```

Messages similar to the following display:

```
Enabled maintenance mode
Requested languages: en_US
=== frontend -> Magento/luma -> en_US ===
... more ...
Successful: 1884 files; errors: 0
---

=== frontend -> Magento/blank -> en_US ===
... more ...
Successful: 1828 files; errors: 0
---

=== adminhtml -> Magento/backend -> en_US ===
... more ...
---

=== Minify templates ===
... more ...
Successful: 897 files modified
---

New version of deployed files: 1440461332
Static content deployment complete
Gathering css/styles-m.less sources.
Successfully processed LESS and/or Sass files
CSS deployment complete
Generated classes:
      Magento\Sales\Api\Data\CreditmemoCommentInterfacePersistor
      Magento\Sales\Api\Data\CreditmemoCommentInterfaceFactory
      Magento\Sales\Api\Data\CreditmemoCommentSearchResultInterfaceFactory
      Magento\Sales\Api\Data\CreditmemoComment\Repository
      Magento\Sales\Api\Data\CreditmemoItemInterfacePersistor
      ... more ...
Compilation complete
Disabled maintenance mode
Enabled production mode.
```

### Change to developer mode

When you change from production to developer mode, you should clear generated classes and Object Manager entities like proxies to prevent unexpected errors. After doing so, you can change modes. Use the following steps:

1. If you are changing from production mode to developer mode, delete the contents of the `generated/code` and `generated/metadata` directories:

   ```bash
   rm -rf <magento_root>/generated/metadata/* <magento_root>/generated/code/*
   ```

1. Set the mode:

   ```bash
   bin/magento deploy:mode:set developer
   ```

   The following message displays:

   ```
   Enabled developer mode.
   ```

### Change to default mode

```bash
bin/magento deploy:mode:set default
```

The following message displays:

```
Enabled default mode.
```

### Run CLI commands from anywhere

[Run CLI commands from anywhere](../cli/config-cli.md#config-install-cli-first).

If you have not added `<Commerce-install-directory>/bin` to your system `PATH`, then you can expect an error when running the command by itself.
