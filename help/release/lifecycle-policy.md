---
title: Software lifecycle policy
description: Learn about key dates for end of software support for Adobe Commerce releases.
---

# Adobe Commerce lifecycle policy

For Adobe Commerce 2.4 and subsequent releases:

-  To better streamline our lifecycle policy, Adobe provides quality fixes to the 2.4 release line until the end of support date of the [PHP version](https://www.php.net/supported-versions.php) upon which it is based. A customer can access quality fixes by contacting [Adobe Commerce Support](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html) or through the self-serve [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html){target="_blank"} if their version is still eligible for quality support. Refer to the table below for the End of Software Support dates for Adobe Commerce release lines.

-  Adobe provides security fixes only through the latest patch or security patch release, even if a customer's version is still eligible for quality support. Unlike quality fixes, security fixes cannot be backported to previous minor releases nor to previous patch releases within supported minor releases.

-  For critical security issues, such as zero-day vulnerabilities, Adobe provides [hotfixes](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) for all customers on a supported version, even if they are not on the latest patch or security patch release. It is important to note that a hotfix is not a catch-all and does not address all the security issues that would be fixed by upgrading to the latest release.

## End of Software Support

| Release                    | End of Software Support<sup>1</sup>                                                  | Dependent PHP Version |
|----------------------------|--------------------------------------------------------------------------------------|-----------------------|
| Adobe Commerce 2.4.0-2.4.3 | November 28, 2022                                                                    | PHP 7.4               |
| Adobe Commerce 2.4.4-2.4.5 | January 25, 2025                                                                     | PHP 8.1               |
| Adobe Commerce 2.4.6       | January 25, 2025 for PHP 8.1 deployments<br>January 25, 2026 for PHP 8.2 deployments | PHP 8.1<br>PHP 8.2    |

{style="table-layout:auto"}

<sup>1 End of Software Support includes both end of quality fixes and end of security fixes.</sup><br>

>[!NOTE]
>
>See [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

<table style="table-layout:auto">
<thead>
  <tr>
    <th colspan="2"></th>
    <th colspan="4">2022</th>
    <th colspan="4">2023</th>
    <th colspan="4">2024</th>
    <th colspan="4">2025</th>
    <th colspan="4">2026</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Commerce</td>
    <td>PHP</td>
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
    <td>2.4.0 - 2.4.3</td>
    <td style="text-align:center">7.4</td>
    <td colspan="3" style="background-color:#67ac68;"></td>
    <td style="background-color:#cd3c3c;">Nov</td>
    <td colspan="16"></td>
  </tr>
  <tr>
    <td>2.4.4 - 2.4.5</td>
    <td style="text-align:center">8.1</td>
    <td colspan="12" style="background-color:#67ac68;"></td>
    <td rowspan="2" style="background-color:#cd3c3c;">Jan</td>
    <td colspan="7"></td>
  </tr>
  <tr>
    <td rowspan="2">2.4.6</td>
    <td style="text-align:center">8.1</td>
    <td colspan="12" style="background-color:#67ac68;"></td>
    <td colspan="7"></td>
  </tr>
  <tr>
    <td style="text-align:center">8.2</td>
    <td colspan="16" style="background-color:#67ac68;"></td>
    <td style="background-color:#cd3c3c;">Jan</td>
    <td colspan="3"></td>
  </tr>
</tbody>
</table>

## Key

<table style="table-layout:auto">
  <thead>
   <tr>
    <th></th>
    <th></th>
   </tr>
  </thead>
 <tbody>
  <tr>
   <td style="background-color:#67ac68;">Supported</td>
   <td>Version that has been fully tested by Adobe and is supported.</td>
  </tr>
  <tr>
   <td style="background-color:#cd3c3c;">End of Software Support</td>
   <td>Version that has reached End of Software Support.</td>
  </tr>
 </tbody>
</table>
