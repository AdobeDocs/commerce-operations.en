---
title: Generate a Patch-Status Report
description: Learn how to use the [!DNL Commerce Version Tool] to generate Adobe Commerce patch-status reports in JSON or CSV format.
hide: true
---
# Generate a patch-status report

Use [!DNL Commerce Version Tool] ([!DNL CVT]) to generate a patch-status report for an Adobe Commerce installation. The report identifies applied, missing, and unknown monthly security patches and returns JSON output by default.

## Prerequisites

Before running [!DNL CVT], confirm that:

- The target installation uses a supported Adobe Commerce version and edition.
- `composer.lock` is present and matches the environment you want to inspect.
- PHP and the system `patch` binary are available.
- You can read the project files from the environment where you run the command.
- The tool can write to `var/patch_metadata/` and `var/log/` if you want cache files and audit-log entries.
- Credentials are available through `COMPOSER_AUTH` or `auth.json` if entitlement-gated patches apply to the installation.

The [!DNL CVT] tool checks `COMPOSER_AUTH`, the Adobe Commerce project `auth.json`, and the global Composer `auth.json` for entitlement-gated patch credentials.

## Generate the report

From the Adobe Commerce project root, run:

```bash
vendor/bin/patch-status
```

To check a different Adobe Commerce installation, use the `--root` option:

```bash
vendor/bin/patch-status --root=/path/to/commerce
```

## Command options

JSON is the default output format. CSV output is supported for scanners, dashboards, and compliance reports.

| Option | Description |
| --- | --- |
| `--root=PATH` | Specifies the path to the Adobe Commerce installation root. The default is the current directory. |
| `--format=json\|csv` | Sets the output format. The default is `json`. |
| `--no-cache` | Bypasses registry and patch-diff caches, forces fresh remote fetches, and exits with an error if the remote registry is unavailable. |
| `--version`, `-V` | Prints the tool version. |
| `--help`, `-h` | Prints the help message. |

{style="table-layout:auto"}

## Review JSON and CSV output

The following sample shows default JSON output.

```bash
vendor/bin/patch-status
```

```json
{
  "base_version": "2.4.7-p9",
  "installed_components": {
    "CE": "2.4.7-p9",
    "EE": "2.4.7-p9",
    "B2B": "1.5.2-p5"
  },
  "applied_patches": [
    "247p9-2026-05-001-CE",
    "247p9-2026-05-001-EE"
  ],
  "missing_patches": [
    "247p9-2026-06-001-CE",
    "247p9-2026-06-001-EE"
  ],
  "unknown_patches": [],
  "vulnerability_status": {
    "CVE-2026-12354": {
      "status": "PROTECTED",
      "fixed_in": "247p9-2026-05-001-CE",
      "area": "CE"
    },
    "CVE-2026-67890": {
      "status": "VULNERABLE",
      "fixed_in": "247p9-2026-06-001-CE",
      "area": "CE"
    }
  },
  "registry_source": "remote",
  "warnings": []
}
```

To generate CSV output, use the `--format=csv` option:

```bash
vendor/bin/patch-status --format=csv
```

CSV output produces one row per CVE and is suitable for spreadsheets, scanners, dashboards, and compliance tooling.

## Understand report results

Review missing and unknown patches before making security-status claims.

### Patch status values

The patch-status report groups patch results by the following values:

| Patch status | Meaning |
| --- | --- |
| Applied | The [!DNL CVT] tool detects the monthly security patch in the Adobe Commerce codebase. |
| Missing | The patch applies to the installed Adobe Commerce version or component, but the [!DNL CVT] tool does not detect it. |
| Unknown | The tool cannot confirm the patch status from the available registry, patch diff, or detection result. |

{style="table-layout:auto"}

### CVE status values

JSON output reports CVE status values in uppercase.

| CVE status | Meaning |
| --- | --- |
| `PROTECTED` | The applicable patch is detected for the CVE or component. |
| `VULNERABLE` | An applicable patch is missing for the CVE or component. |
| `UNKNOWN` | The [!DNL CVT] tool cannot determine the CVE status from the available registry and detection data. |
| `NOT_APPLICABLE` | The CVE applies to a component that is not installed, such as Adobe Commerce business-to-business (B2B), Adobe Commerce Page Builder, or Adobe Commerce Inventory. |

{style="table-layout:auto"}

### Key output fields

The report can include the following information:

- **Base Adobe Commerce version** - The installed base version detected from `composer.lock`.
- **Registry source** - Whether patch metadata came from `remote`, `cache`, or `stale_cache`.
- **Installed components** - Adobe Commerce package areas detected from `composer.lock`.
- **Applied patches** - Monthly security patches detected in the Adobe Commerce codebase.
- **Missing patches** - Monthly security patches that apply but are not detected.
- **Unknown patches** - Patches that the [!DNL CVT] tool cannot classify.
- **Vulnerability status by CVE** - CVE coverage mapped to protected, vulnerable, not applicable, or unknown status.
- **Warnings** - Conditions that might affect the reliability or completeness of the report.

## Patch registry and cache

The patch registry file contains the patch metadata that the [!DNL CVT] tool uses to determine which patches apply to an installed version. The tool uses a fresh registry cache when available, fetches the remote registry when needed, and can use a stale cache with a warning if the network is unavailable. Use `--no-cache` only when you require fresh remote fetches.

## Related topics

- [Introduction](intro.md)
- [Troubleshooting](troubleshooting.md)
- [Release notes](release-notes.md)
