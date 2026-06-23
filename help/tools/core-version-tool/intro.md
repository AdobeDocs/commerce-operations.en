---
title: '[!DNL Core Version Tool]'
description: Learn about the [!DNL Core Version Tool] for Adobe Commerce. Use vendor/bin/patch-status to check monthly isolated security patches.
hide: true
---
# [!DNL Core Version Tool]

Monthly security patches for Adobe Commerce are non-cumulative and must be applied in sequence. The [!DNL Core Version Tool] ([!DNL CVT]) helps merchants verify patch coverage by reporting which monthly security patches are installed and which patches are missing from an Adobe Commerce installation.

>[!IMPORTANT]
>
>[!DNL CVT] is informational only. It does not apply patches, revert patches, or modify Adobe Commerce source files. It writes cache and audit-log files only to support patch-status reporting.

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
| [!DNL Magento Open Source] | Supported |
| Adobe Commerce business-to-business (B2B) | Supported when installed |
| Adobe Commerce Page Builder | Supported when installed |

{style="table-layout:auto"}

## Common use cases

Use [!DNL CVT] when you need to:

- Check whether an Adobe Commerce installation includes required isolated security patches.
- Confirm whether skipped or incomplete patch sets leave CVE coverage incomplete.
- Generate JSON or CSV output for internal reporting or automated scanning.
- Provide patch-status information before opening a support request or planning remediation.

## Guidelines for using results

Treat [!DNL CVT] output as detection data that supports patch planning and security review.

Follow these guidelines:

- Run [!DNL CVT] against a stable and supported Adobe Commerce installation.
- Review missing and unknown patches before making security-status claims.
- Preserve JSON or CSV output for auditability and automation.
- Treat scan output as security-relevant operational data.
- Share only the details needed for support or remediation.

## Start using the [!DNL CVT] tool

Use these topics to generate, interpret, and troubleshoot patch-status reports:

- [Generate a patch-status report](generate-report.md) to run [!DNL CVT] and review command options.
- [Understand patch-status results](understand-report-results.md) to interpret report fields and status values.
- [[!DNL Core Version Tool] troubleshooting](troubleshooting.md) to resolve unexpected results or command errors.
