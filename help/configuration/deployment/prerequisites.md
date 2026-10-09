---
title: Prerequisites for deployment
description: See a list of prerequisites for deploying Commerce into a development, build, or production system.
feature: Configuration, Deploy
exl-id: 9ea0eeff-e0f8-4532-887c-5d7f07d89ddd
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: bcd8874c-7b93-5596-bdaa-22660e84df14
    internal-label: Deploy
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
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
