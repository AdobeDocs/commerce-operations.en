---
title: Development system setup
description: Learn how to set up a development system for the Commerce application.
---

# Development system setup

You can have any number of development systems, provided the following is true of all of them:

- They all run Magento 2.2 or later
- All Magento code is under source control in the same repository as the build and production systems
- Each development system should use either [default mode](../bootstrap/application-modes.md#default-mode) or [developer mode](../bootstrap/application-modes.md#developer-mode)
- It has file system ownership and permissions set as discussed in [Prerequisite for your development, build, and production systems](../deployment/technical-details.md).
- Make sure all of the following are _excluded_ from source control:

  - `vendor` directory (and subdirectories)
  - `generated` directory (and subdirectories)
  - `pub/static` directory (and subdirectories)
  - `app/etc/env.php` file

- Make sure `app/etc/config.php` is _included_ in source control

If you use Git, the `.gitignore` file provides most of the preceding. See the [`.gitignore` reference](../reference/config-reference-gitignore.md).
