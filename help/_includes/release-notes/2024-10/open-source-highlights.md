# October 2024 Magento Open Source 2.4.7-beta highlights

## Highlights

This release of the Magento Open Source codebase includes the following critical security fixes and platform improvements:

* *AC-11864*: Security Improvements for 2.4.8-beta1 from August 2024 release
* *AC-11816*: Add compatibility with MySQL 8.4 LTS
* *AC-6819*: Set indexers to "Update by Schedule" by default
* *AC-11041*: Security Improvements for 2.4.8-beta1 from June 2024 release
* *AC-12346*: Security Improvements for 2.4.8-beta1 from October 2024 release
* *AC-9749*: Updated the phpunit/phpunit composer dependencies to compatible version - "phpunit/phpunit":"10.x"
* *AC-12014*: Mark elasticsearch 8 module as deprecated
* *AC-11495*: 2.4.8-beta1 Platform Components Upgrade
* *AC-12165*: Subscribers Optimisation - PhpUnit10
* *ACP2E-2709*: In order to minimize the confusion, the "Submit Comment" button label changed to "Update" in the order detail page.
* *ACP2E-767*: The system now operates without the previously hidden dependency from Catalog introduced via InventoryIndexer, ensuring that the product creation, display mode switch, stock status change, and other related functionalities work as expected. Previously, this hidden dependency caused inconsistencies as different entities were synchronized and the indexer used different entities.
* *AC-11420*: After Installation Magento, Indexer's Status must be in *Ready* state by default.
* *AC-11421*: All new indexers are by default in [Update by Schedule] mode. Previously, the default mode was [Update on Save]. Same with custom indexers as well.
* *AC-12870*: SVC and EAT tool compatibility with MariaDB 11.4
* *AC-12876*: UCT tool compatibility with MariaDB 11.4
* *AC-12897*: SVC and EAT tool compatibility with MySQL 8.4
* *AC-11995*: Add compatibility with MySQL 8.4 LTS for Magento CE
* *AC-12898*: UCT tool compatibility with MySQL 8.4
* *AC-12032*: Add compatibility with MySQL 8.4 LTS for EE
* *AC-12034*: Add compatibility with MySQL 8.4 LTS for B2B
* *AC-12576*: Investigate the automation tests failures with MySQL 8.4 LTS
* *AC-12074*: Add compatibility with MySQL 8.4 LTS for bundle extensions
* *AC-12693*: Investigate on Data Migration tool (DMT) with MySQL 8.4 LTS
* *AC-12085*: Added MariaDB 11.4 support with Adobe Commerce and extensions
* *AC-12595*: Added MariaDB 11.4 support with Adobe Commerce and extensions
* *AC-12901*: Updated require.js to the latest version 2.3.7. In previous version reported security vulnerability 
* *AC-12823*: 
* *AC-12844*: Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability
* *AC-12022*: The system has been updated to use the latest major version of the "monolog/monolog:^3.x" library, ensuring compatibility and improved performance. Previously, the system was using an outdated version of the "monolog/monolog" library which could have led to potential issues and limitations.
* *AC-12024*: Upgrade jquery/validate library dependency to the latest minor version 1.20.0
* *AC-11911*: Removed jQuery/fileUploader library because it has been migrated to Uppy library
* *AC-12015*: ExtJs folder cleanup after migration to jsTree library
* *AC-12025*: Upgrade moment.js system dependency to the latest minor version 2.30.1
* *AC-12825*: Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability
* *AC-11723*: PHPUnit 9 is upgraded to PHPUnit 10 with Integration and WebAPI Test framework changes of Adobe Commerce. PHPUnit 10 changes are backward compatible.
* *AC-11813*: PHPUnit 9 is upgraded to PHPUnit 10 with Integration and WebAPI Test framework changes of Adobe Commerce. PHPUnit 10 changes are backward compatible.
* *AC-12481*: A text note is added to let Adobe Commerce admin users know that elasticsearch is no longer supported by Adobe and is deprecated.
* *AC-12480*: Elasticsearch 8 option in Admin Config option will show with Deprecated text to inform users that Elasticsearch 8 is no longer recommended option to use.
* *AC-12691*: [2.4.8-beta1] Customer update REST API endpoint is not working
* *AC-12726*: Migrated TinyMCE 5 to TinyMCE 7.3.0 to be a supported version for Adobe Commerce, previously system was using 5.10.2 which was out dated and reported security vulnerability
* *AC-12752*: Added MariaDB 11.4 support with Adobe Commerce and extensions
* *AC-11673*: Updated the latest version php-amqplib/php-amqplib :^3.x 
* *AC-12268*: Upgrade the 2.x league/flysystem Composer dependencies to latest version 3.x
* *AC-12267*: Updated latest version of colinmollenhour/php-redis-session-abstract v2.0.0 compatible with adobe commerce
* *AC-12715*: "The system now supports the latest versions of laminas composer dependencies:
laminas/laminas-servicemanager
laminas/laminas-server
laminas/laminas-stdlib
laminas/laminas-validator
ensuring compatibility and up-to-date functionality. Previously, updating to the latest versions of these dependencies could cause backward incompatibility issues and test failures."
* *AC-12023*: The system has been updated to use the latest major version 5.x of the "wikimedia/less.php" library, ensuring compatibility and up-to-date functionality. Previously, the system was using an outdated version of the library which could have led to security issues.
* *AC-10721*: Upgrade the 2.x league/flysystem Composer dependencies to latest version 3.x

