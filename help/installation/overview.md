---
title: On-premises installation overview
description:
---

# On-premises installation overview

>[!NOTE]
>
>The following diagram provides a high-level overview of _**on-premises**_ installations of Adobe Commerce and Magento Open Source:


![How installation works](../assets/installation/install-diagram-24.svg)

The general installation flow is as follows:

1. Set up your server environment.

   Install the prerequisite software, including PHP, Apache, MySQL, and the search engine. See the [system requirements](system-requirements.md) for more information.

1. Get [authentication keys](prerequisites/authentication-keys.md) to the Commerce Composer repository.

1. Get the Adobe Commerce or Magento Open Source software.

   *  (Recommended) Get the Magento Open Source or Adobe Commerce [Composer metapackage]({{page.baseurl}}/install-gde/composer.html) to manage modules and their dependencies.

   *  If you want to contribute to the Magento Open Source codebase or customize the application, [clone]({{ page.baseurl }}/install-gde/prereq/dev_install.html) the GitHub repository. This method requires familiarity with both GitHub and Composer.

1. Install the Commerce software using the command line.

   If the step fails because prerequisite software isn't set up correctly, review the [prerequisites](prerequisites/overview.md).

1. [Verify](next-steps/verify.md) the installation by viewing your storefront and the Admin.

