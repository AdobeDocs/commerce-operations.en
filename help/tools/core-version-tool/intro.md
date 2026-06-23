---
title: '[!DNL Core Version Tool]'
description: Learn about the [!DNL Core Version Tool] for Adobe Commerce. Use vendor/bin/patch-status to check monthly isolated security patches.
hide: true
---
# [!DNL Core Version Tool]

Monthly security patches for Adobe Commerce are non-cumulative and must be applied in sequence. The [!DNL Core Version Tool] ([!DNL CVT]) helps merchants verify patch coverage by reporting which monthly security patches are installed and which patches are missing from an Adobe Commerce installation.

>[!IMPORTANT]
>
>[!DNL CVT] is informational only. It does not apply patches, revert patches, or modify Commerce source files. It writes cache and audit-log files only to support patch-status reporting.

## Tool overview

[!DNL CVT] is a standalone executable included with each monthly security patch release as a single-file PHP script or PHAR. The tool is bundled at `vendor/bin/patch-status` and requires only PHP and the system `patch` binary. It does not require Composer packages, non-standard PHP extensions, Magento bootstrap, or a separate installation step.

[!DNL CVT] can help you:

- Detect applied security patches for a supported Adobe Commerce installation.
- Identify missing patches in a monthly isolated security patch sequence.
- Report protected, vulnerable, or unknown security status for patch-related Common Vulnerabilities and Exposures (CVE) records.
- Produce machine-readable output, such as JSON or CSV, for scanners, dashboards, and compliance reporting.
- Detect patch status for supported platforms and components.

## Availability

[!DNL CVT] supports patch-status reporting for the following platforms and components when Adobe provides patch metadata for the installed version in `data/patch-registry.json`.

| Platform or component | Availability |
| --- | --- |
| Adobe Commerce on-premises | Supported |
| Magento Open Source | Supported |
| Adobe Commerce business-to-business (B2B) | Supported when installed |
| Adobe Commerce Page Builder | Supported when installed |

{style="table-layout:auto"}

## Where to start

To understand how [!DNL CVT] produces patch-status results, see [How the [!DNL Core Version Tool] detects patch status](workflow.md). If a report contains unexpected results or the command does not complete successfully, see [[!DNL Core Version Tool] troubleshooting](troubleshooting.md).

## Run [!DNL CVT]

Before running [!DNL CVT], confirm that:

- The target installation uses a supported Adobe Commerce version and edition.
- `composer.lock` is present and matches the environment you want to inspect.
- PHP and the system `patch` binary are available.
- You can read the project files from the environment where you run the command.
- The tool can write to `var/patch_metadata/` and `var/log/`, if those directories are used by the installed version.

From the Adobe Commerce project root, run:

```bash
php vendor/bin/patch-status
```

## Command reference

Use the `patch-status` command to generate a patch-status report for the current Adobe Commerce project.

| Command | Description |
| --- | --- |
| `php vendor/bin/patch-status` | Checks the current Adobe Commerce project and returns patch-status output in JSON format. |

{style="table-layout:auto"}

JSON is the default output format. CSV output is supported for scanners, dashboards, and compliance reports.

### Options

| Option | Description |
| --- | --- |
| `--no-registry-cache` | Forces [!DNL CVT] to fetch the latest patch registry from Adobe's CDN instead of using the cached registry. If the remote registry is unavailable, the command exits with an error. |

{style="table-layout:auto"}

## Command examples and output

<!-- TODO: Add command examples and sample output after the final command syntax is available. -->

Include examples for:

- Default JSON output
- CSV output for scanner or dashboard integrations
- Fresh registry fetch with `--no-registry-cache`
- Output that includes applied, missing, and unknown patches
- Output that includes protected, vulnerable, not applicable, and unknown CVE status

## Common use cases

Use [!DNL CVT] when you need to:

- Check whether a Commerce installation includes required isolated security patches.
- Confirm whether skipped or incomplete patch sets leave CVE coverage incomplete.
- Generate JSON or CSV output for internal reporting or automated scanning.
- Provide patch-status information before opening a support request or planning remediation.

## Guidelines for using results

Treat [!DNL CVT] output as detection data that supports patch planning and security review.

Follow these guidelines:

- Run [!DNL CVT] against a stable and supported Commerce installation.
- Review missing and unknown patches before making security-status claims.
- Preserve JSON or CSV output for auditability and automation.
- Treat scan output as security-relevant operational data.
- Share only the details needed for support or remediation.
