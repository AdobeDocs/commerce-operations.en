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

## Common issues and solutions

### Base version cannot be detected

If [!DNL CVT] cannot find the Adobe Commerce base version, check these conditions:

**Check:**

- `composer.lock` is missing.
- `composer.lock` does not match the installed Adobe Commerce codebase.
- [!DNL CVT] is running outside the Adobe Commerce project root.
- The installed Adobe Commerce version is not represented in `data/patch-registry.json`.

**Actions:**

- Run [!DNL CVT] from the Adobe Commerce project root.
- Confirm that `composer.lock` is present and current.
- Verify that the installed Adobe Commerce version is represented in `data/patch-registry.json`.

### Patch registry cannot be fetched

If [!DNL CVT] cannot fetch the latest patch registry, check network and cache settings:

**Check:**

- The network is unavailable.
- The CDN request times out.
- `--no-cache` was used and the remote registry cannot be reached.
- `PATCH_REGISTRY_URL` points to an unavailable or invalid registry.
- `var/patch_metadata/.patch_registry_cache.json` is missing, expired, or not readable.

**Actions:**

- Re-run [!DNL CVT] when network connectivity is available.
- Allow [!DNL CVT] to use the cached registry if a stale cache warning is acceptable for the scan.
- Remove `--no-cache` unless you require fresh remote fetches.
- Confirm that [!DNL CVT] can read and write files in `var/patch_metadata/`.

### Patch diff cannot be fetched or verified

If [!DNL CVT] cannot test one or more applicable patches, check patch-diff access:

**Check:**

- A patch diff cannot be downloaded from Adobe's CDN.
- Required credentials for authenticated patch downloads are missing or invalid.
- `PATCH_DIFF_BASE_URL` points to an unavailable or invalid patch-diff source.
- The cached patch diff is missing or not readable.
- SHA-256 verification fails for a downloaded patch diff.
- [!DNL CVT] cannot write to `var/patch_metadata/.patch_diffs/`.

**Actions:**

- Confirm network connectivity and retry the command.
- Confirm that required credentials for authenticated patch downloads are configured.
- Confirm that [!DNL CVT] can write to `var/patch_metadata/.patch_diffs/`.
- Preserve the warning and output details if the patch remains classified as unknown.

### Missing or unknown patches are reported

If the report contains unexpected `missing_patches` or `unknown_patches` values, review the installation and output details:

**Check:**

- Monthly patches were applied out of sequence.
- A component-specific patch, such as Adobe Commerce business-to-business (B2B) or Adobe Commerce Page Builder, is missing.
- `composer.lock` reports an installed component version that requires the patch.
- A patch diff is unavailable or the detection result is inconclusive.

**Actions:**

- Review the `applied_patches`, `missing_patches`, and `unknown_patches` fields.
- Confirm whether the missing patches apply to the installed edition and components.
- Compare the result with the relevant security patch release notes.
- Confirm that the inspected codebase matches the deployed environment you intend to report on.
- Contact Adobe Commerce support if the unknown status blocks remediation planning.

### Output is not generated

If [!DNL CVT] completes but the expected JSON or CSV output is missing, check the command and file permissions:

**Actions:**

- Use the default JSON output if CSV output is not required.
- Use `--format=csv` to generate CSV output.
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
- [Generate a patch-status report](generate-report.md)
- [[!DNL Core Version Tool] release notes](release-notes.md)
