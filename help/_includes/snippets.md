# Snippets

## Commerce only {#commerce-only}

>[!NOTE]
>
>The [!DNL Upgrade Compatibility Tool] is available for Adobe Commerce instances only.

<!-- Configuration guide snippets -->

## File system owner {#file-system-owner}

>[!WARNING]
>
>All Magento CLI commands must be run by the [file system owner](/help/configuration/cli/config-cli.md#prerequisites).

## Backup commands {#tip-backup-command}

>[!TIP]
>
>The `support:backup` command is _not_ the same code backup performed by the `setup:backup` command. The `support:backup` command is intended to back up code for examination by Adobe Commerce Support.

## Adobe Commerce only {#ee-only}

>[!NOTE]
>
>This feature is available for Adobe Commerce instances only.

## Split DB deprecated {#deprecate-split-db}

>[!IMPORTANT]
>
>The split database feature was [deprecated](https://community.magento.com/t5/Magento-DevBlog/Deprecation-of-Split-Database-in-Magento-Commerce/ba-p/465187?_ga=2.128934671.2024864496.1657558157-1596100530.1657558157) in version 2.4.2 of Adobe Commerce. See [Revert from a split database to a single database](/help/configuration/storage/revert-split-database.md).

<!-- End of Configuration guide snippets -->

## Backward-incompatible changes {#bics}

>[!NOTE]
>
>Adobe Commerce releases can contain backward-incompatible changes (BICs). To review backward-incompatible changes, see [BIC reference](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/reference/). Major backward-incompatible issues are described in [BIC highlights](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/). Not all releases introduce major BICs.

## CVE notice {#cve-notice}

>[!NOTE]
>
>Starting with the 2.3.2 release, we will assign and publish indexed Common Vulnerabilities and Exposures (CVE) numbers with each security bug reported to us by external parties. This allows users to more easily identify unaddressed vulnerabilities in their deployment. You can learn more about CVE identifiers at [CVE](https://cve.mitre.org/).

## Other release information {#other-release-info}

>[!NOTE]
>
>Although code for enhancements and bug fixes described in these release notes is bundled with Adobe Commerce, several of these projects (for example, B2B, Page Builder, and Progressive Web Applications (PWA) Studio) are also released independently. Bug fixes for these projects are documented in the separate, project-specific release information that is available in the documentation for each project. See [product release overview](/help/release/release-notes/overview.md).

## PHP Process Control {#php-process-control}

Before you can run indexers in parallel mode, you must enable Process Control support (`pcntl`) in PHP. See [Installation](https://www.php.net/manual/en/pcntl.installation.php) in the PHP documentation.
