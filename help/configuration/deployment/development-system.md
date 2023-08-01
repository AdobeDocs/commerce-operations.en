---
title: Development system setup
description: Learn how to set up a development system for the Commerce application.
exl-id: 242e9a38-2eb2-4090-8f59-3fd588f7ad3a
---
# Development system setup

You can have any number of development systems, provided the following is true of all of them:

- They all run Commerce 2.2 or later
- All Commerce code is under source control in the same repository as the build and production systems
- Each development system should use either [default mode](../bootstrap/application-modes.md#default-mode) or [developer mode](../bootstrap/application-modes.md#developer-mode)
- It has file system ownership and permissions set as discussed in [Prerequisite for your development, build, and production systems](../deployment/technical-details.md).
- Make sure all of the following are _excluded_ from source control:

  - `vendor` directory (and subdirectories)
  - `generated` directory (and subdirectories)
  - `pub/static` directory (and subdirectories)
  - `app/etc/env.php` file

- Make sure `app/etc/config.php` is _included_ in source control

If you use Git, the `.gitignore` file provides most of the preceding. See the [`.gitignore` reference](../reference/config-reference-gitignore.md).
