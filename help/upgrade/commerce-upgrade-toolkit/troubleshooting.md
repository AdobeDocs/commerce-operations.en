---
title: Troubleshoot the Commerce Upgrade Toolkit
description: Resolve setup problems, blocked execution gates, validation failures, and extension compatibility issues when using the Commerce Upgrade Toolkit.
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---

# Troubleshooting

Use this page to resolve problems during toolkit setup, execution gates, validation, and post-hop checks.

## Setup checks

If setup fails, verify the following:

- Check the Adobe I/O CLI installation with `aio --version`.
- Check Node.js and npm with `node --version` and `npm --version`.
- Confirm that plugin installation completes without errors and check `aio plugins`.
- Run setup from the project directory containing `composer.json` and `bin/magento`.
- Follow the setup prompts and check the output for errors.
- Confirm that the selected AI agent is installed and authenticated.
- Ensure that the required services are running and the storefront is accessible.
- Match PHP and service versions to the current Adobe Commerce release.

If agent selection is needed, run:

```shell
aio ccua:agent:select
```

See [Installation and setup](installation.md) for the commands.

## Execution gates

Execution stops until you confirm the `app/etc/env.php` backup, the database backup, a clean Git working tree, and the encryption-key rotation check. Deferred items from earlier hops are reconciled before execution.

| Symptom | Resolution |
| --- | --- |
| The toolkit reports uncommitted changes. | Commit or stash your changes, then run `/upgrade-hop-execute <target-version>` again. |
| The toolkit asks for a backup you have not taken. | Back up `app/etc/env.php` outside the project directory and take a full database backup, then confirm. |
| The toolkit asks you to rotate the encryption key. | Rotate the key on the current version, verify your payment and vault integrations, then return to the toolkit. |

Infrastructure changes require your confirmation before dependent code chunks proceed. Environment-changing commands are presented for approval.

See [Usage](usage.md#review-the-execution-gates) for the execution checklist.

## Validation failures

After each chunk, the toolkit runs the applicable validation, such as DI compilation, PHPCS, and PHPUnit. If validation still fails after three attempts, the toolkit stops and asks for your decision.

- Review the reported errors and fix or defer the finding that caused them.
- If PHPCS or PHPUnit is not installed in the project, install it or document the gap.
- To continue after you fix an issue, resume from the failed chunk with `/upgrade-hop-execute <target-version> --chunk=<number>`.

## Extension compatibility problems

A third-party extension without a release compatible with the target version can stop validation. Common symptoms:

| Symptom | Cause | Resolution |
| --- | --- | --- |
| `setup:di:compile` fails with `Declaration of ... must be compatible with ...`. | The extension overrides a core class whose signature changed in the target version. | Update the extension. If no compatible release exists, replace the extension, remove it, or apply a reviewed patch outside `vendor/`. |
| `Class ... not found` for a library such as Laminas Mail. | The target version removed a library that the extension depends on. | Update the extension, or replace or remove it. |
| `setup:di:compile` still fails after you disable the module. | DI compilation scans every module in the codebase, including disabled ones. | Remove the extension from the codebase, or fix or update it. |
| Deprecation notices stop requests on a newer PHP version. | The Commerce error handler treats deprecations as errors, so extension code that is not compatible with that PHP version fails. | Use a PHP version that both the target Commerce version and your extensions support, or update the extensions. |
| Composer shows no newer extension versions. | The license or support period for the extension has expired. | Renew the license, then run `composer update <package>`. |

Never edit files under `vendor/`. Composer overwrites them.

## Post-hop checks

After the deployment checks, complete the smoke tests for the storefront, search, cart and checkout, Admin, cron, payment credential decryption, and critical errors in `var/log/exception.log`.

If search returns no results in a local environment, check that the search engine is running and the indexes are rebuilt. Search that depends on a SaaS service also needs valid credentials for that service.

For headless projects, run reviewed REST and GraphQL tests. A generated test plan does not establish that validation passed.

See [post-hop validation](usage.md#complete-post-hop-validation) for the checklist.
