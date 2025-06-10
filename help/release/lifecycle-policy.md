---
title: Software lifecycle policy
description: Learn about key dates for end of software support for Adobe Commerce releases.
exl-id: 9ee4ecc8-d893-412a-a605-5a8606a1b9a9
---

# Adobe Commerce lifecycle policy

For Adobe Commerce 2.4.4 and subsequent releases:

- To streamline the Adobe Commerce lifecycle policy and support the mission-critical needs of customers, Adobe expanded the support window to three years from the General Availability (GA) date for Adobe Commerce 2.4.4 and later. Adobe provides quality fixes to the 2.4.4 and later releases for a three-year support period. Customers can access quality fixes by contacting [Adobe Commerce Support](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide) or through the self-serve [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) if their version is still eligible for quality support. The following table described end of software support dates for the Adobe Commerce release lines.

- Adobe provides security fixes through a security patch release for the three-year support period.

- For critical security issues, such as zero-day vulnerabilities, Adobe provides [hotfixes](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) for all customers on a supported version, even if they are not on the latest patch or security patch release. Note that a hotfix is not comprehensive and does not address all security issues that would be resolved by upgrading to the latest release.

- Adobe does not provide security and quality fixes for third-party services and software dependencies (such as PHP and MySQL) that may reach end of life while customers are on the three-year support period for Adobe Commerce. See the [system requirements](../installation/system-requirements.md) for a full list of tested and supported third-party technologies.

- For Adobe Commerce on Cloud customers using versions 2.4.4 and 2.4.5, Adobe automatically applies PHP 8.1 lifetime security fixes to the infrastructure, so these customers are not impacted by PHP 8.1 end-of-support. On-premises customers using Adobe Commerce 2.4.4 and 2.4.5 must contact Adobe Support to request PHP 8.1 lifetime security patches if needed.

- Adobe provides compatibility with third-party services and software dependencies while customers are on the three-year support period for Adobe Commerce in the scope of security-only patch releases, but only when it is possible to do so without introducing backward-incompatible changes.

## Extended support

Adobe encourages customers to upgrade as soon as possible. However, to provide greater flexibility to align with upgrade plans and business needs, Adobe offers a one-year support extension at no additional cost for Adobe Commerce customers on versions 2.4.4 and 2.4.5. The support extension includes quality and security patches for the core application for up to one year.

>[!NOTE]
>
>Extended support is available to Adobe Commerce customers only. It is not available for the Magento Open Source code base.

## End of software support

| Release              | General Availability | End of regular support<sup>1</sup> | End of extended support | Dependent PHP version | Dependent MariaDB version |
|----------------------|----------------------|------------------------------------|-------------------------|-----------------------|---------------------------|
| Adobe Commerce 2.4.8 | April 8, 2025        | April 11, 2028                     | N/A                     | 8.3 and 8.4           | 11.4                      |
| Adobe Commerce 2.4.7 | April 9, 2024        | April 9, 2027                      | N/A                     | 8.2 and 8.3           | 10.11<sup>3</sup>         |
| Adobe Commerce 2.4.6 | March 14, 2023       | August 11, 2026<sup>2</sup>        | N/A                     | 8.1 and 8.2           | 10.11<sup>4</sup>         |
| Adobe Commerce 2.4.5 | August 9, 2022       | August 9, 2025                     | August 11, 2026         | 8.1                   | 10.6<sup>5</sup>          |
| Adobe Commerce 2.4.4 | April 12, 2022       | April 12, 2025                     | April 14, 2026          | 8.1                   | 10.6<sup>6</sup>          |

{style="table-layout:auto"}

>[!NOTE]
>
>- <sup>1</sup> End of software support includes both end of quality fixes and end of security fixes.
>- <sup>2</sup> Updated to align with the end of extended support for 2.4.5.
>- <sup>3</sup> Starting with the 2.4.7-p6 security patch.
>- <sup>4</sup> Starting with the 2.4.6-p11 security patch.
>- <sup>5</sup> Starting with the 2.4.5-p11 security patch.
>- <sup>6</sup> Starting with the 2.4.4-p12 security patch.
>- See [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

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
    <td colspan="10"></td>
  </tr>
  <tr>
    <td>2.4.5</td>
    <td colspan="2"></td>
    <td colspan="13" style="background-color:#67ac68;"></td>
    <td colspan="4" style="background-color:#ffd700;"></td>
    <td colspan="9"></td>
  </tr>
  <tr>
    <td>2.4.6</td>
    <td colspan="4"></td>
    <td colspan="15" style="background-color:#67ac68;"></td>
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
 </tbody>
</table>
