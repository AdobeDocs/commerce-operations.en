---
title: Upgrade Implementation
description: Learn about the different phases of upgrade implementation for Adobe Commerce and Magento Open Source projects.
---

# Upgrade implementation

Upgrade implementation consists of five phases:

- Upgrade analysis
- Development and quality assurance (QA)
- User acceptance testing (UAT) and preparing to launch
- Launch
- Post-launch

## Upgrade analysis

Analysis is arguably the most important part of the upgrade process. A well-executed analysis saves you time and limits surprises in the future. The outcome of this phase should be a detailed upgrade checklist and document with all dependencies. 

The following are items that you may want to include in a thorough analysis:

- **Scope of target release**—Documentation on [Commerce DevDocs](https://devdocs.magento.com) and information from partner release webinars provide all the details you must know about your target upgrade.

- **[!DNL Upgrade Compatibility Tool] results**—This tool makes any upgrade faster and easier by comparing your current code to the target version’s code and producing a report of all the issues that need to be addressed. See the [[!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/overview.md). Key details from the report include:

  - Current installed version
  - Upgrade target version
  - Number and details of critical errors found

- Upgrading services to support target version. Use the following table template to map out which services you must upgrade. Use the [system requirements](https://devdocs.magento.com/guides/v2.4/install-gde/system-requirements.html) to determine what to add to the _Upgrade to_ column.

  
  | Service         | Current version | Upgrade to | Notes                                                    |
  |-----------------|-----------------|------------|----------------------------------------------------------|
  | PHP             | 7.2.33          | 8.1        |                                                          |
  | Redis           | 5.05            | 6.0        |                                                          |
  | RabbitMQ        | 3.7             | 3.8        | Not currently being used but we should consider using it |
  | MariaDB (Cloud) | 10.2.33         | 10.4       |                                                          |
  | MySQL           | 8.0             |            |                                                          |
  | Composer        | 1.9.2           | 2.0        |                                                          |
  | Elasticsearch   | 7.7             | 7.10       |                                                          |

- **Extensions and third-party modules**—Use this table template to help you understand the status of your extensions and customizations, so that you can make strategic decisions and define actions. This is an opportunity to replace any extensions that might be native to Adobe Commerce or Magento Open Source to minimize your project's complexity. Use the `bin/magento module:status` command to see a list of modules and extensions.

  | # | Extension/<br>module name   | Composer package                   | Vendor      | Current version   | Functionality         | Compatible with latest<br>Commerce version? | Issues                                           | Native to Commerce? | Action                  | Notes | 
  |---|-----------------------------|------------------------------------|-------------|-------------------|-----------------------|---------------------------------------------|--------------------------------------------------|---------------------|-------------------------|-------|
  | 1 | Extension name and link     | extension/<br>extensionx-magento-2 | Vendor name | Version installed | Business requirements | Yes/No                                      | List identified issues faced with this extension | Yes/No              | Keep/Replace/<br>Remove |       |
 
- **Custom modules**—Similar to the third-party modules table, this template helps you track and understand the status and actions required for upgrading custom modules.

  | # | Module name  | Functionality         | Required? | Native to Commerce? | Action              | Notes |
  |---|--------------|-----------------------|-----------|---------------------|---------------------|-------|
  | 1 | Module name  | Business requirements | Yes/No    | Yes/No              | Keep/Replace/Remove |       |

- **Composer packages and dependencies in composer.json that require an update.** 

In addition, partners can participate in the [Adobe Commerce Beta Program](https://devdocs.magento.com/release/beta-program.html) and use pre-release opportunities to get early access to the code for an upcoming release. Getting access to the code early helps developers prepare with enough time to complete the upgrade by the General Availability (GA) date. Beta code is typically released five weeks before the GA date and pre-releases are released two weeks in advance. For version 2.4.4, Adobe started releasing beta code five months before the GA date (March 8, 2022), so partners can start preparing for that upgrade now by [signing up for the program](https://community.magento.com/t5/Magento-DevBlog/BREAKING-NEWS-2-4-4-beta-releases-are-coming-soon/ba-p/484310).

## Development & QA

Testing is the phase of an upgrade that requires the most time. As a result, this process should be as automated as possible. The _[Application Testing Guide](https://devdocs.magento.com/guides/v2.4/test/testing.html)_ provides details on how to set up and use platform and system testing tools for faster QA. Use a staging environment to test and validate your upgrade before moving to production.

## UAT & preparing to launch

UAT is one of the last stages of the upgrade that requires reviewing and validating the site. You must also decide when to deploy and whether you need a maintenance page. Make plans for cron processes and third-party messages.

As the deployment date draws near, communication is essential. If more people know about the change on the horizon, how it impacts them, and how they must address it, then you are more likely to have a successful launch. Do not be afraid to over-communicate every step of the way—it increases the likelihood of glowing reviews from everyone involved once you go live!

## Launch

Complete the upgrade by deploying to production and updating extensions. Make sure you test critical path flows with simulated orders. Check out these [best practices](../prepare/best-practices.md) for some tips on launching with minimal issues.  

Follow your communication plan and ensure that all stakeholders are aware of the upgrade and are fully trained to support it.

Finally, debrief with your team to determine lessons learned and pitfalls. This retrospective helps you to improve the process next time.

## Post-Launch

After your site launches, make sure to check your analytics data, Google Search Console, and other resources to ensure that there are no unexpected issues and that everything is working as expected.

It is always a good idea to keep an eye on performance through well-designed monitoring tools. There are many tools and means of monitoring your site performance, so be sure to pick one that pairs well with your organization. We recommend that Adobe Commerce customers who use our cloud infrastructure management system take advantage of services such as [New Relic](https://devdocs.magento.com/cloud/project/new-relic.html) to monitor site performance.
