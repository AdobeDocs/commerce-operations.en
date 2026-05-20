---
title: Adobe Commerce lifecycle policy
description: Learn about Adobe Commerce support periods, end-of-support and Cloud enforcement dates, transitional provisions, and paths to a supported release.
exl-id: 9ee4ecc8-d893-412a-a605-5a8606a1b9a9
---

# Adobe Commerce lifecycle policy

Adobe Commerce follows a defined software lifecycle policy to ensure customers run on secure, supported versions. If you are on an older release line, understanding where you fall in this lifecycle — and acting before enforcement deadlines — is critical. This topic covers support tier definitions, end-of-support and enforcement dates, transitional provisions for versions approaching end of life, and paths to remain on a supported release.

>[!IMPORTANT]
>
>Adobe is introducing an enforced version upgrade policy for Adobe Commerce on Cloud (PaaS). Starting **June 1, 2027**, Adobe will stop maintaining Cloud environments running unsupported Commerce versions and reserves the right to deactivate them. If you run on Cloud (PaaS), you must move to a supported Adobe Commerce version or migrate to [!DNL Adobe Commerce as a Cloud Service] before the published [end of extended support](lifecycle-policy.md#end-of-support-dates) date for your release line. See [Cloud version upgrade enforcement policy](version-upgrade-enforcement-policy.md) for enforcement dates, affected versions, and what happens if you remain on an unsupported version.

## Understanding support tiers

Adobe Commerce defines three support tiers for release lines. The following sections describe each tier.

### Regular support

The standard three-year support period from the General Availability (GA) date. Regular support includes quality fixes, security patches, and full Adobe Commerce on-call support.

- **Quality fixes** – Customers can access quality fixes by contacting [Adobe Commerce Support](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide) or through the self-serve [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html).

- **Security fixes** – Adobe provides security fixes through cumulative security patches and non-cumulative [isolated security patch files](versioning-policy.md#isolated-security-patch-file) for the three-year support period.

- **Hotfixes** – For critical security issues, such as zero-day vulnerabilities, Adobe provides [hotfixes](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) for all customers on a supported version, even if they are not on the latest patch or security patch release. Note that a hotfix is not comprehensive and does not address all security issues that would be resolved by upgrading to the latest release.

### Extended support

A one-year support extension available for specific release lines beyond regular support. Includes quality and security patches. Available for Adobe Commerce customers only — not available for Magento Open Source.

### Security-only transitional period

A one-time, time-limited transitional period available for specific versions whose extended support ended in 2025 or 2026. The security-only transitional period provides limited isolated security fixes only. Adobe Commerce on-call support is not included. This period is not equivalent to regular or extended support and will not be extended further. Treat it as a migration period, not as a long-term support tier. See [Security-only transitional provisions](#security-only-transitional-provisions).

## End of support dates

The following table shows the full lifecycle for each Adobe Commerce version, including the new version upgrade enforcement dates for Adobe Commerce on Cloud (PaaS) environments.

| Release | General Availability | End of regular support | End of extended support | End of security-only period | [Version upgrade enforcement date (Cloud only)](version-upgrade-enforcement-policy.md) |
|---------|----------------------|------------------------|-------------------------|-----------------------------|-----------------------------------------------|
| Adobe Commerce 2.4.9 | May 12, 2026 | May 31, 2029 | TBD | N/A | TBD |
| Adobe Commerce 2.4.8 | April 8, 2025 | May 31, 2028 | TBD | N/A | TBD |
| Adobe Commerce 2.4.7 | April 9, 2024 | May 31, 2027 | May 31, 2028 | N/A | June 1, 2028 |
| Adobe Commerce 2.4.6 | March 14, 2023 | August 11, 2026 | August 30, 2027 | May 31, 2028 | June 1, 2028 |
| Adobe Commerce 2.4.5 | August 9, 2022 | August 12, 2025 | August 12, 2026 | May 31, 2027 | June 1, 2027 |
| Adobe Commerce 2.4.4 | April 12, 2022 | April 12, 2025 | April 14, 2026 | May 31, 2027 | June 1, 2027 |

{style="table-layout:auto"}

If your release line is approaching or past these dates, see [Upgrade and migration options](#upgrade-and-migration-options). For Cloud enforcement details, see [Cloud version upgrade enforcement policy](version-upgrade-enforcement-policy.md).

### Support timeline by quarter

Use this chart to see overlapping support windows across release lines. For exact end dates, see the tables above. Extended support for 2.4.8 and 2.4.9 is TBD and is not shown.

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
    <th colspan="4">2029</th>
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
    <td colspan="4" style="background-color:#FFBF00;"></td>
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.5</td>
    <td colspan="2"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="3" style="background-color:#FFBF00;"></td>
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.6</td>
    <td colspan="4"></td>
    <td colspan="15" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="3" style="background-color:#FFBF00;"></td>
    <td colspan="6"></td>
  </tr>
  <tr>
    <td>2.4.7</td>
    <td colspan="9"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="6"></td>
  </tr>
  <tr>
    <td>2.4.8</td>
    <td colspan="13"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="6"></td>
  </tr>
  <tr>
    <td>2.4.9</td>
    <td colspan="17"></td>
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
   <td>Security-only transitional period</td>
  </tr>
 </tbody>
</table>

## Security-only transitional provisions {#security-only-transitional-provisions}

As a one-time measure for 2.4.4, 2.4.5, and 2.4.6 versions with extended support that already ended in 2025 and 2026, Adobe provides the following transitional provisions to give you additional time to plan and execute your migration or upgrade. These provisions do not replace [Cloud version upgrade enforcement](version-upgrade-enforcement-policy.md) for PaaS environments. You must still upgrade or migrate before your published enforcement date.

| Version | Transitional provision | Period | What is included | What is not included |
|---------|------------------------|--------|------------------|----------------------|
| 2.4.4 and 2.4.5 | Security-only transitional period | Through May 31, 2027 | Limited isolated security fixes on a case-by-case basis | Adobe Commerce on-call support, quality fixes, platform dependency updates |
| 2.4.6 | Extended support + security-only transitional period | Extended support through August 30, 2027. Security-only period through May 31, 2028. | Extended support period: quality and security patches. Security-only period: limited isolated security fixes. | During security-only period: Adobe Commerce on-call support, quality fixes, platform dependency updates |

{style="table-layout:auto"}

>[!IMPORTANT]
>
>The security-only transitional period is a one-time exception. It will not be extended beyond the published dates. Treat the security-only period as migration time, not as a long-term support tier.

## Platform dependencies

Staying on a supported Commerce release also requires supported platform dependencies. Adobe does not provide security and quality fixes for third-party services and software dependencies — such as PHP, MariaDB, OpenSearch, Redis, Valkey, RabbitMQ, and others — that may reach end of life while you are on the three-year or extended support period for Adobe Commerce.

You are responsible for maintaining all third-party dependencies and platform services on versions that are actively supported. See [System requirements](../installation/system-requirements.md) for the full list of tested and supported third-party technologies.

Adobe does not provide security support or assistance for deployments running unsupported dependency versions. See [Shared responsibility security and operational model](../security-and-compliance/shared-responsibility.md) for details.

>[!IMPORTANT]
>
>Running unsupported dependency versions may result in a security vulnerability on your Cloud instance that Adobe is unable to resolve. In such cases, Adobe reserves the right to enforce an upgrade of the affected software dependency, or to deactivate the service if an upgrade is not possible — regardless of your Adobe Commerce version support status.

## PHP end of life and PCI compliance

You are responsible for monitoring the support status of PHP versions used in your environments.

The following PHP versions used by older Commerce release lines have reached or will reach end of life, which has direct implications for PCI compliance.

| PHP version | End of life date | Affected Commerce versions | PCI compliance impact |
|-------------|------------------|----------------------------|------------------------|
| PHP 8.1 | December 31, 2025 | 2.4.4, 2.4.5, and 2.4.6 (where PHP 8.1 is used) | PCI compliance at risk — running PHP 8.1 past its end-of-life date means security vulnerabilities in PHP may not receive fixes, which puts PCI compliance at risk. Assess compliance status and prioritize upgrading. |
| PHP 8.2 | December 31, 2026 | 2.4.6 (where PHP 8.2 is used) | PCI compliance at risk from end of 2026 — plan upgrade or migration before the end of 2026 to maintain PCI compliance. |

{style="table-layout:auto"}

### PCI compliance notice

PCI compliance is the merchant's responsibility to assess. Adobe strongly recommends that merchants on affected versions consult with their qualified security assessor and prioritize moving to a supported Commerce version and a supported PHP version as soon as possible. For PHP support timelines, see [PHP supported versions](https://www.php.net/supported-versions.php) and [PHP end of life](https://www.php.net/eol.php).

## Upgrade and migration options

If you are on a version approaching or past its end of support dates, take action now. Remaining on an unsupported version puts your store at risk of security vulnerabilities, compliance issues, and loss of support. Adobe provides the following paths to move to a supported release.

### Recommended path: migrate to Adobe Commerce as a Cloud Service (ACCS)

[!DNL Adobe Commerce as a Cloud Service] is Adobe's next-generation hosted commerce platform and Adobe's recommended long-term destination for all Adobe Commerce on Cloud customers.

- Adobe manages all infrastructure, patching, and upgrades automatically.
- You are always on supported, compliant infrastructure — the end-of-life situation does not recur.
- You get access to Adobe's latest capabilities: AI-powered merchandising, composable storefront architecture, and native Adobe Experience Cloud integrations.
- You eliminate recurring upgrade cycles.

Contact your Adobe account team to begin a migration assessment. See [Adobe Commerce as a Cloud Service](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/overview) for product overview.

### Alternative path: upgrade to a supported Adobe Commerce on cloud or on-premises release

If you cannot migrate to [!DNL Adobe Commerce as a Cloud Service] immediately, you can upgrade to the latest currently supported Adobe Commerce on-premises or on cloud release. This moves you to a fully supported, modern infrastructure stack while preserving your existing PaaS deployment model.

Note that this path does not eliminate future upgrade obligations. Customers on PaaS must continue upgrading as release lines reach their version upgrade enforcement dates.
