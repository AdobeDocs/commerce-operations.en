---
title: Release policy
description: Learn about the different types of Adobe Commerce releases.
exl-id: 61a83de6-6a7b-4a88-8fff-1638b4fe472a
---
# Adobe Commerce release policy

Adobe Commerce uses [semantic versioning](https://semver.org/) on the individual module level (for example `magento/framework 101.1.1`), but not for the marketing version number. For example:

- **MAJOR release**—2
- **MINOR release**—2.4
- **PATCH release**—2.4.8
  - **SECURITY patch release**—2.4.8-p1
    - Security bug fix
    - Security enhancement
- **ALPHA patch release**—2.4.8-alpha1
- **BETA patch release**—2.4.8-beta1
- **Extensibility, Infrastructure, and Services release**
- **Hotfix**
- **Individual patch**
- **Custom patch**

## MINOR release

The following guidelines apply to minor releases:

- Breaking changes are possible; code written for Adobe Commerce 2.2.x may no longer work with Adobe Commerce 2.3.x. For example, minor releases can introduce support for major system requirements and dependencies, such as PHP.
- Module versions can vary. For example, some module changes are introduced in a new patch whereas others are introduced in a minor release.
- Minor releases can include new features that may require additional work by you or your solution partner during an upgrade to ensure compatibility.
- Minor releases can include fixes for security and quality issues.

## PATCH release

Patch releases are primarily focused on delivering security, performance, compliance, and high-priority quality fixes to help you keep your sites performing at their peak.

The following guidelines apply to patch releases:

- The latest-supported minor release receives full functional quality fixes and enhancements.
- Changes that could break extensions or code compatibility are avoided. For example, code written for version 2.2.0 should still work on version 2.2.7.
- On an exceptional basis, breaking changes or additional patches or hotfixes may be released to address security or compliance issues and high-impact quality issues. On the module level, these changes are mostly PATCH-level; sometimes MINOR-level.

### SECURITY patch release

{{$include /help/_includes/release-notes/security-patch-overview.md}}

## ALPHA patch release

Pre-Beta releases of Adobe Commerce features are made publicly available to all Adobe Commerce customers and Adobe partners. Alpha releases are intended for early feedback and evaluation of features that are still in active development. These releases provide an opportunity for early testing and integration planning ahead of Beta and General Availability releases.

Alpha releases may be incomplete, and are likely to contain defects. They are provided "AS IS" without warranty of any kind. Adobe has no obligation to maintain, correct, update, change, modify, or otherwise support (via Adobe Support Services or otherwise) Alpha releases. Customers should not rely on the correct functioning or performance of Alpha releases or any accompanying documentation or materials. Use of Alpha releases is entirely at the customer's own risk.

## BETA patch release

Pre-General Availability releases of Adobe Commerce features are made publicly available to all Adobe Commerce customers and Adobe partners. It allows for extra time before General Availability to review code and affected components.

Beta releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe has no obligation to maintain, correct, update, change, modify, or otherwise support (via Adobe Support Services or otherwise) Beta releases. Customers should not rely on the correct functioning or performance of Beta releases or any accompanying documentation or materials. Accordingly, any use of the Beta Releases is entirely at a customer's own risk.

## Hotfix

Hotfixes are patches that contain high-impact security or quality fixes, such as fixes to zero-day vulnerabilities, that affect many merchants. Adobe releases hotfixes (as needed) for supported Adobe Commerce versions when critical security or quality issues affect them. Hotfixes are published to the [Known Issues section](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) of the Knowledge Base. These fixes are included in the next planned patch release.

>[!NOTE]
>
>Hotfixes can contain backward-incompatible changes.

## Individual patch

Individual patches contain low-impact quality fixes for a specific issue. These fixes are applied to the supported minor versions of Adobe Commerce. Adobe releases individual patches as needed for Adobe Commerce in accordance with the [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

>[!NOTE]
>
>Individual patches do not contain backward-incompatible changes.

## Isolated security fixes

Isolated patches are non-cumulative security fixes released independently from a full security patch to allow for faster implementation. Each isolated security fix addresses a specific security problem and is either included in the latest or an upcoming full security patch. Details about the issue are provided in the related security bulletin, which links to a Knowledge Base (KB) article containing the fix details, how to apply the fix, and additional information.

See the [Security Center](https://helpx.adobe.com/security/products/magento.html) to find the latest security updates available for Adobe Commerce.

## Custom patch

Created by non-Adobe personnel to fix an issue or modify the Adobe Commerce code for various reasons. Custom patches are delivered through the [Quality Patches Tool](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/usage).

<!-- Last updated from includes: 2025-05-28 16:37:31 -->
