---
title: '[!DNL Core Version Tool] Troubleshooting'
description: Learn how to troubleshoot [!DNL Core Version Tool] Composer detection, internal dry-run checks, registry cache, JSON output, and audit log issues.
hide: true
---
# [!DNL Core Version Tool] troubleshooting

Use this page to troubleshoot common [!DNL Core Version Tool] ([!DNL CVT]) issues with Composer detection, registry loading, internal dry-run patch detection, output generation, and audit logging.

## Quick troubleshooting steps

If [!DNL CVT] does not return the expected patch-status report:

- Confirm that the target installation uses a supported Adobe Commerce version and edition.
- Confirm that `composer.lock` is present and matches the environment you want to inspect.
- Confirm that PHP and the system `patch` binary are available.
- Confirm that [!DNL CVT] can read the patch registry and write to `var/patch_metadata/`.
- Review `warnings`, `missing_patches`, and `unknown_patches` in the output.
- Check `var/log/patch_status.log` for the audit summary from the run.

## Common result states

| Result state | Meaning | Recommended action |
| --- | --- | --- |
| Protected | The applicable patch is detected. | Preserve the result with your security records. |
| Vulnerable | An applicable patch is missing. | Review patch requirements and plan remediation. |
| Not applicable | The Common Vulnerabilities and Exposures (CVE) entry applies to a component that is not installed. | No action is required for that component. |
| Unknown | [!DNL CVT] cannot determine the status from available data. | Review registry coverage, detection inputs, and support guidance. |

{style="table-layout:auto"}

## Common issues and solutions

<!-- TODO: Add exact error messages, warning text, and exit codes from the released [!DNL CVT] package when available. -->

### Base version cannot be detected

**When it occurs:** [!DNL CVT] exits with code `1` because it cannot find the Adobe Commerce base version.

**Possible causes:**

- `composer.lock` is missing.
- `composer.lock` does not match the installed Adobe Commerce codebase.
- [!DNL CVT] is running outside the Adobe Commerce project root.
- The installed Adobe Commerce version is not supported by the current patch registry.

**Solutions:**

- Run [!DNL CVT] from the Adobe Commerce project root.
- Confirm that `composer.lock` is present and current.
- Verify that the installed Adobe Commerce version is supported by the registry included with the tool.

### Patch registry cannot be fetched

**When it occurs:** [!DNL CVT] cannot fetch the latest patch registry from Adobe's CDN.

**Possible causes:**

- The network is unavailable.
- The CDN request times out.
- `--no-registry-cache` was used and the remote registry cannot be reached.
- `var/patch_metadata/.patch_registry_cache.json` is missing, expired, or not readable.

**Solutions:**

- Re-run [!DNL CVT] when network connectivity is available.
- Allow [!DNL CVT] to use the cached registry if a stale cache warning is acceptable for the scan.
- Remove `--no-registry-cache` unless you require a fresh remote registry fetch.
- Confirm that [!DNL CVT] can read and write files in `var/patch_metadata/`.

### Patch diff cannot be fetched or verified

**When it occurs:** [!DNL CVT] cannot test one or more applicable patches.

**Possible causes:**

- A patch diff cannot be downloaded from Adobe's CDN.
- The cached patch diff is missing or not readable.
- SHA-256 verification fails for a downloaded patch diff.
- [!DNL CVT] cannot write to `var/patch_metadata/.patch_diffs/`.

**Solutions:**

- Confirm network connectivity and retry the command.
- Confirm that [!DNL CVT] can write to `var/patch_metadata/.patch_diffs/`.
- Preserve the warning and output details if the patch remains classified as unknown.

### Missing patches are reported unexpectedly

**When it occurs:** [!DNL CVT] reports patches as missing even though you expected the environment to be fully patched.

**Possible causes:**

- Monthly patches were applied out of sequence.
- A component-specific patch, such as Adobe Commerce business-to-business (B2B) or Adobe Commerce Page Builder, is missing.
- `composer.lock` reports an installed component version that requires the patch.
- The forward dry-run succeeds and the reverse dry-run fails, which classifies the patch as not applied.

**Solutions:**

- Review the `applied_patches`, `missing_patches`, and `detection_method` fields.
- Confirm whether the missing patches apply to the installed edition and components.
- Compare the result with the relevant security patch release notes.
- Confirm that the inspected codebase matches the deployed environment you intend to report on.

### Unknown patches or unknown CVE status are reported

**When it occurs:** [!DNL CVT] cannot classify one or more patches or CVE records.

**Possible causes:**

- The patch diff is unavailable.
- The dry-run result is inconclusive.
- Both forward and reverse dry-run commands fail.
- Both forward and reverse dry-run commands succeed.
- Overlapping patch dependencies cannot be resolved from the available metadata.

**Solutions:**

- Update [!DNL CVT] and the patch registry to the latest available version.
- Preserve the JSON or CSV output for investigation.
- Contact Adobe Commerce support if the unknown status blocks remediation planning.

### Internal dry-run detection fails

**When it occurs:** [!DNL CVT] cannot complete the `patch --dry-run` checks for one or more patches.

**Possible causes:**

- The system `patch` binary is not installed or not available in the execution path.
- [!DNL CVT] cannot create the temporary working directory.
- Affected files are missing from the installed codebase.
- File permissions prevent [!DNL CVT] from staging affected files for dry-run detection.

**Solutions:**

- Confirm that the system `patch` binary is installed.
- Confirm that the user running [!DNL CVT] can read the Adobe Commerce project files.
- Re-run [!DNL CVT] from a stable checkout or deployed codebase.
- Preserve unknown patch results for support investigation.

### Output or audit log is not created

**When it occurs:** [!DNL CVT] completes, but the expected JSON or CSV output is missing, or the audit summary is not appended to `var/log/patch_status.log`.

**Possible causes:**

- The output path is not writable.
- The command used an unsupported output format.
- [!DNL CVT] cannot write to `var/log/`.
- CSV output was requested with unsupported syntax.

**Solutions:**

- Use the default JSON output if CSV output is not required.
- Write output to a directory where the current user has permission.
- Confirm that [!DNL CVT] can write to `var/log/patch_status.log`.
- Re-run the command and capture terminal output for troubleshooting.

## Getting help

When contacting Adobe Commerce support, provide only the details needed to investigate the issue.

Include:

- Adobe Commerce version and edition
- [!DNL CVT] version
- Registry source from the [!DNL CVT] output
- Relevant `applied_patches`, `missing_patches`, and `unknown_patches` values
- Relevant warnings
- Error message or command output

Do not include secrets, credentials, private keys, or unrelated customer data in shared logs or attachments.

## Related topics

- [[!DNL CVT] introduction](intro.md)
- [Understand patch-status results](understand-report-results.md)
