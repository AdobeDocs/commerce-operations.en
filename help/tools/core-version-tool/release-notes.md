---
title: '[!DNL Core Version Tool] Release Notes'
description: Learn about [!DNL Core Version Tool] releases, including new patch-status reporting, CVE protection status, CSV output, and cache behavior.
feature: Release Notes
hide: true
---
# [!DNL Core Version Tool] release notes

These release notes describe updates for [!DNL Core Version Tool] ([!DNL CVT]).

## Version 1.0.0 — June 2026 {#version-1-0-0}

### New features

- **Patch status reporting** - Reports which monthly Adobe Commerce security patches are applied, missing, or could not be classified for an Adobe Commerce installation.
- **CVE protection status** - Maps patch results to per-CVE protection status values: `PROTECTED`, `VULNERABLE`, `UNKNOWN`, and `NOT_APPLICABLE`.
- **Multi-component support** - Detects installed Adobe Commerce components from `composer.lock`, including Adobe Commerce business-to-business (B2B), Adobe Commerce Page Builder, Adobe Commerce Inventory, and other components represented in `data/patch-registry.json`.
- **JSON and CSV output** - Provides JSON output by default for programmatic consumption and CSV output for spreadsheets, scanners, dashboards, and compliance tooling.
- **Offline-friendly cache behavior** - Caches the patch registry locally after each successful fetch. If the remote registry is unavailable, [!DNL CVT] can use the cached registry with a warning.
- **Bundled delivery** - Ships inside monthly Adobe Commerce security patch files. Applying the patch installs [!DNL CVT] at `vendor/bin/patch-status` with no separate installation step.

## Related topics

- [[!DNL CVT] introduction](intro.md)
- [Generate a patch-status report](generate-report.md)
- [[!DNL Core Version Tool] troubleshooting](troubleshooting.md)
