---
title: '[!DNL Commerce Version Tool] Release Notes'
description: Learn about [!DNL Commerce Version Tool] releases, including new patch-status reporting, CVE protection status, CSV output, and cache behavior.
feature: Release Notes
TQID: 'https://experienceleague.adobe.com/38I3U5y9rmurP5gVhalfUq7DlcUb-JpF5eUam1nwEyk'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: b5f00040-57a0-4a6d-a39e-383b1936c2c9
    internal-label: Compliance
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
  - id: f42e0a1a-0d79-488d-a83f-f2c30672b137
    internal-label: Reporting
topic_v2:
  - id: aa2f3246-cb95-4b30-8899-fdf7d73550cc
    internal-label: Reporting
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
---
# [!DNL Commerce Version Tool] release notes

These release notes describe updates for [!DNL Commerce Version Tool] ([!DNL CVT]).

## Version 1.0.0 — June 2026 {#version-1-0-0}

### New features

- **Patch status reporting** - Reports which monthly Adobe Commerce security patches are applied, missing, or could not be classified for an Adobe Commerce installation.
- **CVE protection status** - Maps patch results to per-CVE protection status values: `PROTECTED`, `VULNERABLE`, `UNKNOWN`, and `NOT_APPLICABLE`.
- **Multi-component support** - Detects installed Adobe Commerce components from `composer.lock`, including Adobe Commerce business-to-business (B2B), Adobe Commerce Page Builder, Adobe Commerce Inventory, and other components represented in the patch registry file.
- **JSON and CSV output** - Provides JSON output by default for programmatic consumption and CSV output for spreadsheets, scanners, dashboards, and compliance tooling.
- **Offline-friendly cache behavior** - Caches the patch registry file locally after each successful fetch. If the remote registry is unavailable, the [!DNL CVT] tool can use the cached registry with a warning.
- **Bundled delivery** - Ships inside monthly Adobe Commerce security patch files. Applying the patch installs [!DNL CVT] at `vendor/bin/patch-status` with no separate installation step.

## Related topics

- [Introduction](intro.md)
- [Generate a patch-status report](generate-report.md)
- [Troubleshooting](troubleshooting.md)
