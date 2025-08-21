---
title: System requirements
description: Use this reference to identify required software dependencies that have been tested with Adobe Commerce releases.
exl-id: 008c9edc-7d72-403c-847f-0e3b77bbb197
---
# System requirements

The following summarizes software dependencies and services tested for Adobe Commerce.

There are some differences in the dependencies for Commerce on Cloud. Service version and compatibility support for Adobe Commerce on Cloud is determined by services tested and deployed to the hosted cloud environments, and sometimes differ from versions supported by Adobe Commerce on-premises deployments. For example, Elasticsearch 7.17 is supported for Commerce 2.4.4 for on-premise deployments, but OpenSearch 1 is supported for 2.4.4 Adobe Commerce on Cloud.

>[!NOTE]
>
>The system requirements apply to released versions of Adobe Commerce only. Beta or early access versions are not included. See the [release notes](../release/release-notes/overview.md) to learn more about the latest released versions of Adobe Commerce.

The following tables show versions of third-party software dependencies that Adobe has tested with specific Adobe Commerce releases.

Adobe only supports the combination of system requirements described in the following tables. For example, 2.4.5 is fully tested with MariaDB 10.4. Adobe recommends that you upgrade to MariaDB 10.4 before upgrading to 2.4.5.

To ensure a smooth upgrade process and prevent deployment failures, Adobe recommends upgrading RabbitMQ versions incrementally. For example, when upgrading from version 3.8 to 4.1, you should first upgrade from 3.8 to 3.9, then from 3.9 to 3.10, and so on. Only after reaching version 3.13 should you proceed with the upgrade to version 4.1.

>[!BEGINTABS]

>[!TAB Commerce on Cloud]

The [Commerce on Cloud template](https://github.com/magento/magento-cloud) provides a default configuration for services compatible with a specific Commerce version.

{{$include /help/_includes/templated/cloud-requirements-table.md}}

The services and versions are defined in [the `services.yaml` file](https://github.com/magento/magento-cloud/blob/master/.magento/services.yaml). The following is the default service configuration for Commerce 2.4.6 on Cloud infrastructure:

```yaml
mysql:
    type: mysql:10.6
    disk: 5120

redis:
    type: redis:7.0

opensearch:
    type: opensearch:2
    disk: 1024
```

See [Configure services](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/service/services-yaml.html) in the _Commerce on Cloud Infrastructure_ guide.

>[!TAB Commerce on-premises]

{{$include /help/_includes/templated/system-requirements-table.md}}

>[!ENDTABS]

## PHP settings

There are particular PHP configuration settings, such as the `memory_limit` setting, which can help you to avoid common problems when using Adobe Commerce. See [Required PHP settings](prerequisites/php-settings.md).

For Cloud configuration guidance, see [PHP settings](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/app/php-settings.html) in the _Commerce on Cloud Infrastructure_ guide.

### PHP OPcache

It is recommended that you verify that [PHP OPcache](https://www.php.net/manual/en/intro.opcache.php) is enabled for performance reasons. The OPcache is enabled in many PHP distributions. The `opcache` extension is installed by default in the Commerce on Cloud infrastructure.

For on-premises, verify that PHP OPcache is installed, see [PHP settings](prerequisites/php-settings.md). Or for specific guidance on performance settings, see the software recommendations for [PHP settings](https://experienceleague.adobe.com/docs/commerce-operations/performance-best-practices/software.html#php-settings) in the _Performance Best Practices_ guide.

If you must install OPcache separately, see the [PHP OPcache documentation](https://www.php.net/manual/en/opcache.setup.php).

### PHP Process Control

{{php-process-control}}

### PHPUnit

PHPUnit v9 (as a command-line tool).

### PHP extensions

The [PHP installation instructions](prerequisites/php-settings.md) include a step for installing these extensions.

>[!TIP]
>
>For PHP extensions in the Cloud infrastructure, see [Enable PHP extensions](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/app/php-settings.html#enable-extensions) in the _Commerce on Cloud Infrastructure_ guide.

>[!BEGINTABS]

>[!TAB Commerce on Cloud]

The following table shows the supported PHP extensions when deploying Adobe Commerce on the Cloud platform.

{{$include /help/_includes/templated/php-extensions-cloud.md}}

>[!TAB Commerce on-premises]

{{$include /help/_includes/templated/php-extensions.md}}

Refer to [official PHP documentation](https://www.php.net/manual/en/extensions.php) for installation details.

>[!ENDTABS]

## Miscellaneous

This section describes support and compatibility for all other types of required and optional software.

>[!NOTE]
>
>The following requirements apply to the latest 2.4.x patch release of Adobe Commerce. When relevant, Commerce on Cloud infrastructure guidance is provided.

### Browsers

Storefront and Admin:

- Microsoft Edge (latest and previous major version)
- Firefox (latest and previous major version; any operating system)
- Chrome (latest and previous major version; any operating system)
- Safari (latest and previous major version; macOS only)
- Safari for iOS (latest and previous major version, for storefront)
- Chrome for Android (latest and previous major version, for storefront)

### Mail server

Mail Transfer Agent (MTA) or an SMTP server. Commerce on Cloud infrastructure uses the [SendGrid email service](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/sendgrid.html).

### Memory

Upgrading the applications and extensions you obtain from the Commerce Marketplace and other sources can require up to 2 GB of RAM. If you are using a system with less than 2 GB of RAM, create a [swap file](https://support.magento.com/hc/en-us/articles/360032980432); otherwise, your upgrade might fail.

### Operating systems (Linux x86-64)

Linux distributions, such as RedHat Enterprise Linux (RHEL), CentOS, Ubuntu, Debian, and similar.

Microsoft Windows and macOS are **not** supported.

Adobe Commerce requires the following system tools for some operations:

- [[!DNL bash]](https://www.gnu.org/software/bash/)
- [[!DNL gzip]](https://www.gzip.org/)
- [[!DNL lsof]](https://linux.die.net/man/8/lsof)
- [[!DNL mysql]](https://www.mysql.com/)
- [[!DNL mysqldump]](https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html)
- [[!DNL nice]](https://linux.die.net/man/1/nice)
- [[!DNL php]](https://www.php.net/)
- [[!DNL sed]](https://www.gnu.org/software/sed/manual/sed.html)
- [[!DNL tar]](https://linux.die.net/man/1/tar)

### SSL

- A valid security certificate is required for HTTPS.
- Self-signed SSL certificates are not supported.
- Transport Layer Security (TLS) requirement - PayPal and `repo.magento.com` both require TLS 1.2 or later.

For Commerce on Cloud infrastructure, see [Fastly configuration](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/setup-fastly/fastly-configuration.html) in the _Commerce on Cloud Infrastructure_ guide.

### Xdebug

For Adobe Commerce, use [php_xdebug 2.5.x](https://xdebug.org/download) or later (development environments only; can have an adverse effect on performance).

For Adobe Commerce on Cloud, see [Configure Xdebug](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/test/debug.html) in the _Commerce on Cloud Infrastructure_ guide.

>[!NOTE]
>
>There is a known issue with `xdebug` that can affect Adobe Commerce installations or access to the storefront or Admin after installation. See [Known issue that affects `xdebug` installation](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/miscellaneous/known-issues-that-affect-installation.html) in the _Commerce Support Knowledge Base_.

