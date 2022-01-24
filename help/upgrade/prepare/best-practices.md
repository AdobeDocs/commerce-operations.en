---
title: Best Practices
description: Use Adobe-recommended best practices to manage the upgrade process for your Adobe Commerce and Magento Open Source projects.
---

# Best practices for upgrading

This topic lists the actions you should take to manage the complexity of upgrading Adobe Commerce and Magento Open Source projects. Your team should be thinking about upgrades from the moment your project development starts and continue through each release. By following these best practices, the upgrade process will be much easier, faster, and cheaper.

>[!TIP]
>
>These recommendations are based on best practices supported by evidence for its impact and effectiveness from partners, merchants, Adobe experts, and the community.

## What impacts an upgrade?

It is important to understand the variables that determine the complexity of an upgrade. You must consider these variables at the beginning of each project--not just when is time to upgrade. The development of a project is key to ensure that future upgrades are be smooth and that you are able to control the required effort to complete them.

The level of effort to upgrade your Adobe Commerce instance depends upon these factors:

- **How did you build your site?** The amount of custom work and the number of installed third-party modules strongly affects the complexity of an upgrade. The quality of the custom work and modules can determine whether an upgrade goes smoothly.

- **Are you skipping multiple releases?** Skipping releases makes the next upgrade more complex, upgrading from consequent versions makes the process easier and cheaper.

- **What type of upgrade are you performing?** An upgrade to a minor release (from 2.3.x to 2.4.0, for example) is more extensive than an upgrade between patch releases (such as from 2.4.2 to 2.4.3). Security upgrades are the easiest type to implement.

## Best practices for planning upgrades

If you are working on a project that is already in production, upgrades are an opportunity for you to improve the quality of your code and customizations, and to optimize for future upgrades. The time you invest today is time saved in the long term.

If you manage multiple sites for different merchants, the best approach is to have a base instance with the main features and customizations you normally use. Use this base instance as your testing site for completing an upgrade and then do it on others. This practice gives you the flexibility to reuse customized modules for different customers and simplify upgrades across projects.

If your project is live, we suggest you run an audit to determine its quality, and understand how you can improve it to make upgrades more efficient.

### Developing with upgrades in mind

From the moment you start working on a project, you should consider how future upgrades will be impacted by your current work. Always follow Adobe Commerce development best practices as described here:

- [Development best practices](https://devdocs.magento.com/guides/v2.4/ext-best-practices/bk-ext-best-practices.html)
- [Coding standards](https://devdocs.magento.com/guides/v2.4/coding-standards/bk-coding-standards.html)

Begin adopting the Adobe Commerce Extensibility platform, if you have not done so already. The platform allows you to efficiently customize processes, integrate systems, and deploy new capabilities while maintaining SaaS-like upgradeability. Its features include:

- **UI Extensibility**. Extend and evolve your storefront independently of your backend and middleware using [PWA Studio](https://developer.adobe.com/commerce/pwa-studio/).

- **API Extensibility**. Use [GraphQL](https://devdocs.magento.com/guides/v2.4/graphql/index.html) to extend Web API layer by evolving the graph data model and executing lambda functions directly from the graph layer.

- **Adobe I/O middleware and services**. Connect your systems with Adobe Commerce using Adobe's middleware and a suite of app connections built on [Adobe I/O](https://www.adobe.io/). In addition, you can extend core platform capabilities by overwriting the default behavior with your own business logic that runs on Adobe I/O.

### Planning upgrades

As we continually expand the capabilities of Adobe Commerce, it is critical that you develop on the latest available release and define an upgrade strategy into your project plans. Doing so helps you remain secure, compliant, and up-to-date on the latest enhancements that allow you to grow sales faster, operate more effectively, and stay ahead of your competition now and into the future.

To help you plan and budget for upgrades, you should monitor our [release schedule](https://devdocs.magento.com/release). Plan upgrade tasks within your team's backlog ahead of time. Aim to complete this work with GA.

- Use the pre-release version to learn about each new release. Pre-release is General Availability code that is available to Adobe Commerce merchants and all partners two weeks before General Availability. If you have multiple stores, use the pre-release on your base store and verify that your custom modules and themes are compatible with it.

- Review the [Upgrade plan checklist](https://support.magento.com/hc/en-us/articles/360057968951) for Adobe Commerce to help you plan for your upgrade.

- Plan for upgrades at the beginning of the year. You must book a budget and resources to complete each upgrade. Remember, the upgrade effort might vary significantly from project to project. Use your experiences and knowledge to make a plan as accurate as possible.

- If your upgrades are taking more effort than what we describe here, we recommend you audit your project and make adjustments to your environment to reduce the long-term maintenance.

### Performing upgrades

Upgrades should be done on regular basis, and under a predefined budget. We recommend scheduling pre-approved upgrades at the beginning of the year to ensure upgrades are planned and completed on time.

Assess the work to be done for upgrading:

- Review the [release notes](https://devdocs.magento.com/guides/v2.4/release-notes/bk-release-notes.html) to understand the scope and impact of the new version.

- Use the [[!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/overview.md) to identify potential problems that must be fixed in your custom code before attempting to upgrade to a newer version.

- If you are using third-party extensions, validate their compatibility with the target version you are planning to upgrade to.

### Post-upgrade testing

Testing is the phase of an upgrade that requires the most time. As a result, this process should be as automated as possible. You can benefit from using the core testing tools. The [Application Testing Guide](https://devdocs.magento.com/guides/v2.4/test/testing.html) provides details.

Use a staging environment to test and validate your upgrade before moving to production.

Make use of a **maintenance page**. Preparing this page in advance allows you to communicate with your customers, notifying them that work is happening in the background. This page should be visible for a few minutes, but if there is a problem, you might need to use it longer. Having the appropriate content and design for your maintenance page gives your users a good experience even when your store is not available.
