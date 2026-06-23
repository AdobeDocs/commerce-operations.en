---
title: How the [!DNL Core Version Tool] Detects Patch Status
description: Learn how the [!DNL Core Version Tool] uses Composer detection and dry-run patch checks to report Adobe Commerce security patch status.
hide: true
---
# How the [!DNL Core Version Tool] detects patch status

This topic describes how [!DNL Core Version Tool] ([!DNL CVT]) checks an Adobe Commerce installation and reports patch status.

## Terminology

The following terms describe patch-status results reported by [!DNL Core Version Tool] ([!DNL CVT]):

- **Applied patch** - A monthly security patch that [!DNL CVT] detects in your Commerce codebase.
- **Missing patch** - A monthly security patch that applies to your installed Commerce version or component, but is not detected.
- **Unknown patch status** - A patch result that [!DNL CVT] cannot confirm from the available registry, patch diff, or dry-run result.
- **Protected** - A Common Vulnerabilities and Exposures (CVE) record that is covered by a detected patch.
- **Vulnerable** - A CVE record that is associated with a missing patch.
- **Not applicable** - A CVE record that applies to a component that is not installed, such as Adobe Commerce business-to-business (B2B) or Adobe Commerce Page Builder.
- **Installed component** - A Commerce package area, such as Adobe Commerce Community Edition (CE), Adobe Commerce Enterprise Edition (EE), Adobe Commerce business-to-business (B2B), or Adobe Commerce Page Builder, that [!DNL CVT] detects from `composer.lock`.
- **Machine-readable output** - JSON or CSV output that you can share with scanners, dashboards, or compliance reporting tools.

## Workflow overview

[!DNL CVT] is informational and query-only. The workflow inspects the target installation and returns a status report without applying patches, reverting patches, or modifying Commerce source files. It can write registry caches, patch-diff caches, and audit-log entries.

The workflow includes these phases:

- **Composer detection** - Reads `composer.lock` to determine the Adobe Commerce base version and installed component areas.
- **Registry loading** - Loads patch metadata for the supported Commerce version and patch sequence.
- **Internal dry-run detection** - Tests applicable patch diffs in an isolated temporary working directory without changing Commerce source files.
- **Status evaluation** - Maps detected patch coverage to protected, vulnerable, not applicable, or unknown CVE status.
- **Report generation** - Outputs results in JSON by default or CSV for machine-readable integrations.
- **Audit logging** - Appends a summary line to `var/log/patch_status.log` on each run.

## Detection methods

[!DNL CVT] uses two fixed detection steps. Both steps run each time.

### Step 1: Composer detection

[!DNL CVT] reads `composer.lock` to extract the Adobe Commerce base version and installed component areas, such as Adobe Commerce Community Edition (CE), Adobe Commerce Enterprise Edition (EE), Adobe Commerce business-to-business (B2B), and Adobe Commerce Page Builder. If [!DNL CVT] cannot find the base version, it exits with code `1`.

Installed components and their versions are detected from `composer.lock` using the `_areas` map in the patch registry. A patch is reported as missing only when it targets an installed component version.

### Step 2: Internal dry-run detection

[!DNL CVT] uses the system `patch` command in dry-run mode as its primary detection method. This is not a [!DNL CVT] command option. The dry-run checks let [!DNL CVT] determine whether a patch appears to be applied without changing Adobe Commerce source files.

For each applicable patch, [!DNL CVT]:

- Downloads the patch diff from Adobe's CDN through the patch fetcher.
- Caches patch diffs under `var/patch_metadata/.patch_diffs/`.
- Verifies downloaded patch diffs with SHA-256.
- Creates a temporary working directory with the affected files staged.
- Handles overlapping patch dependencies by reversing overlapping descendants and forward-applying overlapping prerequisites.
- Runs `patch -p1 --fuzz=0 --dry-run` to test a forward patch.
- Runs `patch -p1 --fuzz=0 -R --dry-run` to test a reverse patch.

The dry-run results determine patch status:

| Forward dry-run | Reverse dry-run | Result |
| --- | --- | --- |
| Fails | Succeeds | Applied |
| Succeeds | Fails | Not applied |
| Fails | Fails | Unknown |
| Succeeds | Succeeds | Unknown |

{style="table-layout:auto"}

If a patch diff is unavailable or the dry-run result is inconclusive, [!DNL CVT] classifies the patch as unknown.

## Patch registry and cache

`data/patch-registry.json` is the authoritative list of released patches and is the only file that changes with each release. [!DNL CVT] fetches the latest registry from Adobe's CDN on each run with a three-second timeout and caches it under `var/patch_metadata/.patch_registry_cache.json` for up to one hour.

If the network is unavailable, [!DNL CVT] can use the stale registry cache with a warning. Use `--no-registry-cache` to force a fresh remote fetch. When this option is used, [!DNL CVT] exits with an error if the remote registry cannot be reached.

## Status evaluation

[!DNL CVT] evaluates patch coverage so users can understand security exposure.

- **Protected** - The applicable patch is detected for the CVE or component.
- **Vulnerable** - An applicable patch is missing for the CVE or component.
- **Not applicable** - The CVE applies to a component that is not installed.
- **Unknown** - [!DNL CVT] cannot determine the status from the available registry and detection data.

## Output

JSON is the default output format. CSV output is available for scanner, dashboard, and compliance integrations.

The output includes:

- Base Adobe Commerce version
- Registry source
- Installed components
- Applied patches
- Missing patches
- Unknown patches
- Vulnerability status by CVE
- Warnings

<!-- TODO: Replace the example output with final output from the released [!DNL CVT] package when available. -->

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
- [Troubleshooting](troubleshooting.md)
