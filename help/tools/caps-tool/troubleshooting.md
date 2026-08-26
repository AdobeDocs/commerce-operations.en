---
title: '[!DNL Adobe Commerce Patching Automation] Troubleshooting Guide'
description: Troubleshoot common issues and error messages in [!DNL Adobe Commerce Patching Automation]
hide: true
---
# [!DNL Adobe Commerce Patching Automation] troubleshooting guide

When using [!DNL Patching Automation] for patch operations, you can encounter error messages and issues that can prevent successful patch application or reversion. This guide provides solutions for the most common problems.

## Quick troubleshooting steps

### If patch operation fails

* Check the operation status to understand which stage failed
* Review error messages for specific failure reasons
* Examine error logs for technical details
* Follow the solutions provided in this guide

>[!TIP]
>
>In the Cloud Console, deployment logs are available from your project's Activity feed — even after a temporary integration environment has been deleted.

### Patch operations duration

For most environments, the following timeline describes how long patch operations should take, but it could take longer depending on environment size and complexity:

* **Pre-processing:** 2-5 minutes
* **Patching:** 5-15 minutes
* **Post-processing:** 10-40 minutes
* **Total:** 15-60 minutes

>[!NOTE]
>
>Post-processing time is estimated from your environment's own deployment history, so it may fall outside the range above for unusually fast- or slow-deploying environments.

### Cancel a patch in progress

>[!WARNING]
>
>Once a patch operation begins, it should be allowed to complete. The system includes cleanup procedures that run even if operations fail. Interrupting the process may leave your environment in an inconsistent state.

## Common success messages

* **"Job completed successfully"** - The patch was successfully applied/reverted without any issues.

* **"Patch has been applied"** - You're trying to apply a patch that's already been applied. The system detected the patch is already present in your environment. No action is needed.

* **"Patch has been reverted"** - You're trying to revert a patch that's already been reverted. The system detected the patch is not currently applied. No action is needed.

## Common error messages and solutions

>[!NOTE]
>
>Not every possible error is listed below. An unlisted failure during preliminary check appears as the generic "Error during preliminary check"; an unlisted failure during validation appears as the generic "Error during post-processing" — contact support with the exact error text either way. During patching, an unanticipated failure shows the raw underlying error message directly instead of either generic fallback.

### Environment readiness errors

#### "The last deployment was not successful. Please ensure the environment is stable before applying or reverting patches."

**When it occurs:** At the start of preliminary check, before any patch-specific validation

**Cause:** Your target environment's most recent deployment did not complete successfully

**Solution:** Redeploy your target environment and confirm the deployment completes successfully (check its deployment log in the Cloud Console) before retrying the patch operation.

### Patch application errors

#### "The patch cannot be applied because [!DNL Patching Automation] has detected these issues with your codebase or the patch file"

**When it occurs:** During preliminary check

**Cause:** The patch conflicts with your current codebase OR there's an issue with the patch itself

**Solutions:**

* Review the detailed error logs provided to identify if it's a codebase or patch issue
* Check for conflicting customizations in your code
* Verify the patch is compatible with your Adobe Commerce version
* Consider resolving conflicts manually or contact support

#### "You're trying to revert a patch that wasn't applied through [!DNL Patching Automation]. It is likely the patch was applied manually."

**When it occurs:** During revert operations

**Cause:** You're trying to revert a patch that wasn't applied through [!DNL Patching Automation]

**Solution:** Use the same method that was used to apply the patch originally, or contact support for manual assistance

### Environment and validation errors

#### "Environment is not in sync with parent"

**When it occurs:** During validation, in the pre-merge sync check — before the integration environment is merged into your target environment

**Cause:** Your integration environment differs from the parent environment, usually because the target environment changed while the patch was being tested

**Solutions:**

* Retry the patch operation once the target environment is stable
* Avoid making changes to the target environment while a patch operation is in progress
* Contact support if sync issues persist

#### "Post-merge verification failed: environments are not in sync after merge."

**When it occurs:** During validation, after the integration environment has already been merged into your target environment

**Cause:** The code in the two environments' code does not match after merging, usually a temporary Platform.sh API propagation delay rather than a real conflict

**Solutions:**

* Wait a few minutes and check the environment status again. This issue often resolves on its own
* If the environments still do not match after a few minutes, contact Adobe Support.

#### "Cannot create patch job in production environment when cron is enabled and maintenance mode is disabled. Please enable maintenance mode and disable cron jobs before applying patches."

**When it occurs:** During preliminary check for production environments

**Cause:** The production environment does not meet the required safety conditions

**Solutions:**

* Enable maintenance mode for your production store
* Disable cron jobs in your production environment
* Verify both conditions are met before retrying
* Alternatively, select the override checkbox in the UI to skip these checks and proceed anyway. Only use the override option if you understand the risk of patching production without those safeguards in place

>[!IMPORTANT]
>
> [!DNL Patching Automation] does not automatically enable maintenance mode or disable cron jobs - these must be done externally by you

#### "The patch operation completed but the environment health check failed. This indicates potential issues with the deployment. Please review the environment status and consider reverting the change."

**When it occurs:** After patch application or reversion, during validation

**Cause:** The patch was applied or reverted successfully, but the subsequent health check failed

**Solutions:**

* Test the storefront and critical checkout and Admin workflows to confirm whether customers are actually affected
* In the Cloud Console, review the environment status and inspect the application and deployment logs in the projects **Activity** feed. Look for errors associated with patch operation or deployment.
* Trigger a manual redeployment to determine whether the health-check failure was caused by a transient deployment or infrastructure issue.
* If the issue persists, revert the patch. If the patch is managed by [!DNL Patching Automation] and the operation is available, select [!UICONTROL Revert]. If the patch is a custom patch in the `m2-hotfixes` directory, delete the patch file from the project repository. Commit and push the change, then redeploy the environment.
* If the issue persists, contact Adobe Support.Include the following information in your support request: support Project ID, Environment ID, and this exact message: the last operation didn't complete cleanly, so support may need to confirm the environment's state.

### Authentication and access errors

#### "Access denied"

**When it occurs:** When your account lacks the required permissions during environment creation or access

**Cause:** Your user account lacks necessary permissions

**Solutions:**

* Check your user role and permissions
* Contact your system administrator
* Verify you have environment management permissions
* Ensure you have deployment permissions

### GitHub integration errors

#### "No Git credentials available for provider "github". Install the Patching Automation GitHub app for this repository"

**When it occurs:** During patch operations for projects connected to GitHub

**Cause:** The [!DNL Patching Automation] GitHub App is not installed on your repository

**Solution:** Follow the steps in [Set up the GitHub integration for [!DNL Patching Automation]](github-integration.md)

#### "GitHub API request failed"

**When it occurs:** During patch operations for GitHub-connected projects

**Cause:** A temporary issue prevented the service from connecting to GitHub

**Solution:** Wait a few minutes and retry the operation. If the error continues, contact [Adobe Commerce Cloud support](https://experienceleague.adobe.com/home#support)

#### "Environment not created within timeout" (GitHub-connected project)

**When it occurs:** During integration-environment creation

**Cause:** The project's GitHub integration has the `fetch-branches` option disabled. As a result, the temporary branches pushed by the service are not synchronized, and the integration environment is never created.

**Solution:** Enable the integration's [`fetch-branches` option](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/dev-tools/integrations/github#enable-the-github-integration), then retry the operation. See [Set up the GitHub integration for [!DNL Patching Automation]](github-integration.md).

### Environment activation errors

#### "Unable to activate integration environment."

**When it occurs:** When [!DNL Patching Automation] cannot activate the temporary integration environment required to test the patch safely.

**Cause:** Depends on the additional details shown alongside the error:

**If the details mention Composer or Adobe Commerce packages:**

* Log in to [https://account.magento.com/](https://account.magento.com/) (or have your account owner do so) and confirm your account has access to the Commerce Enterprise codebase.
* Verify your project's Composer public/private key pair is correct — see [Authentication keys](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/authentication-keys).
* Sign in to [https://account.magento.com/](https://account.magento.com/) (or ask your account owner to do so) and confirm your account has access to the Commerce Enterprise codebase.
* Verify that your project's Composer public and private authentication keys are correct. See [Authentication keys](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/authentication-keys).
* Confirm that the package named in the error message is available for your Commerce version. See [Adobe Commerce packages](https://experienceleague.adobe.com/en/docs/commerce-operations/release/packages/adobe-commerce).

**If the details mention environment slots or resources:**

* In the Cloud Console, open the project overview and review the environments and their statuses. Deactivate or delete any unused integration environments: Select the environment. Go to **[!UICONTROL Settings] > [!UICONTROL General]**. Set the environment status to inactive.

  Alternatively, use the CLI: `magento-cloud environment:list` / `magento-cloud environment:deactivate <environment-name>` 
* Verify that our project has sufficient resources, for example disk space.
* Ensure that the parent environment is stable (no active deployment) at the time of the operation.
* Contact Adobe Support if you need to increase your environment limit.

**For any other cause:** review the detailed error logs in the Patching Automation UI, or contact support with the exact error text.

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
* **Operation ID** - The [!DNL Patching Automation] operation identifier
* **Error details** - Complete error messages and logs
* **Steps to reproduce** - What you were doing when the error occurred
* **Previous attempts** - What you've already tried to resolve the issue

### Additional resources

For more detailed technical information:

* Review the complete error logs provided with failed operations
* Check Adobe Commerce documentation for patch-specific guidance
* Contact Adobe Commerce Cloud support for environment-specific issues

### Related topics

* [Adobe Commerce Cloud documentation](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/overview)
* [Adobe Commerce Installation Guide](/help/installation/overview.md)
* [Patching Automation introduction](intro.md)
* [How to access](access.md)
* [Workflow overview](workflow.md)
* [GitHub integration](github-integration.md)
* [Best practices](best-practices.md)
