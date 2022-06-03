---
title: Prerequisites for deployment
description:
---

# Prerequisites for development, build, and production systems

File permissions and ownership must be consistent across development, build, and production systems. To make this work, you must either:

- All of the following:

  - Set up the same [file system owner](https://glossary.magento.com/magento-file-system-owner) username on all systems
  - Make sure the web server runs as the same user on all systems
  - Make sure that the file system owner is in the web server group on all systems

- Change Magento file system permissions and ownership on each system as necessary using the following guidelines:

  - Development and build: [Set pre-installation ownership and permissions (two users)](https://devdocs.magento.com/guides/v2.4/install-gde/prereq/file-system-perms.html#perms-private)
  - Production: [Magento ownership and permissions in development and production]({{ page.baseurl }}/config-guide/prod/prod_file-sys-perms.html)

   >[!INFO]
   >
   >If you choose this approach, you must set file system permissions and ownership every time you pull code from your build system (if the file system owner or web server user are different on your build system).
