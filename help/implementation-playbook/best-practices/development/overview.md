---
title: Implementation development phase
description: Learn about implementation best practices for the development phase of Adobe Commerce projects.
exl-id: 499c16df-0e4d-4950-8169-96356bdff1a7
feature: Best Practices
---

# Development phase

The development phase includes the following activities:

- Local and staging environment setup
- Sprint planning
- Ticket execution
- Troubleshooting
- Code review, merge, and test
- Sprint review
- Customer sign-off

>[!TIP]
>
>See [general best practices](general.md) for high-level recommendations about overall management of the development process.

The following sections include best practices information for the development phase.

## Code management

| Best practice                                    | Description                                                                                                                          |
|--------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| [Code review](code-review.md)                    | Describes a process for validating that implemented functionality meets requirements                                                 |
| [Composer vs Git](code-management.md)            | Helps you decide how to distribute custom code with consideration for release management, code complexity, and dependency management |
| [GRA examples](global-reference-architecture.md) | Provides common methods of organizing a [global reference architecture](../../architecture/global-reference.md) code base            |

## Composer

| Best practice                                   | Description                                                                                 |
|-------------------------------------------------|---------------------------------------------------------------------------------------------|
| Development                                     | Describes how to develop Composer modules in-place in the `vendor/` directory               |
| [Patching](../maintenance/patching-at-scale.md) | Describes how to implement a centralized patching strategy                                  |
| Project structure                               | Describes how to set up and maintain the separate packages option described in GRA examples |
| Tips and tricks                                 | Describes common tasks and guidance for quickly resolving issues                            |

## Database

| Best practice                                                  | Description                                                                     |
|----------------------------------------------------------------|---------------------------------------------------------------------------------|
| [Table modification](modifying-core-and-third-party-tables.md) | Describes how and when to modify Adobe Commerce and third-party database tables |

## File optimization

| Best practice                          | Description                                                                                                                    |
|----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
| Catalog image resizing                 | Provides guidance on image resizing before a store goes into production to ensure optimal performance                          |
| [CSS and JS](optimize-css-js-files.md) | Describes how to merge and minify cascading stylesheet (CSS) and JavaScript (JS) files with the Admin or from the command line |
| [Images](image-optimization.md)        | Describes how to optimize images and use Fastly to optimize response time                                                      |

## Frontend development

| Best practice                                                                                                  | Description                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| [Theme developmemt](https://developer.adobe.com/commerce/frontend-core/guide/best-practices/){target="_blank"} | Describes development patterns to help ensure compatibility between your theme, future versions of Adobe Commerce, and custom extensions |

## Git

| Best practice      | Description                                                           |
|--------------------|-----------------------------------------------------------------------|
| Branching strategy | Describes best practices for managing source code in git repositories |

## PHP development

| Best practice                                                                           | Description                                                                                                                                       |
|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| Exception handling                                                                      | Describes recommended methods for logging exceptions                                                                                              |
| [Extensions](https://developer.adobe.com/commerce/php/best-practices/){target="_blank"} | Describes development patterns to help ensure compatibility between your extension, future version of Adobe Commerce, and other custom extensions |
| [Private content blocks](private-content-block-configuration.md)                        | Describes how to configure private content blocks to optimize storefront performance                                                              |

## Platform and services

| Best practice                                                                                                                                          | Description                                                                                                 |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| [Builds and deployment](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/deploy/best-practices.html){target="_blank"} | Describes best practices for the build and deploy stages of Adobe Commerce on cloud infrastructure projects |
| Debugging                                                                                                                                              | Describes how to systematically and effectively debug the Adobe Commerce framework                          |
| [Static content deployment](static-content-deployment.md)                                                                                              | Describes how to avoid issues with static content not appearing on your storefront                          |
| [Troubleshooting](troubleshooting.md)                                                                                                                  | Describes how to troubleshoot common Adobe Commerce implementation issues                                   |
