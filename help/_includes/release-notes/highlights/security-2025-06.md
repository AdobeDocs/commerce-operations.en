# June 2025 security patch highlights

This release includes the following highlights:

* **API performance enhancement**—Resolved performance degradation in bulk asynchronous web API endpoints that were introduced after the APSB25-08 security patch.<!-- AC-14078 -->
* **CMS Blocks access fix**—Resolved an issue where Admin users with restricted permissions (such as merchandising-only access) were unable to view the [!UICONTROL CMS Blocks] listing page. Previously, these users encountered an error due to missing configuration parameters after installing previous security patches.<!-- AC-14087 -->
* **Cookie limit compatibility**—Resolved a backward-incompatible change involving the `MAX_NUM_COOKIES` constant in the framework. This update restores expected behavior and ensures compatibility for extensions or customizations that interact with cookie limits.<!-- AC-14475 -->
* **Fix for CVE-2024-34104**—Resolves an improper authorization vulnerability.<!-- AC-13917 -->
