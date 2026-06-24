---
title: '[!DNL Core Version Tool]'
description: Learn about the [!DNL Core Version Tool] for Adobe Commerce and use vendor/bin/patch-status to check monthly security patch status.
hide: true
---
# [!DNL Core Version Tool]

Monthly security patches for Adobe Commerce are non-cumulative and must be applied in sequence. The [!DNL Core Version Tool] ([!DNL CVT]) helps merchants verify patch coverage by reporting which monthly security patches are installed, which patches are missing, and which CVEs the installation is protected against.

>[!IMPORTANT]
>
>[!DNL CVT] is informational only. It does not apply patches, revert patches, or modify Adobe Commerce source files. It can write cache files, temporary dry-run files, and audit-log entries to support patch-status reporting.

## Tool overview

[!DNL CVT] is a standalone executable included with each monthly Adobe Commerce security patch. When the patch is applied to an Adobe Commerce installation, the tool is installed at `vendor/bin/patch-status`. It requires PHP 8.1 or later and the system `patch` binary. It does not require Composer packages, non-standard PHP extensions, Adobe Commerce bootstrap, or a separate installation step.

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
| [!DNL Magento Open Source] | Supported |
| Adobe Commerce business-to-business (B2B) | Supported when installed |
| Adobe Commerce Page Builder | Supported when installed |
| Adobe Commerce Inventory | Supported when installed |
| Additional components detected from `composer.lock` | Supported when represented in `data/patch-registry.json` |

{style="table-layout:auto"}

## Common use cases

Use the [!DNL CVT] tool when you need to:

- Check whether an Adobe Commerce installation includes required isolated security patches.
- Confirm whether skipped or incomplete patch sets leave CVE coverage incomplete.
- Generate JSON or CSV output for internal reporting or automated scanning.
- Provide patch-status information before opening a support request or planning remediation.

## Guidelines for using results

Treat [!DNL CVT] tool output as detection data that supports patch planning and security review.

Follow these guidelines:

- Run the [!DNL CVT] tool against a stable and supported Adobe Commerce installation.
- Review missing and unknown patches before making security-status claims.
- Preserve JSON or CSV output for auditability and automation.
- Treat scan output as security-relevant operational data.
- Share only the details needed for support or remediation.

## Start using [!DNL CVT]

Use these topics to generate, troubleshoot, and track patch-status reporting:

- [Generate a patch-status report](generate-report.md) to run the [!DNL CVT] tool, review command options, and interpret report results.
- [[!DNL Core Version Tool] troubleshooting](troubleshooting.md) to resolve unexpected results or command errors.
- [[!DNL Core Version Tool] release notes](release-notes.md) to review release updates.
