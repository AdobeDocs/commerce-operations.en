---
title: "Monthly Security Isolated Patching Policy"
description: "To get critical security fixes to Adobe Commerce customers faster while ensuring that customers can apply the patch quickly and promptly, Adobe Commerce now delivers monthly isolated security patches on every Patch Tuesday (the second Tuesday of the month). See the Adobe Commerce release schedule for dates."
solution: "Commerce"
product: "Adobe Commerce"
role: [Admin, Developer]
level: "Experienced"
topic: "Security"
keywords: [monthly isolated security patches, Adobe Commerce, Cloud Patches, Commerce Version Tool]
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
  - id: cdf0c6dd-1717-4e20-9530-a24eee57088b
    internal-label: Commerce on Cloud
feature_v2:
  - id: b5f00040-57a0-4a6d-a39e-383b1936c2c9
    internal-label: Compliance
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
  - id: cc250cf1-34eb-4863-80d0-d170d45ea067
    internal-label: Developer tools
  - id: d1e21356-0064-4f48-9089-16e3f0dbd2a6
    internal-label: Storefront
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: f2261633-201d-46c5-8a66-999e70527a83
    internal-label: PCI
topic_v2:
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
    internal-label: Security
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
badgePaas: label="Adobe Commerce on Cloud and On-premises2.4.4 - 2.4.9 only" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on Cloud and On-premises version 2.4.4 through 2.4.9 only"
---
# Monthly Security Isolated Patching Policy

To help Adobe Commerce customers apply critical security fixes sooner, Adobe Commerce now delivers monthly isolated security patches on Patch Tuesday (the second Tuesday of the month). See the [Adobe Commerce release schedule](https://experienceleague.adobe.com/en/docs/commerce-operations/release/planning/schedule) for dates.

An isolated security patch file contains only the code needed to resolve one or more specific security vulnerabilities, delivered as a narrowly scoped code-diff file rather than a full Composer package. Because the changes are specific to security vulnerabilities, they can be reviewed, tested, and applied faster than a security patch release, without triggering the broader dependency resolution and regression testing that a security patch version upgrade requires. Every monthly isolated security patch file is folded into the next full security patch release, so customers can get all the released isolated patch files through the next security patch (`-pN`) release.

## How isolated patches fit with other patch types

Isolated security patches are one of several types of patches Adobe Commerce provides to keep customers secure and up-to-date.

| **Patch type** | **Purpose** | **Cumulative?** | **Typical delivery** | **Role** |
| --- | --- | --- | --- | --- |
| Security patch release (-pN) | Security and compliance update for a supported release line | Yes—establishes the current security baseline | Composer package | Primary supported security baseline |
| Isolated security patch file | Targeted fix for one or more CVEs | No—apply isolated patches in sequence | Standalone patch file, commonly a ZIP. Some fixes may also be included in Cloud Patches for Commerce  | Faster interim remediation between security patch releases |
| Cloud Patches for Commerce | Required, critical fixes (including security fixes) and Cloud-specific changes | Package-version dependent | Cloud Patches for Commerce package managed through ECE-Tools  | Applied automatically during Cloud deployment |
| Quality Patches Tool (QPT) patch | Optional, targeted quality or compatibility fix for a specific issue | Patch-chain dependent | QPT package | Delivers targeted quality fixes |
| Hotfix | Urgent, narrowly scoped fix (for example, a zero-day) | Case-specific | ZIP/diff  or Standalone package via QPT | Urgent, high-impact issues |

The two types of security patches play different roles:

- **Isolated patches** contain only vulnerability fixes and are not cumulative. They don't bundle previously released isolated patch files. Merchants must apply patches in order, as each new patch assumes earlier ones are in place. To apply an isolated security patch, the installation must be on the latest security-only patch release for its supported line, because isolated fixes are tested exclusively against that version.

- **Security patches (`-pN`)** are released annually for all supported release lines and deployed through Composer. They include all previously released security, compliance, and quality hotfixes. Adobe may release additional security patches if necessary.

## Monthly isolated patch benefits

Vulnerability discovery has accelerated across the industry. AI-assisted analysis tools can now scan large codebases and surface flaws far faster than manual review, shrinking the window between disclosure and exploitation. A monthly isolated patch cadence closes this gap by providing fixes as soon as they are ready instead of waiting for the next scheduled security patch release.

The goal is speed without unnecessary overhead. A ready fix does not sit in queue until the next security patch release, and merchants do not patch more often than necessary. Isolated security patch files resolve that tension: each is a narrow, security-only diff — far simpler to review and apply than a security patch release, because its scope is deliberately limited.

This approach works because single-purpose patches skip the dependency resolution and full regression testing required for Composer releases, allowing them to be built, validated against a known baseline, and shipped quickly. On Cloud infrastructure, these fixes are bundled into Cloud Patches for Commerce —  a package merchants update as part of their Composer and deployment workflow. Once updated, the fix applies automatically during deployment with no separate patch file to locate or apply. The manual patch-file workflow described in security bulletins is for on-premises and Magento Open Source installations that do not run the Cloud pipeline.

Instead of managing changes through git, Cloud customers can also apply or revert patches using the Adobe Commerce Patching Automation tool.

## How to apply monthly isolated patches

To apply the monthly isolated security patch file and stay current on the latest fixes, follow the process below:

1. **Check the release schedule.** New monthly isolated patch files ship according to the release schedule. Review the corresponding security bulletin for affected components and CVEs — each bulletin links to release notes with step-by-step instructions for installing that month's isolated patch file.

2. **Check the security status of your Commerce installation using the [Commerce Version Tool](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/commerce-version-tool/intro).** The tool reports which monthly patches are currently installed, which are missing, and which CVEs the installation remains exposed to. This provides a definitive assessment of what action is required, rather than relying on the version number alone.

3. **Confirm your baseline.** Isolated patches are only tested against the latest security-only `-p` release for your line. If you're behind on that baseline, apply it first.

4. **Apply all missing patches in order.** Because they are not cumulative, you cannot skip to the newest file.

   >[!NOTE]
   >
   >**Cloud customers:** Check your installed Cloud Patches [version](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/release-notes/cloud-patches#latest) first.  The fix may already be included and applying it manually can create a conflict, or duplicate the fix.

5. **Match files to your installed components.** Apply only the file that corresponds to your CE, EE, B2B, or other component version.

6. **Re-run the Commerce Version Tool to confirm.** Verify the new patch shows as installed and the relevant CVEs now report as protected.

7. **Test, then deploy.** Validate in staging before promoting to production, per your normal change process.

Cloud customers can also use [Adobe Commerce Patching automation  ](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/caps-tool/intro)to apply or revert patches through the Admin panel instead of the manual git and Composer steps above.

## What this means for you, by deployment type

| **You run…** | **What changes for you** |
| --- | --- |
| Adobe Commerce on Cloud infrastructure | Cloud Patches for Commerce, delivered through ECE-Tools, applies the required fixes automatically during your next deployment. You still control the branch, merge, and validation steps, and should check the Cloud Patches release notes before manually applying the same fix. |
| Adobe Commerce on-premises | Confirm your baseline `-p` version, download the file matching each installed component, apply in sequence, and verify with the Commerce Version Tool. |

## FAQ

Monthly isolated security patching is a new release policy. The following questions address common concerns.

**Do I need every previous isolated patch applied, or just the latest security patch release?**

You need both. Before applying an isolated patch, update to the latest security-only `-p` release baseline. Each patch is tested only against that baseline. Isolated patches are not cumulative, so apply any missed patches in sequence.

For example, if you're on the current `-p` release baseline but missed July and August's isolated patches,  apply July, then August, then September. The next full `-p` release resets the sequence because it includes all previously issued isolated fixes.

**Applying separate patch files is more manual work than one Composer update. Why not just ship a Composer package?**

 In an installation with multiple components—CE, EE, B2B, and PageBuilder—a monthly release might require separate patch files because each file targets a specific installed component version. Combining all fixes into one Composer package would reintroduce dependency-resolution issues and require full-surface regression testing—the risks isolated patches are designed to avoid. Cloud customers do not apply patches manually; Cloud Patches delivers the same fixes through the existing deployment pipeline.

**With patches layered on patches, how do I know what security state my installation is in?**

 With the release of monthly security patches, Adobe Commerce introduced the **[Commerce Version tool](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/commerce-version-tool/intro)**, a standalone utility that reports which patches are installed or missing and which CVEs your installation is protected against. Rather than relying on version numbers, the tool reads patch metadata and provides machine-readable output for reporting and continuous integration (CI).

**Does this mean Adobe has stepped back from cumulative, versioned security releases?**

No — the annual `-p` release remains the primary, cumulative security checkpoint. Isolated patches supplement that cadence for CVEs that can't safely wait for it; they don't replace it. If you apply the scheduled security patch release for your line each year, you remain on a fully supported path and receive every fix that was ever issued as an isolated file in between.

**Doesn't shipping fixes outside of Composer make a default install less secure?**

No. The delivery mechanism does not affect the fix's security outcome. An isolated patch applies the same code change later included in a full patch (`-p`) release whether it is delivered as a Composer package or a standalone file has no bearing on its effectiveness. **Merchants who do not apply the patch remain at their existing security baseline until the next schedule**d security release. Applying isolated patches can reduce exposure by delivering fixes sooner, rather than waiting for a full release cycle.

## Resources

- [Software lifecycle policy](lifecycle-policy.md)

- [Release policy](versioning-policy.md)

- [Patch release schedule](schedule.md)

- [Commerce Version Tool](../tools/commerce-version-tool/intro.md)

- [Adobe Security Bulletins and Advisories](https://helpx.adobe.com/security/security-bulletin.html)
