---
title: How [!DNL Cloud Automated Patching Service (CAPS)] workflow works
description: Learn about the [!DNL Cloud Automated Patching Service (CAPS)] workflow process, including terminology, workflow phases, and operations for automated patch management.
hide: yes
hidefromtoc: yes
---
# How the [!DNL Cloud Automated Patching Service (CAPS)] workflow works

This topic provides a high-level overview of how patch operations work using [!DNL CAPS (Cloud Automated Patching Service)].

## Terminology

* **Operations** - the main actions performed by [!DNL CAPS]:
  * Apply
  * Revert
* **Phases** - the three phases of the workflow:
  * Preliminary check
  * Patching
  * Validation
* **Environment** - the Adobe Commerce Cloud environment where patches are applied.

## Operations

[!DNL CAPS] supports two main *operations* for managing patches in your Adobe Commerce Cloud environment:

* **Apply Operation**: adds patch changes to your codebase through a safe, validated process. Patches are applied by placing patch files in the 'm2-hotfixes' folder.

* **Revert Operation**: removes previously applied patches from your codebase by removing patch files from the 'm2-hotfixes' folder.

>[!IMPORTANT]
>
>Revert operations are only available for patches that were originally applied through [!DNL CAPS]. Patches applied manually or through other methods cannot be reverted using this service.

## Phases

The [!DNL CAPS] workflow uses three *phases* that are always executed in this order to ensure that patches are applied safely and reliably:

* **Preliminary Check**: validates patch compatibility and environment readiness.
* **Patching**: applies or reverts the patch in an integration environment.
* **Validation**: validates the patch application and performs health checks.

## Phase details

### Phase 1: Preliminary check

The Preliminary Check phase validates that the patch can be safely applied to your environment.

**What happens:**

* **Production Environment Safeguards** (Production environments only):
  * Checks if store is in maintenance mode
  * Verifies cron jobs are disabled
  * Blocks patching if conditions are not met
  * Displays confirmation dialog if conditions are met
* **Patch Validation**: verifies the patch file is valid and compatible
* **Environment Assessment**: checks environment readiness and resources
* **Conflict Detection**: identifies potential conflicts with existing code
* **Dependency Check**: validates Adobe Commerce version compatibility

### Phase 2: Patching

The Patching phase applies or reverts the patch in a temporary integration environment for testing. During this stage, [!DNL CAPS] creates a temporary test environment to safely apply and test the patch before making changes to your actual environment.

This approach provides:

* **Safety** by keeping your target environment untouched until the patch is validated
* **Testing** in a real environment before affecting production  
* **Rollback capability** if issues are detected
* **Isolation** for each patch operation

#### Stage 2a: Integration environment creation

**Branch Creation**: [!DNL CAPS] creates a temporary integration environment branch named `{target-environment}-CAPS-{patch-id}`

**Environment Setup**: The integration environment is created as a child of your target environment

**Code Synchronization**: The integration environment inherits the exact state of your target environment

**Resource Requirements**: [!DNL CAPS] creates a temporary environment using the codebase from your target environment. According to Adobe Commerce Cloud documentation, each environment (including integration environments) has separate storage allocation based on your contracted storage plan. The amount of storage you contracted represents the total storage for each environment. In most cases, you will not face any issues with resource limitations. If you encounter any error with resource limitations, please check your application size and your contracted storage in your plan.

#### Stage 2b: Patch application in integration environment

**Safe Testing**: The patch is applied to the integration environment, not directly to your target environment

**File Management**: Patch files are placed in the `m2-hotfixes/` directory

**Git Operations**: Changes are committed and pushed to the integration environment branch

**Environment Activation**: The integration environment is activated to deploy the patched code

#### Stage 2c: Merge back to target environment

**Environment Checkout**: [!DNL CAPS] checks out your target environment locally

**Merge Operation**: The integration environment branch is merged into the target environment

**Conflict Resolution**: If any conflicts occur, they are resolved automatically when possible

**Deployment**: The merged changes are deployed to your target environment

**Verification**: [!DNL CAPS] verifies that the merge was successful and the environments are in sync

**Environment Cleanup**: The temporary integration environment is deleted to free up resources

## Integration environment lifecycle

Integration environments have a specific lifecycle during the patching stage:

* **Creation**: Created at the start of the patching stage
* **Active Period**: Remain active during patch application and testing
* **Cleanup**: Automatically deleted after successful merge or if the operation fails

### Phase 3: Validation

The Validation phase ensures the patched application works correctly and performs health checks.

**What happens:**

* **Application Health Check**: verifies the application starts and runs properly
* **Cleanup**: removes temporary environment, updates logs, notifies completion

## Success indicators

**Apply Operation:**

* **"Job completed successfully"** - Patch applied without issues
* **"Patch has been applied"** - Patch was already present (no action needed)
* Patch file successfully placed in 'm2-hotfixes' folder
* All validation checks pass
* Application health checks successful

**Revert Operation:**

* **"Job completed successfully"** - Patch reverted without issues
* **"Patch has been reverted"** - Patch was already reverted (no action needed)
* Patch file successfully removed from 'm2-hotfixes' folder
* All validation checks pass
* Application health checks successful

## Production environment safeguards

[!DNL CAPS] includes specific safeguards for production environments to prevent accidental disruptions and ensure patches are safely validated beforehand.

### Preconditions for production patching

Before applying patches to production environments, [!DNL CAPS] checks for two critical conditions:

* **Maintenance Mode** - The store must be in maintenance mode
* **Cron Jobs Disabled** - Cron jobs must be disabled

If either condition is not met, the patch application is blocked and the user is notified.
