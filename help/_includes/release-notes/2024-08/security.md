# August 2024 security patches

This release includes the following highlights:

* **Fix for [!DNL Prototype.js] vulnerability**—Addresses the [!DNL Prototype.js] security vulnerability ([CVE-2020-27511](https://nvd.nist.gov/vuln/detail/CVE-2020-27511)).<!-- AC-11936 -->

* **Rate limiting for [!DNL one-time passwords]**—The following new system configuration options are now available to enable rate limiting on [!DNL two-factor authentication (2FA)] [!DNL one-time password (OTP)] validation:

  * [!UICONTROL **Retry attempt limit for Two-Factor Authentication**]
  * [!UICONTROL **Two-Factor Authentication lockout time (seconds)**]

  Adobe advises setting a threshold for 2FA OTP validation to limit the number of retry attempts to mitigate brute force attacks. See [Security > 2FA](https://experienceleague.adobe.com/en/docs/commerce-admin/config/security/2fa) in the _Configuration Reference Guide_ for more information. <!-- AC-12095 -->
