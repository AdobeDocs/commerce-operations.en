---
title: System Requirements
description: Learn about software dependencies and system requirements for Adobe Commerce. See tested configurations for compatibility with your deployment environment.
exl-id: 008c9edc-7d72-403c-847f-0e3b77bbb197
---
# System requirements

The following summarizes software dependencies and services tested for Adobe Commerce.

There are some differences in the dependencies for Commerce on Cloud. Service version and compatibility support for Adobe Commerce on Cloud is determined by services tested and deployed to the hosted cloud environments, and sometimes differ from versions supported by Adobe Commerce on-premises deployments.

>[!NOTE]
>
>The system requirements tables identify the specific Adobe Commerce versions covered, including any explicitly labeled beta or early access releases. See the [release notes](../release/release-notes/overview.md) to learn more about the latest published versions of Adobe Commerce.
>
>Service version mismatches relative to your Commerce version can introduce behavior that is not reproducible in supported environments. In these cases, Support may request that you align the environment to a supported configuration (for example, upgrade or downgrade the service version) before we can investigate, troubleshoot, or validate the reported behavior. Once the versions are aligned, Support can proceed with the investigation.

The following tables show versions of third-party software dependencies that Adobe has tested with specific Adobe Commerce releases.

Adobe only supports the combination of system requirements described in the following tables. For example, 2.4.9 is fully tested with MariaDB 12.3. Adobe recommends that you upgrade to MariaDB 12.3 before upgrading to 2.4.9.

>[!BEGINTABS]

>[!TAB Commerce on Cloud]

The [Commerce on Cloud template](https://github.com/magento/magento-cloud) provides a default configuration for services compatible with a specific Commerce version.

{{$include /help/_includes/templated/cloud-requirements-table.md}}

For default configuration, the services and versions are defined in [the `services.yaml` file](https://github.com/magento/magento-cloud/blob/master/.magento/services.yaml).
For more details, refer to [Configure services](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/service/services-yaml) in the *Commerce on Cloud Infrastructure* guide.

>[!TAB Commerce on-premises]

{{$include /help/_includes/templated/system-requirements-table.md}}

**MySQL 8.0 reached End of Support (EOS) on April 30, 2026.**
Following this date Adobe Commerce 2.4.7, 2.4.6, 2.4.5, and 2.4.4 will not provide compatibility or
support for any MySQL versions released after MySQL 8.0. Adobe will not
validate or provide support for newer MySQL major versions on this Adobe
Commerce release line.
All Adobe Commerce on-premises customers running versions 2.4.7, 2.4.6, 2.4.5, 2.4.4 are strongly
advised to migrate their database servers to a compatible MariaDB version.

**Elasticsearch 7.17 reached End of Support (EOS) on January 15, 2026.**
Following this date Adobe Commerce 2.4.6, 2.4.5, and 2.4.4 will not provide compatibility or
support for any Elasticsearch versions released after Elasticsearch 7. Adobe will not
validate or provide support for newer Elasticsearch major versions on this Adobe
Commerce release line.
All Adobe Commerce on-premises customers running versions 2.4.6, 2.4.5, 2.4.4 are strongly
advised to migrate their search infrastructure to a compatible OpenSearch version.

>[!ENDTABS]

>[!AVAILABILITY]
>
><sup>1</sup> Compatibility between MariaDB 12.3 and Adobe Commerce 2.4.9 will be confirmed following the official release of MariaDB 12.3, anticipated in the May–June timeframe.

+++Archived system requirements

The following tables list system requirements for Adobe Commerce releases that include those in extended support  These tables are provided for reference purposes only. Adobe does not recommend using unsupported versions of software dependencies, and Support requires that you align your environment to a supported configuration before we can investigate, troubleshoot, or validate reported behavior.

>[!BEGINTABS]

>[!TAB Commerce on Cloud]

The [Commerce on Cloud template](https://github.com/magento/magento-cloud) provides a default configuration for services compatible with a specific Commerce version.

{{$include /help/_includes/templated/cloud-requirements-table.md}}

For default configuration, the services and versions are defined in [the `services.yaml` file](https://github.com/magento/magento-cloud/blob/master/.magento/services.yaml).
For more details, refer to [Configure services](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/service/services-yaml) in the *Commerce on Cloud Infrastructure* guide.

>[!TAB Commerce on-premises]

{{$include /help/_includes/templated/system-requirements-table.md}}

**MySQL 8.0 reached End of Support (EOS) on April 30, 2026.**
Following this date Adobe Commerce 2.4.7, 2.4.6, 2.4.5, and 2.4.4 will not provide compatibility or
support for any MySQL versions released after MySQL 8.0. Adobe will not
validate or provide support for newer MySQL major versions on this Adobe
Commerce release line.
All Adobe Commerce on-premises customers running versions 2.4.7, 2.4.6, 2.4.5, 2.4.4 are strongly
advised to migrate their database servers to a compatible MariaDB version.

**Elasticsearch 7.17 reached End of Support (EOS) on January 15, 2026.**
Following this date Adobe Commerce 2.4.6, 2.4.5, and 2.4.4 will not provide compatibility or
support for any Elasticsearch versions released after Elasticsearch 7. Adobe will not
validate or provide support for newer Elasticsearch major versions on this Adobe
Commerce release line.
All Adobe Commerce on-premises customers running versions 2.4.6, 2.4.5, 2.4.4 are strongly
advised to migrate their search infrastructure to a compatible OpenSearch version.

>[!ENDTABS]

+++

## PHP settings

There are particular PHP configuration settings, such as the `memory_limit` setting, which can help you to avoid common problems when using Adobe Commerce. See [Required PHP settings](prerequisites/php-settings.md).

For Cloud configuration guidance, see [PHP settings](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/app/php-settings) in the *Commerce on Cloud Infrastructure* guide.

### PHP OPcache

Adobe recommends that you verify that [PHP OPcache](https://www.php.net/manual/en/book.opcache.php) is enabled for performance reasons. The OPcache is enabled in many PHP distributions.

- **For Adobe Commerce on Cloud infrastructure deployments**, the `opcache` extension is installed by default.
- **For Adobe Commerce on-premises deployments:**
   - [Verify that the PHP OPcache extension is installed](prerequisites/php-settings.md#verify-php-is-installed).
   - For specific guidance on performance settings, see the software recommendations for [PHP settings](../performance/software.md#php-settings) in the *Performance Best Practices* guide.


If you must install OPcache separately, see the [PHP OPcache documentation](https://www.php.net/manual/en/opcache.setup.php).

### PHP Process Control

{{php-process-control}}

### PHPUnit

The supported PHPUnit major version depends on the Adobe Commerce release. Adobe tests 2.4.9 with PHPUnit 12, 2.4.8-p5 with PHPUnit 10, and 2.4.7-p10 through 2.4.4-p18 with PHPUnit 9. Install PHPUnit as a command-line tool at the major version that matches Adobe tested configurations for your release.

### PHP extensions

The [PHP installation instructions](prerequisites/php-settings.md) include a step for installing these extensions.

>[!TIP]
>
>For PHP extensions in the Cloud infrastructure, see [Enable PHP extensions](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/app/php-settings#enable-extensions) in the _Commerce on Cloud Infrastructure_ guide.

>[!BEGINTABS]

>[!TAB Commerce on Cloud]

The following table shows the supported PHP extensions when deploying Adobe Commerce on the Cloud platform.

{{$include /help/_includes/templated/php-extensions-cloud.md}}

>[!TAB Commerce on-premises]

{{$include /help/_includes/templated/php-extensions.md}}

Refer to [official PHP documentation](https://www.php.net/manual/en/extensions.php) for installation details.

>[!ENDTABS]

## Other software requirements

This section describes support and compatibility for all other types of required and optional software.

>[!NOTE]
>
>The following requirements apply to the latest 2.4.x patch release of Adobe Commerce. When relevant, Commerce on Cloud infrastructure guidance is provided.

### Browsers

Storefront and Admin:

- Microsoft Edge (latest and previous major version)
- Firefox (latest and previous major version on any operating system)
- Chrome (latest and previous major version on any operating system)
- Safari (latest and previous major version on macOS only)
- Safari for iOS (latest and previous major version for the storefront)
- Chrome for Android (latest and previous major version for the storefront)

### Mail server

Mail Transfer Agent (MTA) or an SMTP server. Commerce on Cloud infrastructure uses the [SendGrid email service](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/project/sendgrid).

### Memory

Upgrading the applications and extensions you obtain from the Commerce Marketplace and other sources can require up to 2 GB of RAM. If you are using a system with less than 2 GB of RAM, create a [swap file](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/installation-and-upgrade/out-of-memory-error-during-install-or-upgrade). Otherwise, your upgrade might fail.

### Operating systems (Linux x86-64)

Linux distributions, such as Red Hat Enterprise Linux (RHEL), CentOS, Ubuntu, Debian, and similar.

Microsoft Windows and macOS are **not** supported.

Adobe Commerce requires the following system tools for some operations:

- [[!DNL bash]](https://www.gnu.org/software/bash/)
- [[!DNL gzip]](https://www.gnu.org/software/gzip/manual/gzip.html)
- [[!DNL lsof]](https://lsof.readthedocs.io/en/stable/manpage/)
- [[!DNL mysql]](https://www.mysql.com/)
- [[!DNL mysqldump]](https://dev.mysql.com/doc/refman/8.4/en/mysqldump.html)
- [[!DNL nice]](https://www.gnu.org/s/coreutils/manual/html_node/nice-invocation.html)
- [[!DNL php]](https://www.php.net/)
- [[!DNL sed]](https://www.gnu.org/software/sed/manual/sed.html)
- [[!DNL tar]](https://www.gnu.org/software/tar/manual/tar.html)

### SSL

- A valid security certificate is required for HTTPS.
- Self-signed SSL certificates are not supported.
- Transport Layer Security (TLS) requirement - PayPal and `repo.magento.com` both require TLS 1.2 or later.

For Commerce on Cloud infrastructure, see [Fastly configuration](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/cdn/setup-fastly/fastly-configuration) in the *Commerce on Cloud Infrastructure* guide.

### Xdebug

For Adobe Commerce, use [php_xdebug 2.5.x](https://xdebug.org/download) or later (development environments only; can have an adverse effect on performance).

For Adobe Commerce on Cloud, see [Configure Xdebug](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/test/debug) in the *Commerce on Cloud Infrastructure* guide.

>[!NOTE]
>
>There is a known issue with `xdebug` that can affect Adobe Commerce installations or access to the storefront or Admin after installation. See [Known issue that affects `xdebug` installation](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/known-issues-that-affect-installation) in the _Commerce Support Knowledge Base_.

<!-- Last updated from includes: 2026-05-11 20:38:54 -->
