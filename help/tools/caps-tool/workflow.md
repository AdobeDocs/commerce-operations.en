---
title: '[!DNL Adobe Commerce Patching Automation] Workflow Overview'
description: Learn about the [!DNL Adobe Commerce Patching Automation] workflow process, including terminology, workflow phases, and operations for automated patch management.
hide: true
---
# [!DNL Adobe Commerce Patching Automation] workflow overview

This topic provides a high-level overview of how patch operations work using [!DNL Adobe Commerce Patching Automation].

## Terminology

* **Operations** - the main actions performed by the service:
  * Apply
  * Revert
* **Phases** - the three phases of the workflow:
  * Preliminary check
  * Patching
  * Validation
* **Environment** - the Adobe Commerce Cloud environment where patches are applied.

## Operations

[!DNL Patching Automation] supports two main *operations* for managing patches in your Adobe Commerce Cloud environment:

* **Apply operation** - adds patch changes to your codebase through a safe, validated process. Patches are applied by placing patch files in the `m2-hotfixes` folder.

* **Revert operation** - removes previously applied patches from your codebase by removing patch files from the `m2-hotfixes` folder.

>[!IMPORTANT]
>
>Revert operations are only available for patches that were originally applied through [!DNL Patching Automation]. Patches applied manually or through other methods cannot be reverted using this service.

## Phases

The [!DNL Patching Automation] workflow uses three *phases* that are always executed in this order to ensure that patches are applied safely and reliably:

* **Preliminary check** - validates patch compatibility and environment readiness.
* **Patching** - applies or reverts the patch in an integration environment.
* **Validation** - validates the patch application and performs health checks.

## Phase details

### Phase 1: Preliminary check

The Preliminary Check phase validates that the patch can be safely applied to your environment.

**What happens:**

* **Production environment safeguards** (Production environments only):
  * Checks if store is in maintenance mode
  * Verifies cron jobs are disabled
  * Blocks patching if conditions are not met
  * Displays confirmation dialog if conditions are met
* **Patch validation** - verifies the patch file is valid and compatible
* **Environment assessment** - checks environment readiness and resources
* **Conflict detection** - identifies potential conflicts with existing code
* **Dependency check** - validates Adobe Commerce version compatibility

### Phase 2: Patching

The Patching phase applies or reverts the patch in a temporary integration environment. During this stage, the service creates a temporary integration environment to safely apply the patch, confirm it deploys successfully, and verify it passes a health check — before making any changes to your actual environment.

This approach provides:

* **Safety** - keeps your target environment untouched until the integration environment deploys successfully and passes its health check
* **Rollback capability** - if issues are detected
* **Isolation** - for each patch operation

#### Stage 2a: Integration environment creation

**Branch creation** - [!DNL Patching Automation] creates a temporary integration environment branch named `{target-environment}-CAPS-{patch-id}`

**Environment setup** - The integration environment is created as a child of your target environment

**Code synchronization** - The integration environment inherits the exact code state of your target environment (the same codebase)

**No data cloning** - The integration environment does not receive a copy of the target environment's data (database, media, or other stored content)—only the codebase is used to apply and verify the patch

**Resource requirements** - Your Cloud project's total storage capacity is defined in your contract. (Check via your account page or `magento-cloud subscription:info`). Each environment's disk allocation is configured separately, via the `disk` property in `.magento.app.yaml`/`.magento/services.yaml`. See [Manage disk space](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/storage/manage-disk-space) for details. If a patch operation fails due to storage limitations, check your integration environment's disk usage (`magento-cloud db:size` / `magento-cloud mount:size`) against its configured allocation.

#### Stage 2b: Patch application in integration environment

**Safe testing** - The patch is applied to the integration environment, not directly to your target environment

**File management** - Patch files are placed in the `m2-hotfixes` folder

**Git operations** - Changes are committed and pushed to the integration environment branch

**Environment activation** - The integration environment is activated to deploy the patched code

**Health check** - Once activated, [!DNL Patching Automation] confirms the following before proceeding to merge:  the integration environment deployed successfully and is healthy, the application starts, and its database and cache connections are reachable.

>[!NOTE]
>
>If your project uses an external GitHub repository, the service handles authentication automatically using the [[!DNL Patching Automation] GitHub App](github-integration.md). No additional credentials are required beyond installing the App.

#### Stage 2c: Merge back to target environment

**Sync check** - Before merging, the service confirms that the integration environment is still active, in sync with the target environment, and healthy. If the target has changed during patching, the operation stops here instead of merging

**Environment checkout** - The service checks out your target environment locally

**Merge operation** - The integration environment branch is merged into the target environment

**Conflict handling** - If a merge conflict occurs, the operation fails and is reported as an error — it is not resolved automatically

**Deployment** - The merged changes are deployed to your target environment

**Verification** - The service verifies that the merge was successful and the environments are in sync

### Integration environment lifecycle

Integration environments have a specific lifecycle during the patching stage:

* **Creation** - Created at the start of the patching stage
* **Active period** - Remain active during patch application and testing
* **Cleanup** - Deleted immediately if the operation fails during the Patching phase, before merge. Otherwise deleted during the Validation phase, after merge, whether or not validation passes

### Phase 3: Validation

The Validation phase confirms that the patched application starts successfully and passes a health check.

**What happens:**

* **Application health check** - verifies the application starts and runs properly, and that its database and cache connections are reachable
* **Cleanup** - removes the temporary integration environment and updates the job status to reflect completion. The environment's activity remains visible in your project's Activity feed.

>[!IMPORTANT]
>
>Unlike Phases 1 and 2, this health check runs *after* the patch has already been merged into your target environment. If it fails, the merge is not automatically rolled back. Your target environment can be left in a broken state, and manual intervention (such as reverting the patch) is required to restore it. See [Troubleshooting](troubleshooting.md) for what to do if this happens.

## Success indicators

**Apply operation:**

* "Job completed successfully" - Patch applied without issues
* "Patch has been applied" - Patch was already present (no action needed)
* Patch file successfully placed in `m2-hotfixes` folder
* All validation checks pass
* Application health checks successful

**Revert operation:**

* "Job completed successfully" - Patch reverted without issues
* "Patch has been reverted" - Patch was already reverted (no action needed)
* Patch file successfully removed from `m2-hotfixes` folder
* All validation checks pass
* Application health checks successful

## Production environment safeguards

Applying or reverting patches on a production environment carries more risk than on other environments, so [!DNL Patching Automation] includes two safeguards specific to production.

### Confirmation before starting

Before any apply or revert operation starts on a production environment, you're prompted to confirm the operation in a dialog. This confirmation step protects against accidentally starting a job on production.

### Recommended preconditions

Adobe recommends enabling maintenance mode and disabling cron jobs before patching a production environment. By default, [!DNL Patching Automation] verifies that both conditions are met and blocks the operation with a notification if either condition is not met. If you understand the risks of proceeding without maintenance mode or with cron jobs enabled, select the override checkbox in the UI to bypass this check.

* **Maintenance mode** - Recommended to be enabled
* **Cron jobs** - Recommended to be disabled

## Related topics

* [Patching Automation introduction](intro.md)
* [How to access](access.md)
* [GitHub integration](github-integration.md)
* [Best practices](best-practices.md)
* [Troubleshooting](troubleshooting.md)
