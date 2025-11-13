---
title: Code management best practices
description: Learn about code management best practices for the development phase of Adobe Commerce projects.
feature: Best Practices
role: Developer
exl-id: 0bff4c7a-1082-4b3e-b19c-bc8ad529b131
---
# Code management best practices for Adobe Commerce

This topic is designed to help you decide whether to use Git or Composer to distribute custom code, with consideration for release management, code complexity, and dependency management.

>[!NOTE]
>
>These best practices are most suitable for migrations and implementations; less so for single module development.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Definitions

{{$include /help/_includes/gra-definitions.md}}

## When to use Git or Composer

<table>
<thead>
  <tr>
    <th></th>
    <th>Code managed primarily through Git</th>
    <th>Code managed primarily through Composer</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>When to use for a single-instance setup</td>
    <td>
      <ul>
        <li><strong>Standard approach for managing code for a single-instance setup</strong></li>
        <li>When the code base will not be part of a multi-brand GRA in the future</li>
        <li>When all brands run on a single instance as websites</li>
      </ul>
    </td>
    <td>
      <ul>
        <li>When the code base can or will become part of a multi-instance setup in the future</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>When to use for a multi-instance setup</td>
    <td>
      <ul>
        <li>When almost all modules are interlinked (not recommended)</li>
        <li>When the code is maintained by a team that is not familiar with Composer</li>
      </ul>
    </td>
    <td>
      <ul>
        <li><strong>Standard approach for managing code for a multi-instance setup</strong></li>
        <li>When Adobe maintains the code base or the maintaining team is familiar with Composer</li>
      </ul>
    </td>
  </tr>
</tbody>
</table>

## Feature matrix

| Feature                                              | Git                                                                                                                                                   | Composer                                                                                                                      |
|------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| Main code repository                                 | All code resides in one single, or a few Git repositories                                                                                             | All code resides in the packages in a Composer repository<br>Each single Composer package is represented by a Git repository |
| Code location                                        | Development happens in the `app/` directory                                                                                                           | Development happens in the `vendor/` directory                                                                                |
| Core upgrade management                              | Adobe Commerce core is installed and upgraded using Composer, the result is committed in Git                                                          | Adobe Commerce core is installed and upgraded using Composer; the result is committed in Git                                  |
| Third-party module management                        | Third-party modules are installed in `vendor/` if they are installed through the marketplace or packagist.org. Otherwise they are installed in `app/` | All third-party modules are installed in the `vendor/` directory                                                              |
| Releases                                             | Releasing is characterized by `git merge` and `git pull` or `git checkout` commands                                                                   | Releasing is characterized by `composer update` and `git pull` or `git checkout` commands                                     |
| Number of Git repositories                           | Few                                                                                                                                                   | Many                                                                                                                          |
| Development complexity                               | Simple                                                                                                                                                | Complex                                                                                                                       |
| Pull request complexity                              | Simple                                                                                                                                                | Complex                                                                                                                       |
| Code review complexity                               | Simple                                                                                                                                                | Simple                                                                                                                        |
| Dev/QA/UAT environment update complexity             | Simple                                                                                                                                                | Complex                                                                                                                       |
| GRA support                                          | ![Yes icon](../../../assets/yes.svg)                                                                                                                  | ![Yes icon](../../../assets/yes.svg)                                                                                          |
| Modules can automatically install external libraries | ![No icon](../../../assets/no.svg)                                                                                                                    | ![Yes icon](../../../assets/yes.svg)                                                                                          |
| Flexibility in GRA composition                       | ![No icon](../../../assets/no.svg)                                                                                                                    | ![Yes icon](../../../assets/yes.svg)                                                                                          |
| Module dependency management                         | ![Yes icon](../../../assets/yes.svg) Only through `module.xml`, limited functionality                                                                 | ![Yes icon](../../../assets/yes.svg) Full dependency management through `composer.json`                                       |
| Module versioning                                    | ![Yes icon](../../../assets/yes.svg) You can define a version, but you cannot install a specific version                                              | ![Yes icon](../../../assets/yes.svg) Full version support                                                                     |
| Paid services needed                                 | Git repository                                                                                                                                        | Git repository, Private Packagist (± &euro;600 per year)                                                                     |
| Bitbucket integration with Jira possible               | ![Yes icon](../../../assets/yes.svg)                                                                                                                  | ![Yes icon](../../../assets/yes.svg)                                                                                          |
| Changes to code instantly available for installation | ![Yes icon](../../../assets/yes.svg)                                                                                                                  | ![Yes icon](../../../assets/yes.svg)                                                                                          |

## Solutions to avoid

1. **Combining Composer and `app/code` for your modules**

   Result in having all the disadvantages of both code management styles combined in your project. It adds unnecessary complexity, instability, and lack of flexibility.

   For example:
   - Explain both Git and Composer workflows (instead of only one of them) to the development team.
   - Install incompatible modules in `app/code` as there is nothing in place to stop that from happening.
   - Moving a module from `app/code` to Composer (or conversely) is cumbersome, especially with ongoing development.

1. **Satis Package Manager**

   Private Packagist costs ± &euro;600 per year. This cost is for the whole GRA combined, not per brand. Don't try to avoid these costs by using the free solution Satis. Satis does not automatically update your packages whenever you push commits to git. Also Satis has no built in authorization. You must maintain a web server to run Satis. You end up spending a multitude of the Private Packagist subscription fee maintaining Satis.

1. **Start with Git, then move to Composer**

   Make the choice for a code management approach at the start of your project. Switching from Git to Composer or conversely, with ongoing development is cumbersome and could lead to code loss and or revision history loss.

<!-- Last updated from includes: 2023-08-23 15:56:59 -->
