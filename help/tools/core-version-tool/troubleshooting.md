---
title: '[!DNL Commerce Version Tool] Troubleshooting'
description: Learn how to troubleshoot [!DNL Commerce Version Tool] Composer detection, internal dry-run checks, registry cache, JSON output, and audit log issues.
hide: true
---
# [!DNL Commerce Version Tool] troubleshooting

Use this page to troubleshoot common [!DNL Commerce Version Tool] ([!DNL CVT]) issues with Composer detection, registry loading, internal dry-run patch detection, output generation, and audit logging.

## Quick troubleshooting steps

If the [!DNL CVT] tool does not return the expected patch-status report:

- Confirm that the target installation uses a supported Adobe Commerce version and edition.
- Confirm that `composer.lock` is present and matches the environment you want to inspect.
- Confirm that PHP and the system `patch` binary are available.
- Confirm that [!DNL CVT] can read the patch registry file.
- Review `warnings`, `missing_patches`, and `unknown_patches` in the output.
- Check `var/log/patch_status.log` for the audit summary from the run, if the log file is created.

>[!TIP]
>
> The log file is most helpful when you need to understand why a patch could not be classified. For each unknown patch, the log records the commands the tool tried and any errors or failures it encountered. 
>
> If you have issues fetching the registry or patch files, check the warnings field in the report. Those details do not appear in the log.

## Common issues and solutions

### Base version cannot be detected

If the [!DNL CVT] tool cannot find the Adobe Commerce base version, check these conditions:

**Check:**

- `composer.lock` is missing.
- `composer.lock` does not match the installed Adobe Commerce codebase.
- Are you running the `patch-status` command outside the Adobe Commerce project root?
- The installed Adobe Commerce version is not represented in the patch registry file.

**Warning messages:**

The tool emits the following strings in the warnings output field for this scenario:

```shell-session
No recognized Commerce base package found in composer.lock
composer.lock exists but could not be read
composer.lock could not be parsed as JSON
```

Any of these messages indicate that the tool cannot detect the base version and exits with code `1` and that no patch detection is performed.

**Actions:**

- Run the `patch-status` command from the Adobe Commerce project root.
- Confirm that `composer.lock` is present and current.
- Verify that the installed Adobe Commerce version is represented in the patch registry file.

### Patch registry cannot be fetched

If the [!DNL CVT] tool cannot fetch the latest patch registry file, check network and cache settings:

**Check:**

- The network is unavailable.
- The Adobe patch endpoint request times out.
- `--no-cache` was used and the remote registry cannot be reached.
- `PATCH_REGISTRY_URL` points to an unavailable registry or is not a valid HTTPS URL.
- If the [!DNL CVT] tool cannot fetch the latest patch registry file, check network and cache settings:

>[!NOTE]
>
>If the registry file is missing or expired the tool downloads the latest registry from the remote host.

**Warning messages:**

The tool emits the following strings in the warnings output field for this scenario:

```shell-session
Remote registry fetch failed (HTTP 403). Check PATCH_REGISTRY_URL (if set) and network connectivity.
Remote registry response was not valid JSON; ignoring.
Could not load remote registry. Using cached registry (3 hours old). CVE coverage may be incomplete.
Patch registry could not be loaded.
Could not fetch remote registry and --no-cache was set; aborting.
```

The stale cache message includes the actual age in hours, for example, `(3 hours old)`.

The `patch registry could not be loaded` and `could not fetch remote registry` warnings indicate that the tool exited without running patch detection.

**Actions:**

- Re-run the `patch-status` command when network connectivity is available.
- Allow the [!DNL CVT] tool to use the cached registry if a stale cache warning is acceptable for the scan.
- Remove `--no-cache` unless you require fresh remote fetches.
- Confirm that the [!DNL CVT] tool can write to `var/patch_metadata/` if you want to reuse the registry cache.

### Patch diff cannot be fetched or verified

If the [!DNL CVT] tool cannot test one or more applicable patches, check patch-diff access:

**Check:**

- A patch diff cannot be downloaded from the Adobe patch endpoint.
- Required credentials for authenticated patch downloads are missing or invalid.
- `PATCH_DIFF_BASE_URL` points to an unavailable patch-diff source or is not a valid HTTPS URL.
- The cached patch diff is missing or not readable.
- SHA-256 verification fails for a downloaded patch diff.
- The [!DNL CVT] tool cannot write to `var/patch_metadata/.patch_diffs/`.

**Warning messages:**

The tool emits the following strings in the warnings output field for this scenario:

```shell-session
Patch 247p9-2026-05-001-EE requires authentication. Set credentials via COMPOSER_AUTH or auth.json.
Could not fetch patch 247p9-2026-05-001-EE (HTTP 401). Check credentials (COMPOSER_AUTH / auth.json).
Could not fetch patch 247p9-2026-05-001-EE (HTTP 404).
Could not fetch or verify patch 247p9-2026-05-001-EE. Check network connectivity and credentials (COMPOSER_AUTH / auth.json).
Could not fetch patch file for 247p9-2026-05-001-EE.
SHA-256 verification failed for patch 247p9-2026-05-001-EE; discarding download.
```

The patch ID in each message is the actual registry entry ID, for example `247p9-2026-05-001-EE`. When SHA-256 verification fails, the tool discards the cached copy and will attempt a fresh download on the next run. No manual cache cleanup is needed.

**Actions:**

- Confirm network connectivity and retry the command.
- Confirm that required credentials for authenticated patch downloads are configured.
- Confirm that the [!DNL CVT] tool can write to `var/patch_metadata/.patch_diffs/`.
- Preserve the warning and output details if the patch remains classified as unknown.

### Missing or unknown patches are reported

If the report contains unexpected `missing_patches` or `unknown_patches` values, review the installation and output details:

**Check:**

- Monthly patches were applied out of sequence.
- A component-specific patch, such as Adobe Commerce business-to-business (B2B) or Adobe Commerce Page Builder, is missing.
- `composer.lock` reports an installed component version that requires the patch.
- A patch diff is unavailable or the detection result is inconclusive.

**Warning messages:**

The tool emits the following strings in the warnings output field for this scenario:

```shell-session
No patches found in registry for installed component versions (CE=2.4.7-p9)
No file_name or sha256 for 247p9-2026-05-001-EE
Registry entry '247p9-2026-05-001-EE' requires unknown patch '247p9-2026-04-001-EE'; skipping.
descendant diffs unavailable for 247p9-2026-06-001-EE; dry-run for 247p9-2026-05-001-EE may be inaccurate
Failed to reverse-apply 247p9-2026-06-001-EE when preparing dry-run for 247p9-2026-05-001-EE; result may be inaccurate
Failed to forward-apply prerequisite 247p9-2026-04-001-EE when preparing dry-run for 247p9-2026-05-001-EE; result may be inaccurate
```

When you encounter `may be innaccurate` in a warning, the dry-run check still runs, but with reduced confidence. The patch could still be categorized in `applied_patches` or `missing_patches`, not necessarily `unknown_patches`.

For unknown patches specifically, `var/log/patch_status.log` records the raw patch dry run output (forward and reverse), which indicate which files and chunks failed to match.

**Actions:**

- Review the `applied_patches`, `missing_patches`, and `unknown_patches` fields.
- Confirm whether the missing patches apply to the installed edition and components.
- Compare the result with the relevant security patch release notes.
- Confirm that the inspected codebase matches the deployed environment you intend to report on.
- Contact Adobe Commerce support if the unknown status blocks remediation planning.

### Output is not generated

If the [!DNL CVT] tool completes but the expected JSON or CSV output is missing, check the command syntax and terminal output:

**Actions:**

- Use the default JSON output if CSV output is not required.
- Use `--format=csv` to generate CSV output.
- Confirm that the command output is not redirected or discarded by the shell, script, or scanner that runs the [!DNL CVT] tool.
- Check `stderr` for `patch-status:` error messages.
- Write output to a directory where the current user has permission.
- Confirm that the [!DNL CVT] tool can write to `var/log/patch_status.log`.
- Re-run the command and capture terminal output for troubleshooting.

## Getting help

When contacting Adobe Commerce support, provide only the details needed to investigate the issue.

Include:

- Adobe Commerce version and edition
- [!DNL CVT] tool version
- Registry source from the [!DNL CVT] tool output
- Relevant `applied_patches`, `missing_patches`, and `unknown_patches` values
- Relevant warnings
- Error message or command output

Do not include secrets, credentials, private keys, or unrelated customer data in shared logs or attachments.

## Related topics

- [Introduction](intro.md)
- [Generate a patch-status report](generate-report.md)
- [Release notes](release-notes.md)
