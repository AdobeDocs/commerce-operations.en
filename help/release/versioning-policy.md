---
title: Release policy
description: Learn about the different types of Adobe Commerce releases, including minor, patch, security patch, feature, hotfix, individual patch, and custom patch.
exl-id: 61a83de6-6a7b-4a88-8fff-1638b4fe472a
---
# Adobe Commerce release policy

Adobe Commerce uses [semantic versioning](https://semver.org/) on the individual module level (for example `magento/framework 101.1.1`), but not for the marketing version number. For example:

- **MAJOR release**—2
- **MINOR release**—2.4
- **PATCH release**—2.4.5
  - **SECURITY patch release**—2.4.5-p1
    - Security bug fix
    - Security enhancement
- **BETA patch release**—2.4.7-beta2
- **Extensibility, Infrastructure, and Services release**
- **Hotfix**
- **Individual patch**
- **Custom patch**

## MINOR release

The following guidelines apply to minor releases:

- Breaking changes are possible; code written for Adobe Commerce 2.2.x may no longer work with Adobe Commerce 2.3.x. For example, minor releases can introduce support for major system requirements and dependencies, such as PHP.
- Module versions can vary. For example, some module changes are introduced in a new patch whereas others are introduced in a minor release.
- Minor releases can include new features that may require additional work by you or your solution partner during upgrade to ensure compatibility.
- Minor releases can include fixes for security and quality issues.

## PATCH release

Patch releases are primarily focused on delivering security, performance, compliance, and high-priority quality fixes to help you keep your sites performing at their peak.

The following guidelines apply to patch releases:

- The latest-supported minor release receives full functional quality fixes and enhancements.
- Changes that could break extensions or code compatibility are avoided. For example, code written for version 2.2.0 should still work on version 2.2.7.
- On an exceptional basis, breaking changes or additional patches or hotfixes may be released to address security or compliance issues and high-impact quality issues. On the module level, these are mostly PATCH-level changes; sometimes MINOR-level changes.

### SECURITY patch release

{{$include /help/_includes/security-patch-release-overview.md}}

## BETA patch release

Pre-general availability releases of Adobe Commerce features are made publicly available to all Adobe Commerce customers and Adobe partners. It allows for extra time before General Availability to review code and affected components.

Beta Releases may contain defects and are provided "AS IS" without warranty of any kind. Adobe will have no obligation to maintain, correct, update, change, modify, or otherwise support (via Adobe Support Services or otherwise) the Beta Releases. Customers are advised to use caution and not to rely in any way on the correct functioning or performance of the Beta Releases and/or any accompanying documentation or materials. Accordingly, any use of the Beta Releases is entirely at Customer's own risk.

## Features, cloud infrastructure, and extensibility release

Cloud infrastructure and feature releases contain new features and feature updates that are delivered as independent services, separate from patch releases. Examples include updates to our cloud hosting services and infrastructure, B2B, SaaS products (Catalog Service, Data Connection, Product Recommendations, and Live Search), and extensibility technology (API Mesh, Integration Starter Kit, and Eventing).

## Hotfix

Hotfixes are patches that contain high-impact security or quality fixes, such as fixes to zero-day vulnerabilities, that affect many merchants. Adobe releases hotfixes for Adobe Commerce versions that are still supported and affected by critical security or quality issues, as needed. Hotfixes are published to the [Known Issues section](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) of our Knowledge Base. These fixes are included in the next planned patch release.

>[!NOTE]
>
>Hotfixes can contain backward-incompatible changes.

## Individual patch

Individual patches contain low-impact quality fixes for a specific issue. These fixes are applied to the supported minor versions of Adobe Commerce. Adobe releases individual patches as needed for Adobe Commerce in accordance with our [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

>[!NOTE]
>
>Individual patches do not contain backward-incompatible changes.

## Isolated patch

Contains a standalone fix that is included in the latest security-only patch or an upcoming security-only patch, which is being released separately for quicker implementation.

## Custom patch

Created by non-Adobe personnel to fix an issue or modify the Adobe Commerce code for various reasons. Custom patches are delivered through the [Quality Patches Tool](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html).
