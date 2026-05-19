---
title: Cloud Version Upgrade Enforcement Policy
description: Learn about version upgrade enforcement for Adobe Commerce on Cloud (PaaS): dates, deactivation, transitional provisions, and actions.
---

# Version upgrade enforcement policy for Adobe Commerce on Cloud (PaaS)

When regular support and extended support end for an Adobe Commerce version, Adobe reserves the right to deactivate Adobe Commerce on Cloud (PaaS) environments still running that unsupported version. Version upgrade enforcement applies to Adobe-hosted PaaS environments only; on-premises customers manage their own infrastructure.

The following sections explain why Adobe enforces upgrades, how enforcement dates are calculated, what happens on the enforcement date, and one-time transitional provisions. For version-specific enforcement dates, see the [End of support dates](lifecycle-policy.md#end-of-support-dates) table in the lifecycle policy.

>[!NOTE]
>
>In addition to upgrading to a supported Adobe Commerce version, Adobe also requires you to keep platform third-party software dependencies on actively supported versions. See [Platform dependencies](lifecycle-policy.md#platform-dependencies) and [PHP end of life and PCI compliance](lifecycle-policy.md#php-end-of-life-and-pci-compliance) in the lifecycle policy for your obligations and how they relate to enforcement.

## Why Adobe is introducing this policy

Adobe is responsible for the security and compliance of the hosted platform infrastructure that Adobe Commerce on Cloud customers run on. This includes keeping underlying software dependencies up to date, applying security patches, and meeting compliance standards, such as PCI, that customers rely on.

When security support for underlying software dependencies officially ends, Adobe can no longer provide the required level of security coverage and platform support. Continuing to run stores on unsupported infrastructure puts customers, their shoppers, and Adobe at unacceptable risk. Adobe is therefore introducing a formal version upgrade enforcement policy that defines when Adobe-hosted Cloud environments running unsupported Commerce versions will be deactivated.

## How upgrade enforcement dates are calculated

For each Adobe Commerce release line, the upgrade enforcement date is calculated as follows:

**Upgrade enforcement date** = General Availability date + 3 years of regular support + 1 year of extended support

Extended support is announced closer to the end of regular support for each release line.

## What happens on the version upgrade enforcement date

On the published upgrade enforcement date, Adobe stops maintenance of all Adobe Commerce on Cloud (PaaS) environments still running the affected release version and reserves the right to deactivate them. You receive advance notifications at key milestones leading up to the version upgrade enforcement date. Adobe provides a data export window before environment deactivation so you can retrieve your data.

The first enforcement date under this policy is **June 1, 2027**, for release lines that reach end of extended support before that date. See the [End of support dates](lifecycle-policy.md#end-of-support-dates) table for version-specific enforcement dates.

## One-time transitional provisions

As a one-time measure for versions whose extended support ended in 2025 and 2026, Adobe provides transitional provisions to give you additional time to plan and execute your migration or upgrade. See [Security-only transitional provisions](lifecycle-policy.md#security-only-transitional-provisions) in the lifecycle policy for version-specific periods, what is included, and what is not included.

>[!IMPORTANT]
>
>The security-only transitional period is a one-time exception. It will not be extended beyond the published dates. Treat the security-only period as migration time, not as a long-term support tier.

>[!MORELIKETHIS]
>
>[Lifecycle policy](lifecycle-policy.md) - Learn about Adobe Commerce lifecycle stages, support periods, end of support dates, and platform dependencies.
