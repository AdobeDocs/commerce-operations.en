# June 2025 security patch highlights

This release includes the following highlights:

* **API performance enhancement**—Resolves performance degradation in bulk asynchronous web API endpoints that were introduced after the previous security patch.<!-- AC-14078 -->

* **CMS Blocks access fix**—Resolves an issue where Admin users with restricted permissions (such as merchandising-only access) were unable to view the [!UICONTROL CMS Blocks] listing page.

  Previously, these users encountered an error due to missing configuration parameters after installing previous security patches.<!-- AC-14087 -->

* **Cookie limit compatibility**—Resolves a backward-incompatible change involving the `MAX_NUM_COOKIES` constant in the framework. This update restores expected behavior and ensures compatibility for extensions or customizations that interact with cookie limits.<!-- AC-14475 -->

* **Async operations**—Restricted async operations for overriding previous customers orders.<!-- AC-13917 -->

* **Fix for CVE-2025-47110**—Resolves an email templates vulnerability.<!-- AC-14695 -->

>[!BEGINSHADEBOX]

The fix for CVE-2025-47110 is also available as an isolated patch. See the [Knowledge Base article](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/security-update-available-for-adobe-commerce-apsb25-50) for details.

>[!ENDSHADEBOX]