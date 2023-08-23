---
title: Code review best practices
description: Learn about code review best practices for the development phase of Adobe Commerce projects.
feature: Best Practices
---

# Code review best practices for Adobe Commerce

The main goal of code review is to validate that implemented functionality meets the requirements in an optimal way from performance, architectural, and security perspectives.

In addition, code review is intended to make sure code meets Adobe Commerce development best practices, is easy to understand and maintain, and follows coding standards. Most coding standards should be checked automatically by appropriate tools.

At a high level, the code review process should consist of the following steps:

1. Checkout feature branch on local development environment.
1. If it's been awhile since code was submitted for review, merge the latest changes from the target branch (usually QA branch), and push updates to the remote feature branch (if any).
1. Do a high-level review to validate that the code implements all requirements. If there are major discrepancies, contact the developer for clarification.
1. Running the code is optional, but if you have doubts that the code works as expected or if it facilitates the efficiency of the process, test that the implemented functionality works as expected for main usage scenarios. If there are major issues, stop the review process, and reopen the ticket with appropriate comments.
1. Do a thorough review to validate that the code implements all requirements. If there are any issues, add appropriate comments to the pull request and reopen the ticket.
1. If everything looks good, merge the pull request (or pass it to next code review level if one has been established).

Code review is also a primary tool for communication and knowledge transfer within a team. Even if a pull request doesn't contain major issues and implements the required business logic, you can use it as an opportunity to suggest more improvements after it's been merged.

On average, code review shouldn't take more than 10 to 20% of development effort. That's assuming that the development team consists of senior engineers that work well together.

If code review takes longer, it can affect project budget and timeline. To address the issue, you'll first need to identify the root cause. In most cases, it's because either requirements are poorly translated into development tickets (due to communication issues, poor user stories) or it's a coaching issue. In the first case, the recommended mitigation is to make sure that tickets have enough information for team members to efficiently deliver the requirements. In the second case, you may need to adjust the team structure to include more senior engineers or get approval outside mentoring and coaching.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## What to look for in code review

### Style and smell

These can be tested automatically by running the PhpStorm inspection (see below).

Make sure to configure [PHPMD and PHPCS](https://developer.adobe.com/commerce/php/best-practices/phpstorm/code-inspection/) and to run the [Coding Standard](https://github.com/magento/magento-coding-standard)] tool from the CLI (also below). There is some overlap, but both also have unique tests.

### Convention and structure

This is a manual review.

- Is class functionality limited to a single responsibility?
- Does the directory structure make sense?
- Is functionality performed at the right level (server, client, CSS, JS, database, framework, infrastructure).
- Is the versioning correct?
- Does the code look unconventional or like it is trying to get around a problem in the wrong way?
- Is the naming convention for the module name, package name, and repository name correctly applied?
- Verify that CSS is not applied too globally.

### Completeness

This is a manual review.

- Can the code be enabled/disabled by configuration and will all necessary code then really not be executed?
- Is all configuration present that is mentioned in the ticket? Check scope, data type, validation, translation, and default values.
- Is configuration always retrieved at the lowest possible level (store view level, website level, or global level)? Configuration retrieval must match the definition of scope in the `system.xml` file.
- Are all paths in the flow chart of the technical specification covered? Are all other technical specifications covered?
- Are ACLs defined for the new functionality?
- Are PhpDocs clear? Are commit messages clear?
- Is any code commented out or do you see debug code?

### Performance

This is a manual review, which can be aided by code execution when in doubt.

- Are queries executed in a loop? This loop can be outside of the edited files.
- Can you spot any `cachable="false"` attributes? Are they applied correctly?

### Security

This is a manual review, which can be aided by text search. Part of the security check is taken care of by automated tests.

- Are exceptions logged when needed? Are the right types of exceptions used?
- Can `around` plugins be avoided?
- Do plugins return the correct types of data?
- Can you find any raw SQL queries, that should be built using the database abstraction layer?
- Is any new type of data exposed to any type of user, admin, or frontend? Is that exposure a security risk?
- Is user-generated data validated? Everything that comes from the browser is considered user generated, including cookie values and server headers.

### Privacy and GDPR

This is a manual review.

- Does the code handle customer data or emails? Pay special attention.
- If this code can be executed in a loop, can it leak customer data from one loop cycle to another?
- Indicators of a risk are imports, cron jobs, transactional emails, and batch queue handlers.
- Ensure the isolation of user data in loops. Advise using factories or repositories to create new models in the loop cycle. These are not accessible outside of the loop.

### Mentoring

This is a manual review.

- Look for places to share knowledge with the goal of educating the team.
- If your comment is purely educational, but not critical to meeting the standards, indicate that it's not mandatory for the author to resolve it.
- If you see something nice, tell the developer, especially when they addressed one of your comments in a great way. Code reviews often just focus on mistakes, but they should offer encouragement and appreciation for good practices as well. It's sometimes even more valuable, in terms of mentoring, to tell a developer what they did right than to tell them what they did wrong.

## Automation

The following parts of a code review can be performed by using automation, which means that developers can and should test for this themselves too:

- DI compilation—Run the following CLI commands to see if the code can be compiled without any issues.

  ```bash
  bin/magento module:disable -n -q --all || exit;
  bin/magento module:enable -n -q --all || exit;
  bin/magento cache:enable -n -q || exit;
  bin/magento cache:flush -n -q || exit;
  rm -rf generated/*
  rm -rf var/view_preprocessed/*
  rm -rf pub/static/*
  rm -rf var/cache/*
  bin/magento deploy:mode:set --skip-compilation production || exit;
  bin/magento setup:di:compile -vv || exit;
  bin/magento setup:static-content:deploy en_US || exit;
  bin/magento deploy:mode:set developer || exit;
  ```

- Database schema `whitelist.json`—Run the following CLI command and validate that the `db_schema_whitelist.json` file is not added or altered.

  ```bash
  bin/magento setup:db-declaration:generate-whitelist --module-name[=MODULE-NAME]
  ```

- Composer validate—Validate the `composer.json` file by running the following CLI command in the directory that contains the `composer.json` file.

  ```bash
  composer validate
  ```

- Coding standard—Install and run the Coding Standard tool and run it against your module. The following file shows how to enable it to run anywhere by typing `mcs ./app/code/Vendor/Module/`.

  ```bash
  #!/usr/bin/env bash
  $HOME/web/magento/magento-coding-standard/vendor/bin/phpcs --standard=Magento2 "$@"
  ```

- Phpstan

  ```bash
  ./vendor/bin/phpstan analyze app/code/Vendor/Module
  ```

- PhpStorm inspection

- PhpStorm PHP copy/paste detector
