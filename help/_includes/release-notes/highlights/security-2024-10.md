# October 2024 security patch highlights

This release includes the following highlights:

* **TinyMCE upgrade**—The [WYSIWYG editor](https://experienceleague.adobe.com/en/docs/commerce-admin/content-design/wysiwyg/editor) in the Admin now uses the latest version of the TinyMCE dependency (7.3​).

  * TinyMCE 7.3 offers an enhanced user experience, better collaboration, and increased efficiency. TinyMCE 5 has been removed in the 2.4.8 release line.​

  * Since there was a security vulnerability ([CVE-2024-38357](https://nvd.nist.gov/vuln/detail/CVE-2024-38357)) reported in TinyMCE 5.10, the dependency was also upgraded for all currently supported release lines and included in all October 2024 security patches:

    * 2.4.7-p3
    * 2.4.6-p8
    * 2.4.5-p10
    * 2.4.4-p11

* **Require.js upgrade**—Adobe Commerce now uses the latest version of Require.js (2.3.7).

  * Since there was a security vulnerability ([CVE-2024-38999](https://nvd.nist.gov/vuln/detail/CVE-2024-38999)) reported in Require.js 2.3.6, the dependency was also upgraded for all currently supported release lines and included in all October 2024 security patches:

    * 2.4.7-p3
    * 2.4.6-p8
    * 2.4.5-p10
    * 2.4.4-p11

>[!NOTE]
>
>These updates are backward compatible and should not impact customizations and extensions.​
