---
title: Adobe Commerce lifecycle policy
description: Learn about key dates for end of software support for Adobe Commerce releases, support periods, version upgrade enforcement on Cloud, and paths to stay on a supported release.
exl-id: 9ee4ecc8-d893-412a-a605-5a8606a1b9a9
---

# Adobe Commerce lifecycle policy

Adobe Commerce follows a defined software lifecycle policy to ensure that customers run on secure, supported versions. This topic covers support period definitions, end-of-support and enforcement dates, obligations for third-party dependencies, and paths to remain on a supported release.

>[!IMPORTANT]
>
>Adobe is introducing a version upgrade enforcement policy for Adobe Commerce on Cloud (PaaS). See [Version upgrade enforcement policy for Adobe Commerce on Cloud (PaaS)](#version-upgrade-enforcement-policy-for-adobe-commerce-on-cloud-paas) for dates, affected versions, and required actions.

## Support period definitions

Adobe Commerce defines three support tiers for release lines. The following sections describe each tier.

### Regular support

The standard three-year support period from the General Availability (GA) date. Regular support includes quality fixes, security patches, and full Adobe Commerce on-call support.

### Extended support

A one-year support extension available for specific release lines beyond regular support. Includes quality and security patches. Available for Adobe Commerce customers only — not available for Magento Open Source.

### Security-only transitional period

A one-time, time-limited transitional period available for specific versions whose extended support ended in 2025 or 2026. The security-only transitional period provides limited isolated security fixes only. Adobe Commerce on-call support is not included. This period is not equivalent to regular or extended support and will not be extended further.

## End of support dates

The following table shows the full lifecycle for each Adobe Commerce version, including version upgrade enforcement dates for Adobe Commerce on Cloud (PaaS) environments.

| Release | General Availability | End of regular support | End of extended support | End of security-only period | Version upgrade enforcement date (Cloud only) |
|---------|----------------------|------------------------|-------------------------|-----------------------------|-----------------------------------------------|
| Adobe Commerce 2.4.9 | May 12, 2026 | May 31, 2029 | TBD | N/A | TBD |
| Adobe Commerce 2.4.8 | April 8, 2025 | May 31, 2028 | TBD | N/A | TBD |
| Adobe Commerce 2.4.7 | April 9, 2024 | May 31, 2027 | May 31, 2028 | N/A | June 1, 2028 |
| Adobe Commerce 2.4.6 | March 14, 2023 | August 11, 2026 | August 30, 2027 | May 31, 2028 | June 1, 2028 |
| Adobe Commerce 2.4.5 | August 9, 2022 | August 12, 2025 | August 12, 2026 | May 31, 2027 | June 1, 2027 |
| Adobe Commerce 2.4.4 | April 12, 2022 | April 12, 2025 | April 14, 2026 | May 31, 2027 | June 1, 2027 |

{style="table-layout:auto"}

If your release line is approaching or past these dates, see [What to do — paths forward](#what-to-do--paths-forward). For Cloud enforcement details, see [Version upgrade enforcement policy for Adobe Commerce on Cloud (PaaS)](#version-upgrade-enforcement-policy-for-adobe-commerce-on-cloud-paas).

## Version upgrade enforcement policy for Adobe Commerce on Cloud (PaaS)

When regular support and extended support end for an Adobe Commerce version, Adobe reserves the right to deactivate Adobe Commerce on Cloud (PaaS) environments still running that unsupported version. Version upgrade enforcement applies to Adobe-hosted PaaS environments only; on-premises customers manage their own infrastructure.

The following subsections explain why Adobe enforces upgrades, how enforcement dates are calculated, what happens on the enforcement date, and one-time transitional provisions.

### Why Adobe is introducing this policy

Adobe is responsible for the security and compliance of the hosted platform infrastructure that Adobe Commerce on Cloud customers run on. This includes keeping underlying software dependencies up to date, applying security patches, and meeting compliance standards, such as PCI, that customers rely on.

When security support for underlying software dependencies officially ends, Adobe can no longer provide the required level of security coverage and platform support. Continuing to run stores on unsupported infrastructure puts customers, their shoppers, and Adobe at unacceptable risk. Adobe is therefore introducing a formal version upgrade enforcement policy that defines when Adobe-hosted Cloud environments running unsupported Commerce versions will be deactivated.

### How upgrade enforcement dates are calculated

For each Adobe Commerce release line, the upgrade enforcement date is calculated as follows:

**Upgrade enforcement date** = General Availability date + 3 years of regular support + 1 year of extended support

Extended support is announced closer to the end of regular support for each release line.

### What happens on the version upgrade enforcement date

On the published upgrade enforcement date, Adobe stops maintenance of all Adobe Commerce on Cloud (PaaS) environments still running the affected release version and reserves the right to deactivate them. You receive advance notifications at key milestones leading up to the version upgrade enforcement date. Adobe provides a data export window before environment deactivation so you can retrieve your data.

The first enforcement date under this policy is **June 1, 2027**, for release lines that reach end of extended support before that date. See the [End of support dates](#end-of-support-dates) table for version-specific enforcement dates.

### One-time transitional provisions

As a one-time measure for versions whose extended support ended in 2025 and 2026, Adobe provides the following transitional provisions to give you additional time to plan and execute your migration or upgrade:

| Version | Transitional provision | Period | What is included | What is not included |
|---------|------------------------|--------|------------------|----------------------|
| 2.4.4 and 2.4.5 | Security-only transitional period | Through May 31, 2027 | Limited isolated security fixes on a case-by-case basis | Adobe Commerce on-call support, quality fixes, platform dependency updates |
| 2.4.6 | Extended support + security-only transitional period | Extended support through August 30, 2027. Security-only period through May 31, 2028. | Extended support period: quality and security patches. Security-only period: limited isolated security fixes. | During security-only period: Adobe Commerce on-call support, quality fixes, platform dependency updates |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>The security-only transitional period is a one-time exception. It will not be extended beyond the published dates. Treat the security-only period as migration time, not as a long-term support tier.

## What to do — paths forward

If you are on a version approaching or past its end of support dates, take action now.

### Recommended path: migrate to Adobe Commerce as a Cloud Service

[!DNL Adobe Commerce as a Cloud Service] is Adobe's next-generation hosted commerce platform and Adobe's recommended long-term destination for all Adobe Commerce on Cloud customers.

- Adobe manages all infrastructure, patching, and upgrades automatically.
- You are always on supported, compliant infrastructure — the end-of-life situation does not recur.
- You get access to Adobe's latest capabilities: AI-powered merchandising, composable storefront architecture, and native Adobe Experience Cloud integrations.
- You eliminate recurring upgrade cycles.

Contact your Adobe account team to begin a migration assessment. See [Adobe Commerce as a Cloud Service](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/overview) for product overview.

### Alternative path: upgrade to a supported Adobe Commerce release on PaaS

If you cannot migrate to [!DNL Adobe Commerce as a Cloud Service] immediately, you can upgrade to the latest currently supported Adobe Commerce release version on PaaS. This moves you to a fully supported, modern infrastructure stack while preserving your existing PaaS deployment model.

Note that this path does not eliminate future upgrade obligations. Customers on PaaS must continue upgrading as release lines reach their version upgrade enforcement dates.

## Third-party software dependencies

Staying on a supported Commerce release also requires supported platform dependencies. Adobe does not provide security and quality fixes for third-party services and software dependencies — such as PHP, MariaDB, OpenSearch, Redis, Valkey, RabbitMQ, and others — that may reach end of life while you are on the three-year or extended support period for Adobe Commerce.

You are responsible for maintaining all third-party dependencies and platform services on versions that are actively supported. See [System requirements](../installation/system-requirements.md) for the full list of tested and supported third-party technologies.

Adobe does not provide security support or assistance for deployments running unsupported dependency versions. See [Shared responsibility security and operational model](../security-and-compliance/shared-responsibility.md) for details.

>[!IMPORTANT]
>
>Running unsupported dependency versions may result in a security vulnerability on your Cloud instance that Adobe cannot resolve. In such cases, Adobe reserves the right to enforce an upgrade of the affected software dependency, or to deactivate the service if an upgrade is not possible — regardless of your Adobe Commerce version support status.

## PHP end of life and PCI compliance

You are responsible for monitoring the support status of PHP versions used in your environments.

The following PHP versions used by older Commerce release lines have reached or will reach end of life, which has direct implications for PCI compliance.

| PHP version | End of life date | Affected Commerce versions | PCI compliance impact |
|-------------|------------------|----------------------------|------------------------|
| PHP 8.1 | December 31, 2025 | 2.4.4, 2.4.5, and 2.4.6 (where PHP 8.1 is used) | At risk after EOL — PHP security fixes end; assess compliance and prioritize upgrading |
| PHP 8.2 | December 31, 2026 | 2.4.6 (where PHP 8.2 is used) | At risk after EOL — plan upgrade or migration before end of 2026 |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>PCI compliance is the merchant's responsibility to assess. Adobe strongly recommends that merchants on affected versions consult with their qualified security assessor and prioritize moving to a supported Commerce version and a supported PHP version as soon as possible. For PHP support timelines, see [PHP supported versions](https://www.php.net/supported-versions.php) and [PHP end of life](https://www.php.net/eol.php).

## Support timeline

The support timeline maps support periods quarter by quarter for each Adobe Commerce release line. Use the tables provided earlier in this topic for exact end dates.

<table style="table-layout:auto">
<thead>
  <tr>
    <th colspan="1"></th>
    <th colspan="4">2022</th>
    <th colspan="4">2023</th>
    <th colspan="4">2024</th>
    <th colspan="4">2025</th>
    <th colspan="4">2026</th>
    <th colspan="4">2027</th>
    <th colspan="4">2028</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Commerce</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
    <td>Q1</td>
    <td>Q2</td>
    <td>Q3</td>
    <td>Q4</td>
  </tr>
  <tr>
    <td>2.4.4</td>
    <td></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="5" style="background-color:#FFBF00"></td>
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.5</td>
    <td colspan="2"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="4" style="background-color:#FFBF00"></td>
    <td colspan="9"></td>
  </tr>
  <tr>
    <td>2.4.6</td>
    <td colspan="4"></td>
    <td colspan="15" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.7</td>
    <td colspan="9"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="6"></td>
  </tr>
  <tr>
    <td>2.4.8</td>
    <td colspan="13"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="2"></td>
  </tr>
</tbody>
</table>

**Key**

<table style="table-layout:auto">
 <tbody>
  <tr>
   <td style="background-color:#67ac68;"></td>
   <td>Regular support</td>
  </tr>
  <tr>
   <td style="background-color:#ffd700;"></td>
   <td>Extended support</td>
  </tr>
    <tr>
   <td style="background-color:#FFBF00;">&nbsp;</td>
   <td>Extended security fixes</td>
  </tr>
 </tbody>
</table>
