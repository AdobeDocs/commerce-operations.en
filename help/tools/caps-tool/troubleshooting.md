---
title: '[!DNL Cloud Automated Patching Service (CAPS)] Troubleshooting Guide'
description: Troubleshoot common issues and error messages in [!DNL Cloud Automated Patching Service (CAPS)]
hide: yes
hidefromtoc: yes
---
# [!DNL Cloud Automated Patching Service (CAPS)] troubleshooting guide

When using [!DNL CAPS] for patch operations, you can encounter error messages and issues that can prevent successful patch application or reversion. This guide provides solutions for the most common problems.

## Quick troubleshooting steps

### If patch operation fails

* Check the operation status to understand which stage failed
* Review error messages for specific failure reasons
* Examine error logs for technical details
* Follow the solutions provided in this guide

### Patch operations duration

For most environments, the following timeline describes how long patch operations should take, but it could take longer depending on environment size and complexity:

* **Pre-processing:** 2-5 minutes
* **Patching:** 5-15 minutes
* **Post-processing:** 10-40 minutes
* **Total:** 15-60 minutes

### Cancel a patch in progress

>[!WARNING]
>
>Once a patch operation begins, it should be allowed to complete. The system includes cleanup procedures that run even if operations fail. Interrupting the process may leave your environment in an inconsistent state.

## Common success messages

* **"Job completed successfully"** - The patch was successfully applied/reverted without any issues.

* **"Patch has been applied"** - You're trying to apply a patch that's already been applied. The system detected the patch is already present in your environment. No action is needed.

* **"Patch has been reverted"** - You're trying to revert a patch that's already been reverted. The system detected the patch is not currently applied. No action is needed.

## Common error messages and solutions

### Patch application errors

#### "The patch cannot be applied because [!DNL CAPS] has detected these issues with your codebase or the patch file"

**When it occurs:** During preliminary check

**Cause:** The patch conflicts with your current codebase OR there's an issue with the patch itself

**Solutions:**

* Review the detailed error logs provided to identify if it's a codebase or patch issue
* Check for conflicting customizations in your code
* Verify the patch is compatible with your Adobe Commerce version
* Consider resolving conflicts manually or contact support

#### "This patch was not managed by [!DNL CAPS]. Cannot revert"

**When it occurs:** During revert operations

**Cause:** You're trying to revert a patch that wasn't applied through [!DNL CAPS]

**Solution:** Use the same method that was used to apply the patch originally, or contact support for manual assistance

### Environment and validation errors

#### "Environment is not in sync with parent"

**When it occurs:** During validation

**Cause:** Your integration environment differs from the parent environment

**Solutions:**

* Sync your environment with the parent branch
* Retry the patch operation
* Contact support if sync issues persist

#### "Production environment safeguards not met"

**When it occurs:** During preliminary check for production environments

**Cause:** The production environment does not meet the required safety conditions

**Solutions:**

* Enable maintenance mode for your production store
* Disable cron jobs in your production environment
* Verify both conditions are met before retrying

>[!IMPORTANT]
>
> [!DNL CAPS] does not automatically enable maintenance mode or disable cron jobs - these must be done externally by you

#### "Patch has been applied, but failed health check. Please consider reverting"

**When it occurs:** After patch application during validation

**Cause:** The patch was applied successfully, but health checks failed

**Solutions:**

* Review application logs for specific errors
* Test critical functionality manually
* Consider reverting the patch if issues persist
* Contact support if you need assistance

### Authentication and access errors

#### "Authentication failed for Adobe Commerce repository"

**When it occurs:** During any stage

**Cause:** Invalid or expired Adobe Commerce repository credentials

**Solutions:**

There are two recommended options for resolving this issue:

**Option 1: Fix `env:COMPOSER_AUTH` environment level variable (Recommended)**

* Ensure that you have set up the correct credentials for `env:COMPOSER_AUTH`.
* Access global configuration by clicking on the gear icon at the top left of your cloud project UI, then select the **Variables** tab.
* Make sure you select _Available during buildtime_ and deselect _Available during runtime_.

If Option 1 doesn't resolve your issue, proceed with Option 2.

**Option 2: Create and deploy `auth.json` file manually**

* SSH into your server.
* Retrieve contents of your current `env:COMPOSER_AUTH` variable using:  
   `echo $COMPOSER_AUTH`
* Copy all contents from step above (in JSON format).
* Create a new file named `auth.json` with these contents.
* Commit this newly created `auth.json` file to the root directory of your repository.
* Trigger a new deployment.

#### "Insufficient permissions for environment access"

**When it occurs:** During environment creation or access

**Cause:** Your user account lacks necessary permissions

**Solutions:**

* Check your user role and permissions
* Contact your system administrator
* Verify you have environment management permissions
* Ensure you have deployment permissions

### Resource and quota errors

#### "Environment quota exceeded"

**When it occurs:** During environment creation

**Cause:** You've reached your environment limit

**Solutions:**

* Deactivate unused environments
* Clean up old branches and deployments
* Contact support to request quota increase
* Consider upgrading your plan

#### "Insufficient resources for operation"

**When it occurs:** During any stage

**Cause:** Your environment lacks sufficient CPU, memory, or storage

**Solutions:**

* Check your environment resource usage
* Free up resources by cleaning up files
* Wait for resources to become available
* Contact support if resource issues persist

## Getting help

**When to contact support:**

Contact Adobe Commerce Cloud support when:

* Error messages are unclear or lack sufficient detail
* Patch operations consistently fail
* You need assistance with manual conflict resolution
* Health checks fail but the cause isn't apparent
* You need help with environment synchronization issues

**Information to provide:**

When contacting support, provide:

* **Project ID** - Your Adobe Commerce Cloud project identifier
* **Environment ID** - The specific environment where the issue occurred
* **Operation ID** - The [!DNL CAPS] operation identifier
* **Error details** - Complete error messages and logs
* **Steps to reproduce** - What you were doing when the error occurred
* **Previous attempts** - What you've already tried to resolve the issue

### Additional resources

For more detailed technical information:

* Review the complete error logs provided with failed operations
* Check Adobe Commerce documentation for patch-specific guidance
* Contact Adobe Commerce Cloud support for environment-specific issues

### Related topics

* [Adobe Commerce Cloud documentation](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/overview.html)
* [Adobe Commerce Installation Guide](https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/overview.html)
* [CAPS introduction](intro.md)
* [How to access](access.md)
* [Workflow](workflow.md)
* [Best practices](best-practices.md)
