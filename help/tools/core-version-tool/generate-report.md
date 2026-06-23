---
title: Generate a Patch-Status Report
description: Learn how to use the [!DNL Core Version Tool] to generate an Adobe Commerce patch-status report and review command options.
hide: true
---
# Generate a patch-status report

Use [!DNL Core Version Tool] ([!DNL CVT]) to generate a patch-status report for an Adobe Commerce installation. The report identifies applied, missing, and unknown monthly security patches and returns JSON output by default.

## Prerequisites

Before running [!DNL CVT], confirm that:

- The target installation uses a supported Adobe Commerce version and edition.
- `composer.lock` is present and matches the environment you want to inspect.
- PHP and the system `patch` binary are available.
- You can read the project files from the environment where you run the command.
- The tool can write to `var/patch_metadata/` and `var/log/`, if those directories are used by the installed version.

## Generate the report

From the Adobe Commerce project root, run:

```bash
php vendor/bin/patch-status
```

## Command reference

<!--To Do: Document any options available for the command -->

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

<!-- TODO: Replace the example output with final output from the released [!DNL CVT] package when available. Add CSV and --no-registry-cache examples after the final command syntax is available. -->

The following example shows default JSON output:

```bash
php vendor/bin/patch-status
```

Example JSON output:

```json
{
  "base_version": "2.4.8-p5",
  "registry_source": "remote",
  "installed_components": {
    "CE": "2.4.8-p5",
    "EE": "2.4.8-p5"
  },
  "applied_patches": [
    "248p5-2026-05-001-CE",
    "248p5-2026-06-001-CE"
  ],
  "missing_patches": [
    "248p5-2026-07-001-CE"
  ],
  "unknown_patches": [],
  "vulnerability_status": {
    "CVE-2026-12345": {
      "status": "PROTECTED",
      "fixed_in": "248p5-2026-05-001-CE",
      "area": "CE"
    },
    "CVE-2026-12348": {
      "status": "VULNERABLE",
      "fixed_in": "248p5-2026-07-001-CE",
      "area": "CE"
    },
    "CVE-2026-12350": {
      "status": "NOT_APPLICABLE",
      "fixed_in": "248p5-2026-05-001-B2B",
      "area": "B2B"
    }
  },
  "warnings": []
}
```

## Related topics

- [[!DNL CVT] introduction](intro.md)
- [Understand patch-status results](understand-report-results.md)
- [[!DNL Core Version Tool] troubleshooting](troubleshooting.md)
