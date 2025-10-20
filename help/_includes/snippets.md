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

## B2B patches {#b2b-patches}

>[!NOTE]
>
>After installing this security patch, Adobe Commerce B2B merchants must also update to the latest compatible B2B security patch release. See [B2B release notes](https://experienceleague.adobe.com/en/docs/commerce-admin/b2b/release-notes).

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
>Adobe Commerce releases can contain backward-incompatible changes (BICs). To review backward-incompatible changes, see [BIC reference](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/reference/). Major backward-incompatible issues are described in [BIC highlights](https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/). Not all releases introduce major BICs.

## Alpha disclaimer {#alpha}

>[!IMPORTANT]
>
>[Alpha](/help/release/versioning-policy.md#alpha-patch-release) releases may be incomplete, and are likely to contain defects. They are provided "AS IS" without warranty of any kind. Adobe has no obligation to maintain, correct, update, change, modify, or otherwise support (via Adobe Support Services or otherwise) Alpha releases. Customers should not rely on the correct functioning or performance of Alpha releases or any accompanying documentation or materials. Use of Alpha releases is entirely at the customer's own risk.

## Beta disclaimer {#beta}

>[!IMPORTANT]
>
>Beta releases can contain defects and are provided "AS IS" without warranty of any kind. Adobe has no obligation to maintain, correct, update, change, modify or otherwise support (from Adobe Support Services or any other service) the beta releases. Customers should use caution and not rely in any way on the correct functioning or performance of beta releases and/or any accompanying documentation or materials. Accordingly, any use of the beta releases is entirely at the customer's own risk.

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

## Custom patches {#custom-patches-disclaimer}

>[!IMPORTANT]
>
>Adobe does not support applying official, Adobe-provided patches using this method. Use the following method at your own risk. To apply official patches, use the [[!DNL Quality Patches Tool]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html){target="_blank"}. Always perform comprehensive testing before deploying any custom patch.

## October 2025 security patch backports {#oct-2025-backports}

<!--These fixes were backported to 2.4.8-pe, 2.4.7-p8, and 2.4.6-p13-->

* **Migrate from TinyMCE to Hugerte.org**

  Due to the end of support for TinyMCE 5 and 6 and licensing incompatibilities with TinyMCE 7, The current implementation of Adobe Commerce WYSIWYG editor is migrated from TinyMCE to the open-source HugeRTE editor (https://hugerte.org/).

  This migration ensures Adobe Commerce remains compliant with open-source licensing, avoids known TinyMCE 6 vulnerabilities, and delivers a modern, supported editing experience for merchants and developers.

* **Added support for Apache ActiveMQ Artemis  STOMP protocol**

  Added support for the ActiveMQ Artemis open-source message broker through the Simple Text Oriented Messaging Protocol (STOMP). It delivers a reliable and scalable messaging system, offering flexibility for STOMP-based integrations. See [Apache ActiveMQ Artemis](https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/message-queues/message-queue-framework#apache-activemq-artemis-stomp) in the *Commerce Configuration Guide*.

