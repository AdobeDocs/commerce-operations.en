---
title: Commerce Upgrade Toolkit limitations and considerations
description: Review validation limits, human approval requirements, backup considerations, and operational safeguards before using the Commerce Upgrade Toolkit.
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---

# Limitations and considerations

Review these limitations and considerations before you start an upgrade with the Commerce Upgrade Toolkit.

## Known limitations

| Area | Limitation |
| --- | --- |
| Storefront validation | UI and regression testing for Luma-based or heavily customized storefronts is not automated. Validate these storefronts manually. |
| Custom code | Code without a supported upgrade path requires human judgment. A finding is not an automatic resolution. |
| Third-party extensions | An extension without a release compatible with the target version can block a hop. Resolve it by updating the extension, which can require an active license or support plan, or by replacing, patching, or removing it. |
| Headless projects | Generated REST or GraphQL test plans must be run and their results reviewed. Planning alone is not validation. |
| Local validation | The toolkit validates in your local development environment. A local result does not prove that a Commerce Cloud or production build succeeds. Run the deployment checks in the target environment. |
| Estimates and reports | Estimates depend on the detected project and the available evidence. Reports do not establish upgrade completion or deployment approval. |
| AI-generated changes | Review every change an agent proposes or applies, including generated tests and reports. |

For the sequence of assessment and execution steps, see the [workflow](overview.md#workflow) and [usage](usage.md).

## Upgrade paths and services

Upgrade one hop at a time. Each hop has its own Composer update and validation, so do not combine planned hops. Service requirements, such as PHP, database, and search engine versions, can change between hops. Review the requirements for each target version before you change your environment.

## Backups and encryption keys

Protect `app/etc/env.php`, the database backup, and encryption keys throughout the upgrade. Review backup completion and recovery access before every hop.

Encryption-key changes can affect encrypted credentials and integrations. Review the key-management procedure for the target version and validate integrations with sandbox credentials. Never publish keys or include them in agent reports.

## Approval and guardrails

The toolkit applies the following guardrails during execution:

- Specialist agents do not run Git commands. Only the top-level session commits, and only after you confirm a clean working tree.
- Infrastructure changes and environment-changing commands require your approval.
- Each chunk requires applicable validation before dependent work proceeds.
- Core modifications are flagged for review rather than rewritten automatically.
- Vendor code is not edited. Fixes for third-party behavior belong in project code or reviewed patches.

Use the toolkit against a local development project, not production. Reports reflect the available evidence and do not themselves establish deployment approval.
