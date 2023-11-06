---
title: Respond to a security incident
description: Handle security incidents by following best practices to respond to and remediate security issues that affect site availability and performance.
role: Admin, Developer, Leader, User
feature: Best Practices
exl-id: 77275d37-4f1d-462d-ba11-29432791da6a
---
# Best practices to respond to a security incident

The following article summarizes best practices to respond to a security incident and remediate issues that impact Adobe Commerce site availability, reliability, and performance.

Following these best practices can help prevent unauthorized access and malware attacks. If a security incident does occur, these best practices help you prepare for an immediate response, conduct a root cause analysis, and manage the remediation process to restore normal operations.

>[!TIP]
>
> Adobe has found that most security incidents occur when threat actors take advantage of existing, unpatched vulnerabilities, poor passwords, and weak ownership and permission settings in the Commerce application and infrastructure configuration. Minimize the occurrence of security incidents by reviewing and following Adobe security best practices when setting up, configuring, and updating Adobe Commerce installations. See [Security Best Practices](../launch/security-best-practices.md).


## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Respond to an incident

If you suspect that your Adobe Commerce on cloud infrastructure project is impacted by a security incident, critical first steps are:

- Audit all admin user account access
- Enable advanced multi-factor authentication (MFA) controls
- Preserve critical logs
- Review security upgrades for your version of Adobe Commerce.

More recommendations are detailed below.

## Take immediate action in the event of an attack

In the unfortunate event of a site compromise, here are some key recommendations to follow:

- Engage your system integrator and appropriate security personnel to conduct investigation and remediation efforts.

- Determine the scope of the attack:
  - Was credit card information accessed?
  - What information was stolen?
  - How much time has elapsed since the compromise?
  - Was the information encrypted?

- Try to find the attack vector to determine when and how the site was compromised, by reviewing server log files and file changes.

  - In certain circumstances, it may be advisable to wipe and reinstall everything or, in the case of virtual hosting, create a fresh instance. Malware could be hidden in an unsuspected location just waiting to restore itself.

  - Remove all unnecessary files. Then, reinstall required files from a known, clean source. For example, you can reinstall using files from your version control system, or from the original distribution files from Adobe.

  - Reset all credentials, including the database, file access, payment and shipping integrations, web services, and Admin login. Also reset all integration and API keys and accounts that might be used to attack the system.

## Analyze an incident

The first step of incident analysis is to gather as many facts as possible, as quickly as you can. Gathering information surrounding the incident can help determine the potential cause of the incident. Adobe Commerce provides the tools below to assist with your incident analysis.

- [Audit Admin Action Logs](https://docs.magento.com/user-guide/system/action-log-report.html).

  The Action Logs Report displays a detailed record of all admin actions that are enabled for logging. Each record is time stamped and registers the IP address and name of the user. The log detail includes admin user data and related changes that were made during the action.

- Analyze events with the [Observation for Adobe Commerce tool](https://experienceleague.adobe.com/docs/commerce-operations/tools/observation-for-adobe-commerce/intro.html?lang=en).

  The Observation for Adobe Commerce tool allows you to analyze complex problems to help identify root causes. Instead of tracking disparate data, you can spend your time correlating events and errors to gain deeper insights into the causes of performance bottlenecks.

  Use the **Security** tab in the tool to get a clear view of potential security issues to help identify root causes and keep sites performing optimally.

- Analyze logs with [New Relic Logs](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic/new-relic-service.html)

  Adobe Commerce on cloud infrastructure Pro projects include the [New Relic Logs](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/monitor/new-relic/log-management.html) service. The service is pre-configured to aggregate all log data from your Staging and Production environments to display it in a centralized log management dashboard where you can search and visualize aggregated data.

  For other Commerce projects, you can set up and use the [New Relic Logs](https://docs.newrelic.com/docs/logs/get-started/get-started-log-management/) service to complete the following tasks:
  - Use [New Relic queries](https://docs.newrelic.com/docs/logs/new-relic-logs/ui-data/query-syntax-logs) to search aggregated log data.
  - Visualize log data through the New Relic Logs application.

## Audit accounts, code, and database

Review Commerce Admin and user accounts, application code, and database configuration and logs to identify and clean up suspicious code, remove obsolete accounts, reset passwords, check access control configuration, and redeploy code as needed.

Continue to closely monitor the site after the incident as many sites get compromised again within hours. Ensure ongoing log review and file integrity monitoring to quickly detect any signs of new compromise.

### Audit Admin user accounts

- [Review Admin user access](https://experienceleague.adobe.com/docs/commerce-admin/systems/user-accounts/permissions-users-all.html)—Remove old, unused, or suspicious accounts and rotate passwords for all Admin users.

- [Review Admin security settings](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-admin.html)—Verify that Admin security settings follow security best practices.

- [Review user accounts for Adobe Commerce on cloud infrastructure projects](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/user-access.html)—Remove old, unused, or suspicious accounts and rotate passwords for all cloud project Admin users. Ensure that account security settings are configured correctly.

- [Audit SSH keys](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/secure-connections.html) for Adobe Commerce on cloud infrastructure—Review, delete, and rotate SSH keys.

### Audit code

- From the Admin, review the [HTML Header and Footer configuration](https://experienceleague.adobe.com/docs/commerce-admin/content-design/design/page-setup.html) in all scope levels, including `website` and `store view`. Remove any unknown JavaScript code from the scripts and style sheets, and miscellaneous HTML settings. Retain only recognized code such as tracking snippets.

- Compare the current production code base to the code base stored in the Version Control System (VCS).

- Quarantine any suspicious code.

- Ensure that there are no remnants of suspicious code by redeploying the codebase to the production environment.

### Audit database configuration and logs

- Review any stored procedures for modifications.

- Verify that the database is only accessible by the Commerce instance.

- Verify that malware is no longer present by scanning the site with publicly available malware scanning tools.

- Secure the Admin panel by changing its name and verifying that the site `app/etc/local.xml` and `var` URLs are not publicly accessible.

- Continue to closely monitor the site after the incident as many sites get compromised again within hours. Ensure ongoing log review and file integrity monitoring to quickly detect any signs of new compromise.

## Remove Google warnings

If the site has been flagged by Google as containing malicious code, request a review once the site has been cleaned. Reviews for sites infected with malware take a few days. After Google determines the site is clean, warnings from search results and browsers should disappear within 72 hours. See [Request a review](https://web.dev/articles/request-a-review).

## Review malware results checklist

If publicly available malware scanning tools confirm a malware attack, investigate the incident. Work with the solution integrator to clean the site and follow the recommended remediation process.

## Conduct additional reviews

When dealing with sophisticated attacks, the best course of action is to work with an experienced developer, third-party expert, or solution integrator to fully repair the site and review security practices. Working with experienced security professionals ensures that comprehensive, advanced measures are taken to ensure the safety of your business and its customers.

## Additional information

- [Root Cause Analysis Framework](https://sansec.io/kb/incident-response/magento-root-cause-analysis).
