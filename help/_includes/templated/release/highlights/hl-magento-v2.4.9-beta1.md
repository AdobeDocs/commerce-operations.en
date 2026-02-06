# Magento Open Source release notes (v2.4.9-beta1)

## Highlights in v2.4.9-beta1

The following highlights apply to the Magento Open Source 2.4.9-beta1 release.

### APIs

#### Adding a possibility to keep inheritance of product gallery in REST API when updating a product in store view level

Updating product via REST API in a store scope no longer causes product images and videos from inheriting changes from global scope if the media_gallery_entries is omitted from the payload or set to NULL to prevent any changes in the product gallery in that scope. Additionally, it is now possible to restore scope inheritance for product images and video via REST API by setting the corresponding field to NULL

_ACP2E-4358 - [GitHub code contribution](https://github.com/magento/magento2/commit/f7bbcb4e)_

### Framework

#### Investigate the latest major version of web-token/jwt-framework

As part of continuous security review process, we evaluated the latest major release of the JWT framework to ensure future compatibility and maintain strong security standards. There is no impact on existing functionality in this release.

_AC-13209 - [GitHub code contribution](https://github.com/magento/magento2/commit/2bac8114) - [GitHub code contribution](https://github.com/magento/magento2/commit/09b36ebb) - [GitHub code contribution](https://github.com/magento/magento2/commit/33b81f28)_

#### [Part 2] - Update all js library and npm dependency with latest available version

composer version support was up to the composer version 2.2.x only. Now the support extended to 2.4.x version as well.

_AC-13792 - [GitHub code contribution](https://github.com/magento/magento2/commit/19844aa0)_

#### Replace  carlos-mg89/oauth with PHP Native Functions

Replaced the third-party carlos-mg89/oauth library with native PHP OAuth functions to improve security, reduce external dependencies, and enhance platform stability.

_AC-14075 - [GitHub code contribution](https://github.com/magento/magento2/commit/7b8064f7)_

#### Investigate the latest version chart.js

Upgraded the Chart.js JavaScript charting library to the latest version 4.4.8 to improve chart rendering performance, enhance visual capabilities, and address security vulnerabilities in the admin dashboard and reporting modules.

_AC-14304 - [GitHub code contribution](https://github.com/magento/magento2/commit/768b4442)_

#### Investigate the latest version jquery/uppy and uppy

Upgraded the Uppy file upload library to version 4.13.4 to enhance file upload capabilities, improve user experience, and address security vulnerabilities in file handling across the Adobe Commerce admin interface and frontend components.

_AC-14307 - [GitHub code contribution](https://github.com/magento/magento2/commit/eb491c05)_

#### Investigate the latest version jquery-validate

Upgraded the jQuery Validate library to version 1.21.0 to enhance form validation capabilities, improve user experience, and ensure modern browser compatibility across all Adobe Commerce forms in both admin and frontend interfaces.

_AC-14403 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version jquery-ui

Upgraded the jQuery UI library to version 1.14.1 to enhance user interface widgets, improve accessibility, and ensure modern browser compatibility across all Adobe Commerce admin and frontend interface components.

_AC-14417 - [GitHub code contribution](https://github.com/magento/magento2/commit/77c589a6)_

#### Investigate the latest version less.js

Upgraded the Less.js CSS preprocessor to version 4.2.2 to enhance CSS compilation performance, improve syntax support, and modernize the theme build process across all Adobe Commerce frontend and admin themes.

_AC-14418 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version moment-timezone-with-data.js

Upgraded the Moment Timezone library to version 0.5.43 to enhance timezone handling capabilities, update timezone data with latest IANA Time Zone Database changes, and improve date/time processing accuracy across all Adobe Commerce international and multi-timezone operations.

_AC-14419 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Investigate the latest version underscore.js

Upgraded the Underscore.js utility library to version 1.13.7 to enhance JavaScript functional programming capabilities, improve data manipulation performance, and ensure modern browser compatibility across all Adobe Commerce frontend and admin interface components.

_AC-14420 - [GitHub code contribution](https://github.com/magento/magento2/commit/98b2848a)_

#### Update allure-framework/allure-phpunit version to 3 and remove native dependency in 2.4.9-alpha1

In Adobe Commerce 2.4.9, the allure-framework/allure-phpunit dependency has been upgraded to major version 3, which adds support for PHP 8.4, PHP 8.5 and modernizes our Allure-based test reporting stack. The native dependency previously required by older Allure PHPUnit versions has been removed where applicable, simplifying setup and maintenance.

_AC-14548 - [GitHub code contribution](https://github.com/magento/magento2/commit/87b8b34e)_

#### Upgrade chart.js dependency to the latest version

The chart.js dependency is upgraded to the latest version 4.5.0

_AC-15133 - [GitHub code contribution](https://github.com/magento/magento2/commit/657f983e)_

#### Add official support for Symfony 7.4 LTS and PHP 8.5 in Adobe Commerce 2.4.9

As part of the Adobe Commerce 2.4.9 platform updates, all Symfony dependencies used by the magento/composer package have been updated to the latest Symfony LTS 7.4 versions. This aligns Commerce’s Composer tooling with the current Symfony LTS line and removes previous dependency constraints related to older Symfony versions. In addition all custom classes extending Symfony core classes have updated type declarations and method signatures aligned with the latest Symfony requirements before upgrading to Adobe Commerce 2.4.9. This will prevent compatibility issues and ensure a smooth transition to the updated framework components.

_AC-15170 - [GitHub code contribution](https://github.com/magento/magento2/commit/c127d10b)_

### Other

#### Captcha / reCaptha is not working for API / GraphQl

In Adobe Commerce 2.4.9, when CAPTCHA (or reCAPTCHA) is enabled for the Create Account form, the same CAPTCHA validation is now enforced for customer account creation via REST and GraphQL APIs.

_AC-16245 - [GitHub code contribution](https://github.com/magento/magento2/commit/fd7f30ee)_

### Security

#### Improve async/bulk request performance

Fix the performance degradation in bulk asynchronous web endpoints introduced after the APSB25-08 security patch, resulting in increased execution times.

_AC-14078 - [GitHub code contribution](https://github.com/magento/magento2/commit/9a7352b7)_

#### Only require one enabled 2FA provider to be configured per user

Admin users are now required to configure only one of the merchant’s enabled 2FA providers (for example, Google Authenticator or U2F) to access the Admin panel. Additional enabled providers can be configured later as needed. Previously, when multiple 2FA providers were enabled (e.g., Google Authenticator and U2F), every Admin user was required to configure all enabled providers before they could sign in. This created friction for users who did not have access to all factors (such as a hardware key for U2F).

_AC-8253 - [GitHub code contribution](https://github.com/magento/security-package/commit/71e7936b)_

### Staging & Preview

#### [Feature Request] Content staging preview in mobile view

The staging preview feature in the admin panel now enables browser-simulated mobile device previews to be rendered accurately, providing a visual representation of how the staging update will appear on a mobile device.

_ACP2E-3397 - [GitHub code contribution](https://github.com/magento/magento2/commit/520f9e30)_
