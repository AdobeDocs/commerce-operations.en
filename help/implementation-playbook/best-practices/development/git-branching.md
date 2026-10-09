---
title: Git branching best practices
description: Learn about different branching strategies for source code management.
feature: Best Practices
role: Developer
exl-id: 7d7736e8-7023-4315-9965-71866b0be5c3
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Git branching best practices

Source code goes through multiple stability phases during the development process:

- Active development
- Initial code integration
- Code integration for quality assurance (QA)
- Code integration for final user acceptance testing (UAT)
- Final code integration for production releases

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on premises

## Branch management

Each development phase should have a corresponding branch in Git to track code changes and facilitate the deployment process:

- **Task branch**—Where developers commit their individual code changes while implementing specific tasks, like features and bug fixes.
- **Development branch**—Where multiple developers merge changes from their individual task branches into a single development branch for automated integration testing. This branch is deployed to a development environment.
- **QA branch**—Where developers merge changes after development is complete and the code has passed all automated integration testing and code review. This branch is deployed to the QA environment for manual QA testing.
- **Stable/UAT branch**—Where code is merged after it passes manual QA testing. This branch is deployed to a UAT environment for user acceptance testing.
- **Production/release branch**—Where code is merged after it passes UAT. This branch is deployed to production for a release.

>[!TIP]
>
>Adobe Commerce on cloud infrastructure projects contain specific branches that correspond to different environments. See the [Pro project workflow](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/architecture/pro-develop-deploy-workflow) and [Starter project workflow](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/architecture/starter-develop-deploy-workflow) in the _Cloud Guide_.

## Branch strategies

There are several branching strategies that you can use. Choose a strategy that works best for your development team and the complexity of your project.

For more information, see the following external resources:

- [Branching workflows](https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)
- [Distributed workflows](https://git-scm.com/book/en/v2/Distributed-Git-Distributed-Workflows)
- [Patterns for managing source code branches](https://martinfowler.com/articles/branching-patterns.html)
- [A successful Git branching model](https://nvie.com/posts/a-successful-git-branching-model/)
- [GitHub flow](https://docs.github.com/en/get-started/quickstart/github-flow)
- [GitLab flow](https://about.gitlab.com/blog/2023/07/27/gitlab-flow-duo/)
