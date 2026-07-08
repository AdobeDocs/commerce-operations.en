---
title: '[!DNL Commerce Version Tool]'
description: Learn about the [!DNL Commerce Version Tool] for Adobe Commerce and use vendor/bin/patch-status to check monthly security patch status.
hide: true
---
# [!DNL Commerce Version Tool]

Monthly security patches for Adobe Commerce are non-cumulative and must be applied in sequence. The [!DNL Commerce Version Tool] ([!DNL CVT]) helps merchants verify patch coverage by reporting which monthly security patches are installed, which patches are missing, and which CVEs the installation is protected against.

>[!IMPORTANT]
>
>The [!DNL CVT] tool is informational only. It does not apply patches, revert patches, or modify Adobe Commerce source files. It can write cache files, temporary dry-run files, and audit-log entries to support patch-status reporting.

## Tool overview

The [!DNL CVT] tool is a standalone executable included with each monthly Adobe Commerce security patch. When the patch is applied to an Adobe Commerce installation, the tool is installed at `vendor/bin/patch-status`. It requires PHP 8.1 or later and the system `patch` binary. It does not require Composer packages, non-standard PHP extensions, Adobe Commerce bootstrap, or a separate installation step.

The [!DNL CVT] tool can help you:

- Detect applied security patches for a supported Adobe Commerce installation.
- Identify missing patches in a monthly isolated security patch sequence.
- Report protected, vulnerable, or unknown security status for patch-related Common Vulnerabilities and Exposures (CVE) records.
- Produce machine-readable output, such as JSON or CSV, for scanners, dashboards, and compliance reporting.
- Detect patch status for supported platforms and components.

## Availability

The [!DNL CVT] tool supports patch-status reporting for the following platforms and components when Adobe provides patch metadata for the installed version in the patch registry file.

| Platform or component | Availability |
| --- | --- |
| Adobe Commerce on-premises | Supported |
| [!DNL Magento Open Source] | Supported |
| Adobe Commerce business-to-business (B2B) | Supported when installed |
| Adobe Commerce Page Builder | Supported when installed |
| Adobe Commerce Inventory | Supported when installed |
| Additional components detected from `composer.lock` | Supported when represented in the patch registry file |

{style="table-layout:auto"}

## Common use cases

Use the [!DNL CVT] tool when you need to:

- Check whether an Adobe Commerce installation includes required isolated security patches.
- Confirm whether skipped or incomplete patch sets leave CVE coverage incomplete.
- Generate JSON or CSV output for internal reporting or automated scanning.
- Provide patch-status information before opening a support request or planning remediation.

## Guidelines for using results

Treat the [!DNL CVT] tool output as detection data that supports patch planning and security review.

Follow these guidelines:

- Run the [!DNL CVT] tool against a stable and supported Adobe Commerce installation.
- Review missing and unknown patches before making security-status claims.
- Preserve JSON or CSV output for auditability and automation.
- Treat scan output as security-relevant operational data.
- Share only the details needed for support or remediation.

## Patch detection

The [!DNL CVT] tool runs detection in two fixed steps. Both steps always run when you generate a patch-status report.

- **Composer detection:** The tool reads the `composer.lock` file to determine the [!DNL Adobe Commerce] base version and installed component areas. If the tool cannot detect a base version, it exits with code `1`.

- **Dry-run detection:** For each applicable patch, the tool uses a dry-run check against the patch changes to determine whether the patch is already applied, is not applied, or if the patch status is unknown. The tool handles patch dependencies during this check so that results reflect the installed component version.

The report includes only patches that apply to the detected installation and installed components. If the tool cannot confirm whether an applicable patch is present, it classifies the patch as unknown.

## Start using [!DNL CVT]

Use these topics to generate, troubleshoot, and track patch-status reporting:

- [Generate a patch-status report](generate-report.md) to run the [!DNL CVT] tool, review command options, and interpret report results.
- [[!DNL Commerce Version Tool] troubleshooting](troubleshooting.md) to resolve unexpected results or command errors.
- [[!DNL Commerce Version Tool] release notes](release-notes.md) to review release updates.
