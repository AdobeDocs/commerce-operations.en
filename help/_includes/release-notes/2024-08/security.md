# August 2024 security patch highlights

This release includes the following highlights:

* **Rate limiting for [!DNL one-time passwords]**—The following new system configuration options are now available to enable rate limiting on [!DNL two-factor authentication (2FA)] [!DNL one-time password (OTP)] validation:

  * [!UICONTROL **Retry attempt limit for Two-Factor Authentication**]
  * [!UICONTROL **Two-Factor Authentication lockout time (seconds)**]

  Adobe advises setting a threshold for 2FA OTP validation to limit the number of retry attempts to mitigate brute force attacks. See [Security > 2FA](https://experienceleague.adobe.com/en/docs/commerce-admin/config/security/2fa) in the _Configuration Reference Guide_ for more information. <!-- AC-12095 -->

* **Encryption key rotation**—All values in the `core_config_data` databse table is now re-encrypted with a new key during an [encryption key rotation process](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/security/encryption-key). Previously, some values were left encrypted with the old key.<!-- AC-12526, AC-12527, AC-12528, AC-12529 -->

* **Fix for [CVE-2020-27511](https://nvd.nist.gov/vuln/detail/CVE-2020-27511)**—Resolves a [!DNL Prototype.js] security vulnerability.<!-- AC-11936 -->

* **Fix for [CVE-2024-39397](https://nvd.nist.gov/vuln/detail/CVE-2024-39397)**—Resolves a remote code execution security vulnerability in custom product options through file upload and the `POST /checkout/cart/updateItemOptions/id/{id}` REST API endpoint.<!-- ACSD-60551 -->
