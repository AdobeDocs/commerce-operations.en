---
title: '[!DNL Cloud Automation Patching Service (CAPS)]'
description: Learn about [!DNL Cloud Automation Patching Service (CAPS)], its uses, how to access it, and best practices for automated patching
hide: yes
hidefromtoc: yes
---
# [!DNL Cloud Automation Patching Service (CAPS)]

The [!DNL Cloud Automation Patching Service] ([!DNL CAPS]) is a tool that automates the process of applying and reverting patches for Adobe Commerce on Cloud environments. It offers Commerce project administrators a streamlined workflow to apply and revert patches that includes built-in validation and health checks to ensure that Cloud environments remains stable and secure.

This guide is designed for Adobe Commerce Cloud merchants and partners who want to streamline their patching process, reduce the risk of patch-related issues, improve their environment's security and stability, and automate routine patch operations.

## [!DNL CAPS] topics

* **[How to access](access.md)**
* **[Workflow](workflow.md)**
* **[Best practices](best-practices.md)**
* **[Troubleshooting](troubleshooting.md)**

## Tool overview

* **UI Interface**
  * Real-time patch availability and status display for specific project and environment combinations
  * Comprehensive patching status information showing progress, errors, and any other relevant messages
  * [!UICONTROL Patch Management Dashboard] for:
    * Viewing available patches
    * Applying patches with one-click operation
    * Reverting previously applied patches
    * Monitoring patch operation status and results

* **Automated patching service with structured workflow**
  * **Preliminary check** - Validates patch compatibility and environment readiness
  * **Patching** - Applies or reverts patches automatically in integration environments
  * **Validation** - Performs health checks and ensures critical functionalities are not impacted

* **Safety features**
  * Creates temporary integration environments for testing
  * Validates patch compatibility before application
  * Provides automatic rollback on validation failures
  * Applies patches to the `m2-hotfixes` folder with automatic removal during reversion

## Integrations with Adobe Commerce Cloud

[!DNL CAPS] is fully integrated with Adobe Commerce Cloud infrastructure and works seamlessly with your existing cloud environments. It leverages cloud-native features for optimal performance, provides detailed logging and monitoring, and integrates with Adobe Commerce Cloud support tools.

## Video Tutorial

Learn about the Adobe Cloud Automated Parching Service and how this tool helps users quickly find and apply security patches. The following video covers how to access it through the SWAT dashboard, choose your project and environment, and apply patches with one click.

>[!VIDEO](https://video.tv.adobe.com/v/3476247/?learn=on&enablevpops)

## Common use cases

* **Security patches** - Quickly apply critical security updates
* **Patch rollback** - Safely revert problematic patches applied through [!DNL CAPS]
* **Security compliance** - Maintain security standards with automated patching
* **Operational stability** - Ensure environment stability through automated validation
