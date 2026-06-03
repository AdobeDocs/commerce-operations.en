---
title: Cloud Version Upgrade Enforcement Policy
description: Learn about version upgrade enforcement for Adobe Commerce on Cloud — why Adobe enforces upgrades, enforcement dates, decommissioning, and required actions. See the lifecycle policy for transitional provisions and migration paths.
nudge: true
---

# Version upgrade enforcement policy for Adobe Commerce on Cloud

When regular support and extended support end for an Adobe Commerce version, Adobe reserves the right to decommission Adobe Commerce on Cloud environments still running that unsupported version. Version upgrade enforcement applies to Adobe Commerce on Cloud environments only; on-premises customers manage their own infrastructure.

You must move to a supported Adobe Commerce version or migrate to [!DNL Adobe Commerce as a Cloud Service] before the published [end of extended support](lifecycle-policy.md#end-of-support-dates) date for your release line.

The following sections explain why Adobe enforces upgrades, how enforcement dates are calculated, and what happens on the enforcement date. For version-specific enforcement dates, see the [End of support dates](lifecycle-policy.md#end-of-support-dates) table in the lifecycle policy.

>[!NOTE]
>
>This topic covers Cloud upgrade enforcement only. For support tier definitions, the [end of support dates](lifecycle-policy.md#end-of-support-dates) table, [security-only transitional provisions](lifecycle-policy.md#security-only-transitional-provisions), [third-party software dependencies](lifecycle-policy.md#platform-dependencies), [PHP end of life and PCI compliance](lifecycle-policy.md#php-end-of-life-and-pci-compliance), and [upgrade and migration options](lifecycle-policy.md#upgrade-and-migration-options), see the [lifecycle policy](lifecycle-policy.md). In addition to upgrading to a supported Adobe Commerce version, Adobe also requires you to keep third-party software dependencies on actively supported versions.

## Why Adobe is introducing this policy

Adobe is responsible for the security and compliance of the hosted platform infrastructure that Adobe Commerce on Cloud customers run on. This includes keeping all underlying software dependencies up to date, applying security patches, and meeting compliance standards, such as PCI, that customers rely on.

When security support for underlying software dependencies is officially ended by vendors, Adobe can no longer provide the required level of security coverage and platform support. Continuing to run stores on unsupported infrastructure puts customers, their shoppers, and Adobe at unacceptable risk. Adobe is therefore introducing a formal version upgrade enforcement policy that defines when Adobe Commerce on Cloud environments running unsupported Commerce versions will be decommissioned.

## How upgrade enforcement dates are calculated

For each Adobe Commerce release line, the upgrade enforcement date is calculated as follows:

**Upgrade enforcement date** = General Availability date + 3 years of regular support + up to 1 year of extended support

Extended support is announced closer to the end of regular support for each release line.

## What happens on the version upgrade enforcement date

On the published upgrade enforcement date, Adobe will stop maintenance of all Adobe Commerce on Cloud environments still running the affected release version and reserve the right to decommission them. You will receive advance notifications at key milestones leading up to the version upgrade enforcement date. Adobe will provide a data export window before environment deactivation so you can retrieve your data.

The first enforcement date under this policy is **June 1, 2027**, for release lines that reach end of extended support before that date. See the [End of support dates](lifecycle-policy.md#end-of-support-dates) table for version-specific enforcement dates.
