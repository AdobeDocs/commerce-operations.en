# August 2024 security patch highlights

This release includes the following highlights:

* **Rate limiting for [!DNL one-time passwords]**—The following new system configuration options are now available to enable rate limiting on [!DNL two-factor authentication (2FA)] [!DNL one-time password (OTP)] validation:

  * [!UICONTROL **Retry attempt limit for Two-Factor Authentication**]
  * [!UICONTROL **Two-Factor Authentication lockout time (seconds)**]

  Adobe advises setting a threshold for 2FA OTP validation to limit the number of retry attempts to mitigate brute-force attacks. See [Security > 2FA](https://experienceleague.adobe.com/en/docs/commerce-admin/config/security/2fa) in the _Configuration Reference Guide_ for more information. <!-- AC-12095 -->

* **Encryption key rotation**—A new CLI command is now available for changing your encryption key. See the [Troubleshooting Encryption Key Rotation: CVE-2024-34102](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/troubleshooting-encryption-key-rotation-cve-2024-34102) Knowledge Base article for details.

* **Fix for [CVE-2020-27511](https://nvd.nist.gov/vuln/detail/CVE-2020-27511)**—Resolves a [!DNL Prototype.js] security vulnerability.<!-- AC-11936 -->

* **Fix for [CVE-2024-39397](https://nvd.nist.gov/vuln/detail/CVE-2024-39397)**—Resolves a remote code execution security vulnerability. This vulnerability affects merchants using the Apache web server for on-premises or self-hosted deployments. This fix is also available as an isolated patch. See the [Security update available for Adobe Commerce - APSB24-61](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/security-update-available-for-adobe-commerce-apsb24-61) Knowledge Base article for details.<!-- ACSD-60551 -->
