# February 2025 security patch highlights

This release includes the following highlights:

* **Managing encryption keys and re-encrypting data**—Redesigned managing encryption keys to improve usability and eliminate previous limitations and bugs.<!-- AC-12679 -->

  New CLI commands are now available for [changing](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/encryption-key) keys and [re-encrypting](https://developer.adobe.com/commerce/php/development/security/data-encryption/) certain system configuration, payment, and custom field data. Changing keys in the Admin UI is no longer supported in this release. You must use the CLI commands.

* **Fix for [CVE-2025-24434](https://nvd.nist.gov/vuln/detail/CVE-2025-24434)**—Resolves an authorization vulnerability.

  This fix is also available as an isolated patch. See the [Knowledge Base article](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/security-update-available-for-adobe-commerce-apsb25-08) for details.<!-- AC-12755 -->

* **TinyMCE version downgrade**—The TinyMCE dependency has been downgraded from version 7 to 6.8.5 to address licensing compatibility issues.

  This change ensures continued compliance while Adobe evaluates an alternative open source WYSIWYG editor.
