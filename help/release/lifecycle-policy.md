---
title: Software lifecycle policy
description: Learn about key dates for end of software support for Adobe Commerce releases.
exl-id: 9ee4ecc8-d893-412a-a605-5a8606a1b9a9
---

# Adobe Commerce lifecycle policy

To streamline the Adobe Commerce lifecycle policy and support the mission-critical needs of customers, Adobe offers a three year support window from the General Availability (GA) date for each version and releases quality fixes during this period. For dates and details on the end of software support for each release, see the [End of software support](#end-of-software-support) table.

During the three year support window, customer have access to:

- **Quality fixes**–Customers can access quality fixes by contacting [Adobe Commerce Support](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide) or through the self-serve [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). The following table described end of software support dates for the Adobe Commerce release lines.

- **Security fixes**–Adobe provides security fixes through cumulative security patches and non-cumulative [isolated security patch files](versioning-policy.md#isolated-security-fixes) for the three-year support period.

- **Hotfixes**–For critical security issues, such as zero-day vulnerabilities, Adobe provides [hotfixes](https://support.magento.com/hc/en-us/sections/360003869892-Known-issues-patches-attached-) for all customers on a supported version, even if they are not on the latest patch or security patch release. Note that a hotfix is not comprehensive and does not address all security issues that would be resolved by upgrading to the latest release.

Adobe does not provide security and quality fixes for third-party services and software dependencies (such as PHP and MySQL) that may reach end of life while customers are in the three-year or extended support period for Adobe Commerce. See the [system requirements](../installation/system-requirements.md) for a full list of tested and supported third-party technologies.

## Extended support

Adobe encourages customers to upgrade as soon as possible. However, to provide greater flexibility to align with upgrade plans and business needs, Adobe offers a one-year support extension at no additional cost for Adobe Commerce customers on versions 2.4.6. The support extension includes quality and security patches for the core application for up to one year. Extended support for Adobe Commerce 2.4.4 and 2.4.5 versions ends in April and August 2026 as planned.

>[!NOTE]
>
>Extended support is available to Adobe Commerce customers only. It is not available for the Magento Open Source code base.

## End of software support

| Release              | General Availability | End of regular support<sup>1</sup> | End of extended support |
|----------------------|----------------------|------------------------------------|-------------------------|
| Adobe Commerce 2.4.8 | April 8, 2025        | May 31, 2028                       | TBD                     |
| Adobe Commerce 2.4.7 | April 9, 2024        | May 31, 2027                       | TBD                     |
| Adobe Commerce 2.4.6 | March 14, 2023       | August 11, 2026                    | August 30, 2027         |
| Adobe Commerce 2.4.5 | August 9, 2022       | August 12, 2025                    | August 11, 2026         |
| Adobe Commerce 2.4.4 | April 12, 2022       | April 12, 2025                     | April 14, 2026          |

{style="table-layout:auto"}

>[!NOTE]
>
>- <sup>1</sup> If you are an Adobe Commerce customer, you can continue to receive security and quality fixes for an additional year through the extended support period.
>- See [Software Lifecycle Policy](https://www.adobe.com/content/dam/cc/en/legal/terms/enterprise/pdfs/Adobe-Commerce-Software-Lifecycle-Policy.pdf).

>[!IMPORTANT]
>
>PCI compliance cannot be guaranteed for merchants running version 2.4.6 who continue to use PHP 8.1, which reached [end of support in 2025](https://www.php.net/eol.php). Similarly, PHP 8.2 reaches [end of life at the end of 2026](https://www.php.net/supported-versions.php), creating the same PCI compliance risk for merchants who continue using it in 2027.

## Additional Security fixes provisioning for Adobe Commerce 2.4.4 and 2.4.5

As a one-time exception, Adobe is providing an extended security fixes provisioning period for Adobe Commerce versions 2.4.4 and 2.4.5 to give customers additional time to migrate to Adobe Commerce as a Cloud Service or upgrade to a supported release line.

During this security fixes provisioning period, note the following:

- **Isolated security patch file only**-An isolated security patch file will be released for these versions according to the release schedule. No security patch releases (no new -p versions) will be provided during this period.

  To apply an isolated security patch file, customers must be on the latest security-only patch release (the latest -p version) for their supported release line, as isolated security fixes are tested exclusively against that version.

- **No quality fixes or engineering assistance**–No bug fixes, quality updates ([Quality Patches Tool](../tools/quality-patches-tool/usage.md)), or engineering assistance ([Adobe Commerce Support](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide)) will be provided for versions 2.4.4 or 2.4.5 during this period.

- **PCI compliance is not guaranteed:**–Because 2.4.4 and 2.4.5 use PHP versions that have reached end of life, PCI compliance cannot be guaranteed for merchants on those releases. Continuing to run these versions may put your PCI compliance at risk.

To maintain full security coverage and ensure PCI compliance, customers must upgrade to a currently supported version of Adobe Commerce as soon as possible or migrate to [Adobe Commerce as a Cloud Service](https://experienceleague.adobe.com/en/docs/commerce/cloud-service/overview).

| Release              | General Availability | End of extended support | End of Security fixes provisioning |
|----------------------|----------------------|-------------------------|------------------------------------|
| Adobe Commerce 2.4.5 | August 9, 2022       | August 11, 2026         | May 2027                           |
| Adobe Commerce 2.4.4 | April 12, 2022       | April 14, 2026          | May 2027                           |

{style="table-layout:auto"}

>[!NOTE]
>
>Additional security fixes are only available to Adobe Commerce customers only and are not available for the Magento Open Source code base.


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
