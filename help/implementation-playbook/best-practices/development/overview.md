---
title: Implementation development phase
description: Learn about implementation best practices for the development phase of Adobe Commerce projects.
exl-id: 499c16df-0e4d-4950-8169-96356bdff1a7
feature: Best Practices
role: Developer
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

| Best practice                                                   | Description                                                                                                                          |
|-----------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| [Code review](code-review.md)                                   | Recommended validation process to ensure that implemented functionality meets requirements                                           |
| [Composer vs Git](code-management.md)                           | Determine how to distribute custom code with consideration for release management, code complexity, and dependency management        |
| [Branching strategy](git-branching.md)                          | Manage source code in Git repositories                                                                                               |
| [GRA examples](../../architecture/global-reference/examples.md) | Understand common methods of organizing a [global reference architecture](../../architecture/global-reference/overview.md) code base |

## Database

| Best practice                                                  | Description                                                                     |
|----------------------------------------------------------------|---------------------------------------------------------------------------------|
| [Table modification](modifying-core-and-third-party-tables.md) | Determine how and when to modify Adobe Commerce and third-party database tables |

## File optimization

| Best practice                                       | Description                                                                                               |
|-----------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| [Catalog image resizing](catalog-image-resizing.md) | Provides guidance on image resizing before a store goes into production to ensure optimal performance     |
| [CSS and JS](optimize-css-js-files.md)              | Merge and minify cascading style sheet (CSS) and JavaScript (JS) files from the Admin or the command line |
| [Images](image-optimization.md)                     | Optimize images and use Fastly to optimize response time                                                  |

## Frontend development

| Best practice                                                                                                  | Description                                                                                                                              |
|----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| [Theme developmemt](https://developer.adobe.com/commerce/frontend-core/guide/best-practices/){target="_blank"} | Describes development patterns to help ensure compatibility between your theme, future versions of Adobe Commerce, and custom extensions |

## PHP development

| Best practice                                                                           | Description                                                                                                                                        |
|-----------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| [Exception handling](exception-handling.md)                                             | Describes recommended methods for logging exceptions                                                                                               |
| [Extensions](https://developer.adobe.com/commerce/php/best-practices/){target="_blank"} | Describes development patterns to help ensure compatibility between your extension, future versions of Adobe Commerce, and other custom extensions |
| [Private content blocks](private-content-block-configuration.md)                        | Configure private content blocks to optimize storefront performance                                                                                |
| [Modify core and third-party PHP code](modifying-core-and-third-party-code.md)          | Modify the functionality, result, or input of any code that you did not author or do not directly control                                          |

## Platform and services

| Best practice                                                                                                                                          | Description                                                                                                 |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| [Builds and deployment](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/deploy/best-practices.html){target="_blank"} | Describes best practices for the build and deploy stages of Adobe Commerce on cloud infrastructure projects |
| Debugging                                                                                                                                              | Systematically and effectively debug the Adobe Commerce framework                                           |
| [Static content deployment](static-content-deployment.md)                                                                                              | Avoid issues with static content not appearing on your storefront                                           |
| [Troubleshooting](troubleshooting.md)                                                                                                                  | Troubleshoot common Adobe Commerce implementation issues                                                    |
