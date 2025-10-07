---
title: Command-line tool
description: Learn how to use the Adobe Commerce command-line tool for installation and configuration tasks. Discover CLI commands and administrative functions.
exl-id: 44470ce1-a5a2-4c12-962e-e42d11a6bd15
---
# Command-line tool

Commerce has one command-line interface (CLI)—`<magento_root>/bin/magento`—that runs installation and configuration tasks, including:

- Installing Commerce (and related tasks such as update the database schema, create a deployment configuration)
- Clearing the cache
- Managing indexes, including reindexing
- Creating translation dictionaries and translation packages
- Generating non-existent classes such as factories and interceptors for plug-ins, generating the dependency injection configuration for the object manager
- Deploying static view files
- Creating CSS from Less

Additional benefits include:

- A single command (`<magento_root>/bin/magento list`) lists all available installation and configuration commands.
- Consistent user interface based on Symfony.
- The CLI is extensible so third-party developers can "plug in" to it. This has the additional benefit of eliminating users' learning curve.
- Commands for disabled modules do not display.

This topic discusses configuring the Adobe Commerce software using the CLI. For information about installing Commerce, see [Installation flow](../../installation/overview.md) in the _Installation guide_.

## Prerequisites

Before you begin using the CLI, make sure that:

1. Your system meets the requirements discussed in [System Requirements](../../installation/system-requirements.md) in the _Installation guide_.
1. You completed all prerequisite tasks discussed in [Prerequisites](../../installation/prerequisites/overview.md) in the _Installation guide_.
1. After you log in to the Commerce server, switch to a user that has permissions to write to the Commerce file system. See [switch to the file system owner](../../installation/prerequisites/file-system/overview.md) in the _Installation guide_.

## Running commands

For the bash shell, use the following syntax to switch to the file system owner and enter the command at the same time:

```bash
su <file system owner> -s /bin/bash -c <command>
```

If the file system owner does not allow logins, you can use the following:

```bash
sudo -u <file system owner> <command>
```

**To run CLI commands from any directory**:

Add `<magento_root>/bin` to your system `PATH`.

Sample bash shell for CentOS:

```bash
export PATH=$PATH:/var/www/html/magento2/bin
```

Optionally, you can run the following:

- `cd <magento_root>/bin` and run them as `./magento <command name>`
- `<magento_root>/bin/magento <command name>`
- `<magento_root>` is a subdirectory of your web server docroot
