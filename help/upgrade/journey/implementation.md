---
title: Upgrade Implementation
description: Learn about the different phases of upgrade implementation for Adobe Commerce projects.
exl-id: d64855a7-73ee-463f-a314-6a8d4ebe4726
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

- **Scope of target release**—Documentation on [Experience League](../../release/release-notes/overview.md) and information from partner release webinars provide all the details you must know about your target upgrade.

- **[!DNL Upgrade Compatibility Tool] results**—This tool makes any upgrade faster and easier by comparing your current code to the target version's code and producing a report of all the issues that need to be addressed. See the [[!DNL Upgrade Compatibility Tool]](../upgrade-compatibility-tool/overview.md). Key details from the report include:

  - Current installed version
  - Upgrade target version
  - Number and details of critical errors found

  >[!TIP]
  >
  >All of this information (and more) is available in the Site-Wide Analysis Tool [dashboard](../../tools/site-wide-analysis-tool/dashboard.md).

- Upgrading services to support target version. Use the following table template to map out which services you must upgrade. Use the [system requirements](../../installation/system-requirements.md) to determine what to add to the _Upgrade to_ column.

  
  | Service         | Current version | Upgrade to | Notes                                                    |
  |-----------------|-----------------|------------|----------------------------------------------------------|
  | PHP             | 7.4             | 8.1        |                                                          |
  | Redis           | 6.0             | 6.2        |                                                          |
  | [!DNL RabbitMQ] | 3.8             | 3.9        | Not currently being used but we should consider using it |
  | MariaDB (Cloud) | 10.4            | 10.6       |                                                          |
  | MySQL           | 8.0             | -/-/       |                                                          |
  | Composer        | 1.9.2           | 2.2        |                                                          |
  | Elasticsearch   | 7.10            | 7.17       |                                                          |

- **Extensions and third-party modules**—Use this table template to help you understand the status of your extensions and customizations, so that you can make strategic decisions and define actions. This is an opportunity to replace any extensions that might be native to Adobe Commerce to minimize your project's complexity. Use the `bin/magento module:status` command to see a list of modules and extensions.

  | # | Extension/<br>module name   | Composer package                   | Vendor      | Current version   | Functionality         | Compatible with latest<br>Commerce version? | Issues                                           | Native to Commerce? | Action                  | Notes | 
  |---|-----------------------------|------------------------------------|-------------|-------------------|-----------------------|---------------------------------------------|--------------------------------------------------|---------------------|-------------------------|-------|
  | 1 | Extension name and link     | extension/<br>extensionx-magento-2 | Vendor name | Version installed | Business requirements | Yes/No                                      | List identified issues faced with this extension | Yes/No              | Keep/Replace/<br>Remove |       |
 
- **Custom modules**—Similar to the third-party modules table, this template helps you track and understand the status and actions required for upgrading custom modules.

  | # | Module name  | Functionality         | Required? | Native to Commerce? | Action              | Notes |
  |---|--------------|-----------------------|-----------|---------------------|---------------------|-------|
  | 1 | Module name  | Business requirements | Yes/No    | Yes/No              | Keep/Replace/Remove |       |

- **Composer packages and dependencies in composer.json that require an update.** 

In addition, partners can participate in [Adobe Commerce beta releases](../../release/beta.md) and use pre-release opportunities to get early access to the code for an upcoming release. Getting access to the code early helps developers prepare with enough time to complete the upgrade by the General Availability (GA) date. Beta code is typically released five weeks before the GA date and pre-releases are released two weeks in advance.

## Development & QA

Testing is the phase of an upgrade that requires the most time. As a result, this process should be as automated as possible. The _[Application Testing Guide](https://developer.adobe.com/commerce/testing/guide/)_ provides details on how to set up and use platform and system testing tools for faster QA. Use a staging environment to test and validate your upgrade before moving to production.

## UAT & preparing to launch

UAT is one of the last stages of the upgrade that requires reviewing and validating the site. You must also decide when to deploy and whether you need a maintenance page. Make plans for cron processes and third-party messages.

As the deployment date draws near, communication is essential. If more people know about the change on the horizon, how it impacts them, and how they must address it, then you are more likely to have a successful launch. Do not be afraid to over-communicate every step of the way—it increases the likelihood of glowing reviews from everyone involved once you go live!

## Launch

Complete the upgrade by deploying to production and updating extensions. Make sure you test critical path flows with simulated orders. Check out these [best practices](../prepare/best-practices.md) for some tips on launching with minimal issues.  

Follow your communication plan and ensure that all stakeholders are aware of the upgrade and are fully trained to support it.

Finally, debrief with your team to determine lessons learned and pitfalls. This retrospective helps you to improve the process next time.

## Post-Launch

After your site launches, make sure to check your analytics data, Google Search Console, and other resources to ensure that there are no unexpected issues and that everything is working as expected.

It is always a good idea to keep an eye on performance through well-designed monitoring tools. There are many tools and means of monitoring your site performance, so be sure to pick one that pairs well with your organization. We recommend that Adobe Commerce customers who use our cloud infrastructure management system take advantage of services such as [New Relic](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic/new-relic-service.html) to monitor site performance.
