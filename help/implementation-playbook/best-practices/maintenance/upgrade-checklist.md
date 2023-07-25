---
title: Upgrade checklist best practices
description: Learn how to create and use an upgrade checklist to plan your Adobe Commerce and Magento Open Source upgrade strategy.
role: Leader
feature: Best Practices
exl-id: c9b644fa-290c-4f33-b5a7-19f7122ff08e
---
# Upgrade checklist best practices

Use this checklist during your annual and quarterly conversations with your eCommerce team. Many companies work from annual budgets and roadmaps. It is imperative, during these annual discussions, that you talk about your platform's health, direction, and upgrade strategy for the year, along with how it fits into the overall goals and KPIs of the business. During quarterly conversations, make sure the annual plan you created is still aligned with your current situation or pivot if not. The goal of this Upgrade Plan Checklist is to help you plan and schedule Adobe Commerce upgrades to ensure a successful upgrade process during the year. This checklist is meant to be used by the following audiences for annual planning and quarterly review:

- Director / Manager IT
- eCommerce Manager
- Solution Partner / Consultant

>[!NOTE]
>
>For a detailed description of the technical steps to upgrade successfully, refer to [Complete upgrade prerequisites](../../../upgrade/prepare/prerequisites.md) in our user documentation.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises 

## Goals

▢ Review current KPIs and adjust as needed.

## Extensions & Customizations

▢ Review all current extensions and customizations and ensure they are still needed based on business requirements.

▢ Consider replacing any extensions that don't have a good track record of keeping up-to-date with Adobe Commerce versions.

## Team

▢ Ensure you have the right team in place with the proper Adobe Commerce certifications and skill sets.

## Budget & Timing

▢ Use the Adobe Commerce [release schedule](../../../release/schedule.md) to plan your next upgrade and prepare ahead of time.

▢ Discuss which version you think you'll adopt (full or security-only) based on anticipated needs.

▢ Set aside a budget and team capacity for the upgrade.

## Third-party Integrations

▢ Review current Adobe Commerce third-party integrations and their maintenance windows for the year, and consider aligning upgrade work with your maintenance schedule.

## Scope & Deployment Planning

▢ Early access activities

- Partner participates in [Beta](../../../release/beta.md)
- Beta release note review. 

▢ Agree on budget, timeline, scope.

▢ Run the [Upgrade Compatibility Tool](../../../upgrade/upgrade-compatibility-tool/overview.md)

▢ Consider using the upgrade to address issues identified by the [Site Wide Analysis Tool](../../../tools/site-wide-analysis-tool/intro.md).

▢ Document dependencies and any technical stack changes required, such as PHP or Elastic Search versions.

▢ Gather project team with Adobe Commerce certifications.

▢ Create stakeholder communication plan.

▢ Plan maintenance window if downtime is anticipated.

▢ Review and approve the testing strategy; consider using the Adobe Commerce [test framework](https://developer.adobe.com/commerce/testing/) or a third-party automation suite.

▢ Confirm that all extensions and customizations are compatible.

▢ Review and update the post-launch playbook; to be used if issues are discovered during or after the upgrade.

## Post Deployment

▢ Monitor site for issues – performance, order processing, analytics, and others.

▢ Perform an Adobe Commerce [security scan](https://account.magento.com/scanner/dashboard/) or other third-party scan and review potential security vulnerabilities.

▢ Perform a retrospective with all stakeholders and document what went well and what didn't and how to improve.

▢ Modify your plan for the next upgrade with lessons learned.
