---
title: Software lifecycle policy
description: Learn about key dates for end of software support for Adobe Commerce releases.
exl-id: 9ee4ecc8-d893-412a-a605-5a8606a1b9a9
---

# Adobe Commerce lifecycle policy

For Adobe Commerce 2.4.4 and subsequent releases:

- To streamline the Adobe Commerce lifecycle policy and support the mission-critical needs of customers, Adobe expanded the support window to three years from the General Availability (GA) date for Adobe Commerce 2.4.4 and later. Adobe provides quality fixes to the 2.4.4 and later releases for a three-year support period. Customers can access quality fixes by contacting [Adobe Commerce Support](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html) or through the self-serve [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) if their version is still eligible for quality support. Refer to the table below for the end of software support dates for Adobe Commerce release lines.

- Adobe provides security fixes through a security patch release for the three-year support period.

- For critical security issues, such as zero-day vulnerabilities, Adobe provides [hotfixes](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) for all customers on a supported version, even if they are not on the latest patch or security patch release. It is important to note that a hotfix is not a catch-all and does not address all the security issues that would be fixed by upgrading to the latest release.

- Adobe does not provide security and quality fixes for third-party services and software dependencies (such as PHP and MySQL) that may reach end of life while customers are on the three-year support period for Adobe Commerce. See the [system requirements](../installation/system-requirements.md) for a full list of tested and supported third-party technologies.

- Adobe provides compatibility with third-party services and software dependencies while customers are on the three-year support period for Adobe Commerce in the scope of security-only patch releases, but only when it is possible to do so without introducing backward-incompatible changes.

## End of software support

| Release              | General Availability | End of software support<sup>1</sup> | Dependent PHP version | Dependendent MariaDB version |
|----------------------|----------------------|-------------------------------------|-----------------------|------------------------------|
| Adobe Commerce 2.4.7 | April 9, 2024        | April 9, 2027                       | 8.2 and 8.3           | 10.6                         |
| Adobe Commerce 2.4.6 | March 14, 2023       | March 14, 2026                      | 8.1 and 8.2           | 10.6                         |
| Adobe Commerce 2.4.5 | August 9, 2022       | August 9, 2025                      | 8.1                   | 10.5<sup>2</sup>             |
| Adobe Commerce 2.4.4 | April 12, 2022       | April 24, 2025                      | 8.1                   | 10.5<sup>3</sup>             |

{style="table-layout:auto"}

>[!NOTE]
>
>- <sup>1</sup> End of software support includes both end of quality fixes and end of security fixes.
>- <sup>2</sup> Starting with the 2.4.5-p8 security patch.
>- <sup>3</sup> Starting with the 2.4.4-p9 security patch.
>- See [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

<table style="table-layout:auto">
<thead>
  <tr>
    <th colspan="2"></th>
    <th colspan="4">2022</th>
    <th colspan="4">2023</th>
    <th colspan="4">2024</th>
    <th colspan="4">2025</th>
    <th colspan="4">2026</th>
    <th colspan="4">2027</th>
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
  </tr>
  <tr>
    <td>2.4.4</td>
    <td></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.5</td>
    <td colspan="2"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="9"></td>
  </tr>
  <tr>
    <td>2.4.6</td>
    <td colspan="4"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="8"></td>
  </tr>
  <tr>
    <td>2.4.7</td>
    <td colspan="9"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="2"></td>
  </tr>
</tbody>
</table>

**Key**

<table style="table-layout:auto">
 <tbody>
  <tr>
   <td style="background-color:#67ac68;">Supported</td>
   <td>Security and quality patches for Adobe Commerce</td>
  </tr>
  <!-- <tr>
   <td style="background-color:#cd3c3c;">End of software support</td>
   <td>Version that has reached end of software support.</td>
  </tr>
 </tbody> -->
</table>
