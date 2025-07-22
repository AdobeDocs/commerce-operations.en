---
title: On-premises installation overview
description: Learn about the installation process for on-premises deployments of Adobe Commerce.
exl-id: a9f5b241-d05d-462c-8c7f-479a264c988f
---
# On-premises installation overview

>[!NOTE]
>
>The following diagram provides a high-level overview of _**on-premises**_ installations of Adobe Commerce:

![How installation works](../assets/installation/install-diagram-24.svg)

The general installation flow is as follows:

1. Set up your server environment.

   Install the prerequisite software, including PHP, Apache, MySQL, and the search engine. See the [system requirements](system-requirements.md) for more information.

1. Get [authentication keys](prerequisites/authentication-keys.md) to the Commerce Composer repository.

1. Get the Adobe Commerce software.

   * (Recommended) Get the [Composer metapackage](composer.md) to manage modules and their dependencies.

   * If you want to contribute to the Magento Open Source codebase or customize the application, [clone](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository/) the GitHub repository. This method requires familiarity with both GitHub and Composer.

1. Install the application using the command line.

   If the step fails because prerequisite software isn't set up correctly, review the [prerequisites](prerequisites/overview.md).

1. [Verify](next-steps/verify.md) the installation by viewing your storefront and the Admin.
