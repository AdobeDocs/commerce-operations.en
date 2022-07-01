---
title: Command-line tool
description: Use the Commerce command-line tool to run installation and configuration tasks.
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

This topic discusses configuring the Adobe Commerce and Magento Open Source software using the CLI. For information about installing Commerce, see [Installation overview](https://devdocs.magento.com/guides/2.4/install-gde/bk-install-guide.html) in the _Installation guide_.

## Prerequisites

Before you begin using the CLI, make sure that:

1. Your system meets the requirements discussed in [System Requirements](https://devdocs.magento.com/guides/v2.4/install-gde/system-requirements.html) in the _Installation guide_.
1. You completed all prerequisite tasks discussed in [Prerequisites](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/prereq-overview.html) in the _Installation guide_.
1. After you log in to the Magento server, switch to a user that has permissions to write to the Magento file system. See [switch to the file system owner](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-sys-perms-over.html) in the _Installation guide_.

## Running commands

For the bash shell, use the following syntax to switch to the file system owner and enter the command at the same time:

```bash
su <file system owner> -s /bin/bash -c <command>
```

If the file system owner does not allow logins, you can use the following:

```bash
sudo -u <file system owner> <command>
```

**To run Magento CLI commands from any directory**:

Add `<magento_root>/bin` to your system `PATH`.

Sample bash shell for CentOS:

```bash
export PATH=$PATH:/var/www/html/magento2/bin
```

Optionally, you can run the following:

- `cd <magento_root>/bin` and run them as `./magento <command name>`
- `<magento_root>/bin/magento <command name>`
- `<magento_root>` is a subdirectory of your web server docroot
