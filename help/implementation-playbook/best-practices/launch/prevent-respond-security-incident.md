---
title: Respond to a security incident
description: Learn about best practices to respond to security incidents that affect Adobe Commerce sites
role: Admin, Developer, Leader, User
feature: Best Practices
exl-id: 77275d37-4f1d-462d-ba11-29432791da6a
---
# Best practices to help prevent and respond to a security incident

Adobe Commerce security operates under a [Shared Responsibility](https://www.adobe.com/content/dam/cc/en/trust-center/ungated/whitepapers/experience-cloud/adobe-commerce-shared-responsibilities-guide.pdf) model. It is key to understand what Adobe and your technical teams are responsible for. The following article summarizes security best practices to ensure that your project has the best security controls in place, and that you can plan the best response to security incidents.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure

## Respond to an incident

There are many considerations as you respond to a security incident. If you suspect that you have encountered a recent security incident for your Adobe Commerce on cloud infrastructure project, it is important to audit all admin user account access, enable advanced multi-factor authentication (MFA) controls, preserve critical logs, and review security upgrades for your version of Adobe Commerce.

More recommendations are detailed below. They can help prevent unauthorized access and begin the process for further incident analysis.

## How to prevent security incidents

Review and follow Adobe security best practices recommendations when setting up, configuring, updating, and patching Adobe Commerce installations. See [Security Best Practices](security-best-practices.md).

## Take immediate action in the event of an attack

In the unfortunate event of a site compromise, here are some key recommendations to follow:

- Engage your system integrator and appropriate security personnel to conduct investigation and remediation efforts.

- Determine the scope of the attack:
  - Was credit card information accessed?
  - What information was stolen?
  - How much time has elapsed since the compromise?
  - Was the information encrypted?

- Try to find the attack vector to determine when and how the site was compromised, by reviewing server log files and file changes.

  - In certain circumstances, it may be advisable to wipe and reinstall everything or, in the case of virtual hosting, create a new instance. Malware could be hidden in an unsuspected location just waiting to restore itself.

  - Remove all unnecessary files. Then reinstall all required files from a known, clean source, such as files from your own version control system or the original distribution files from Adobe.

  - Reset all credentials, including the database, file access, payment and shipping integrations, web services, and Admin login. Also reset all integration and API keys as well as accounts that might be used to attack the system.

## Analyze an incident

The first step of incident analysis is to gather as many facts as you can, as quickly as you can. Gathering information surrounding the incident can help you determine the potential cause of the incident. Adobe Commerce provides the tools below to assist with your incident analysis.

- [Audit Admin Action Logs](https://docs.magento.com/user-guide/system/action-log-report.html).

  The Action Logs Report displays a detailed record of all admin actions that are enabled for logging. Each record is time stamped and registers the IP address and name of the user. The log detail includes admin user data and related changes that were made during the action.

- Analyze events with the [Observation for Adobe Commerce tool](https://experienceleague.adobe.com/docs/commerce-operations/tools/observation-for-adobe-commerce/intro.html?lang=en).

  The Observation for Adobe Commerce tool allows you to analyze complex problems to help identify root causes. Instead of tracking disparate data, you can spend your time correlating events and errors to gain deeper insights into the causes of performance bottlenecks.

  Use the **Security** tab in the tool to get a clear view of potential security issues to help identify root causes and keep sites performing optimally.  **Security** tab.

- Analyze logs with [New Relic Logs](https://devdocs.magento.com/cloud/project/new-relic.html#new-relic-logs)

  Adobe Commerce on cloud infrastructure Pro projects include the [New Relic Logs](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic/log-management.html?lang=en) service. The service is pre-configured to aggregate all log data from your Staging and Production environments to display it in a centralized log management dashboard where you can search and visualize aggregated data.

  For other Commerce projects, you can set up and use the [New Relic Logs](https://docs.newrelic.com/docs/logs/get-started/get-started-log-management/) service to complete the following tasks:
  - Use [New Relic queries](https://docs.newrelic.com/docs/logs/new-relic-logs/ui-data/query-syntax-logs) to search aggregated log data.
  - Visualize log data through the New Relic Logs application.

## Audit accounts, code, and database

Review Commerce Admin and user accounts, application code, and database configuration and logs to identify and cleanup suspicious elements, remove obsolete accounts, reset passwords, check access control configuration, and redeploy code as needed.

Continue to closely monitor the site after the incident as many sites get compromised again within hours. Ensure ongoing log review and file integrity monitoring to quickly detect any signs of new compromise.

### Audit Admin user accounts

  - [Review Admin user access](https://experienceleague.adobe.com/docs/commerce-admin/systems/user-accounts/permissions-users-all.html)—Remove old, unused, or suspicious accounts and rotate passwords for all Admin users.

  - [Review Admin security settings](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-admin.html)—Verify that Admin security settings follow security best practices.

  - [Review user accounts for Adobe Commerce on cloud infrastructure projects](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/user-access.html)—Remove old, unused, or suspicious accounts and rotate passwords for all cloud project Admin users. Ensure that account security settings are configured correctly.

  - [Audit SSH keys](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/secure-connections.html) for Adobe Commerce on cloud infrastructure**—Review, delete, and rotate SSH keys.

### Audit code

- From the Admin, review the [HTML Header and Footer configuration](https://experienceleague.adobe.com/docs/commerce-admin/content-design/design/page-setup.html) in all scope levels, including `website` and `store view`. Remove any unknown JavaScript code from the scripts and stylesheets, and miscellaneous HTML settings. Retain only recognized code such as tracking snippets.

- Compare the current production code base to the code base stored in the Version Control System (VCS).

- Quarantine any suspicious code.

- Redeploy the codebase to the production environment to ensure nothing is left behind.

### Audit database configuration and logs

- Review any stored procedures for modifications.

- Verify that the database is only accessible by the Commerce instance.

- Verify the malware is no longer present by scanning the site with publicly available malware scanning tools.

- Secure the Admin panel by changing its name and verifying that the site `app/etc/local. xml` and `var` URLs are not publicly accessible.

- Continue to closely monitor the site after the incident as many sites get compromised again within hours. Ensure ongoing log review and file integrity monitoring to quickly detect any signs of new compromise.

## Remove Google warnings

If the site has been flagged by Google as containing malicious code, request a review once the site has been cleaned. Reviews for sites infected with malware take a few days. After Google determines the site is clean, warnings from search results and browsers should disappear within 72 hours. See [Request a review](https://web.dev/articles/request-a-review).

## Review malware results checklist

If publicly available malware scanning tools confirm that the site has been impacted, investigate the incident and work with the solution integrator to clean the site and follow recommended site remediation steps.

## Conduct additional reviews

When dealing with advanced attacks, the best course of action is to work with an experienced developer, third-party expert, or solution integrator to fully repair the site and review security practices. Working with a security professional helps ensure the deeper steps are taken to ensure the safety of your business and
its customers.

## Additional information

- [Root Cause Analysis Framework](https://sansec.io/kb/incident-response/magento-root-cause-analysis).
