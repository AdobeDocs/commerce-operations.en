---
title: Prerequisites for deployment
description: See a list of prerequisites for deploying Commerce into a development, build, or production system.
exl-id: 9ea0eeff-e0f8-4532-887c-5d7f07d89ddd
---
# Prerequisites for development, build, and production systems

File permissions and ownership must be consistent across development, build, and production systems. To make this work, you must either:

- All of the following:

  - Set up the same file system owner username on all systems
  - Make sure the web server runs as the same user on all systems
  - Make sure that the file system owner is in the web server group on all systems

- Change Commerce file system permissions and ownership on each system as necessary using the following guidelines:

  - Development and build: [Set pre-installation ownership and permissions (two users)](file-system-permissions.md#set-up-two-owners-for-default-or-developer-mode)
  - Production: [Commerce ownership and permissions in development and production](file-system-permissions.md)

>[!INFO]
>
>If you choose this approach, you must set file system permissions and ownership every time you pull code from your build system (if the file system owner or web server user are different on your build system).
