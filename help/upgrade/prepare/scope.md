---
title: Understand Upgrade Scope
description: Learn about backward incompatible changes in a release that might impact Adobe Commerce or Magento Open Source custom modules or third-party extensions.
---

# Understand the scope of upgrading

Review the [release notes](https://devdocs.magento.com/guides/v2.4/release-notes/bk-release-notes.html) to understand the scope of a release, including enhancements, bug fixes, and known issues that might impact third-party and custom modules.

## Backward-incompatible changes

Adobe Commerce and Magento Open Source releases may contain backward-incompatible changes. Review our backward-incompatible changes documentation, see the following: 

- **[Major change highlights](https://devdocs.magento.com/guides/v2.4/release-notes/backward-incompatible-changes/index.html)**—Changes that have a major impact and require detailed explanation and special instructions to ensure that third-party modules continue working.
- **[Minor change reference](https://devdocs.magento.com/guides/v2.4/release-notes/backward-incompatible-changes/reference.html)**—Reference documentation generated from the code base that describes minor changes to classes, API membership, database, dependency injection, interfaces, layouts, system, and XSD.

## Third-party extensions

Adobe Commerce Marketplace’s new compatibility policy ensures that _all_ listed extensions are compatible with the latest released version within 30 days of the GA date. For this reason, it is important to get your third-party extensions, whenever possible, through the Marketplace.

## Custom Modules

All custom modules should be checked against the target version you are looking to upgrade to. This is the most time- and resource-intensive process of an upgrade. When evaluating your custom modules, you must look for backward-incompatible changes and be aware of new practices, such as controller decomposition. You can learn more about this in the [release notes](https://devdocs.magento.com/guides/v2.4/release-notes/bk-release-notes.html). Also, ensure that you're following [best practices](https://devdocs.magento.com/guides/v2.4/ext-best-practices/extension-coding/common-programming-bp.html) for module development.

## [!DNL Upgrade Compatibility Tool]

The [!DNL Upgrade Compatibility Tool] is a command-line tool that analyzes your instance for potential upgrade issues. It checks for issues between the current version you have installed and the version you are trying to upgrade to.

Using this tool reduces the effort required from your team to understand the scope and impact of an upgrade. It helps you avoid common code issues when upgrading and provides clear direction on how to resolve identified issues. It also helps prioritize the most critical issues necessary to ensure a successful upgrade, saving both time and costs when upgrading.

See the following sections to get started with the [!DNL Upgrade Compatibility Tool]. See the [!DNL Upgrade Compatibility Tool] [guide](../upgrade-compatibility-tool/overview.md) for more technical details and advanced use cases.

### Download the tool

Use Composer to download the tool. It requires PHP 7.3 or later, at least 2GB of RAM, Node.js (if you are checking GraphQL compatibility), and an Adobe Commerce license.  

```bash
composer create-project magento/upgrade-compatibility-tool uct --repository https://repo.magento.com
```

### Run the tool

To analyze your instance and check for errors, warnings, and critical issues:

```bash
bin/uct upgrade:check <dir> -c <coming version> 
```

>[!NOTE]
>
> The `<dir>` argument is the directory where your code base is stored. The `-c` option compares your code base with the specified version (for example, 2.4.4).

To identify the most critical issues for your team to address:  

```bash
bin/uct upgrade:check /path/to/magento/ --ignore-current-compatibility-issues –min-issue-level critical --vanilla-dir /path/to/vanilla/code/ /path/to/magento/app/code/Vendor/
```

Some more options to use with this command are: 

- `--ignore-current-version-compatibility-issues`—Suppresses all known critical issues, errors, and warnings against your current version. It only provides errors against the version you are trying to upgrade.  

- `--min-issue-level`—Allows you to set the minimum issue level to help prioritize only the most important issues with your upgrade. The options are warning, error, and critical in ascending order of severity. 

- `-m | [=MODULE-PATH]`—If you want to analyze only a certain vendor, module, or even directory, you can specify the path as an option as well.  

- `--vanilla-dir`—Allows you to check core code for any nonstandard implementation of features or customizations. It is important that these are cleaned up beforehand. A vanilla instance of your version is automatically downloaded for reference. 

  >[!NOTE]
  >
  > This can also be done with the `core:code:changes` command in the tool).

### Analyze the Output

The [!DNL Upgrade Compatibility Tool] exports a JSON file identifying the affected code or modules, severity, and a description of the problem for every issue it encounters. It also outputs a summary report with a complexity score, which allows your team to understand roughly what it takes to upgrade to the latest version. The lower the complexity score, the easier it is to perform the upgrade. 
 
The following output shows an example summary report:

```console
 ------------------------ --------
  Installed version        2.4.2
  Adobe Commerce version   2.4.3
  Running time             0m:48s
  Checked modules          14
  Core checked modules     0
  Core modified files      0
  % core modified files    0.00
  PHP errors found         109
  PHP warnings found       0
  GraphQL errors found     0
  GraphQL warnings found   0
  Total errors found       109
  Total warnings found     0
  Complexity score         218
 ------------------------ --------
```

### Tips and advice

All issues that the tool identified are listed in the report with specific error codes. Use the [error message reference](../upgrade-compatibility-tool/error-messages.md) to get more details about each issue. Adobe also provides suggestions to fix each issue type so that you can plan your remediation steps. 

Use the report to estimate the amount of effort it will take to update your code for the upgrade. Based on your experience, you can estimate the required effort to upgrade based on the total number of issues identified and the severity of the issues. Since this is a command-line tool, you can incorporate this into automated testing and code check suites and use the JSON output to generate your reports.  

We recommend saving the results from each upgrade project so that you can compare future upgrade results with previous results. With continued use, you’ll start to develop a good sense of the level of effort it takes to upgrade to the next version just from the summary report provided by the tool. 

We also recommend that you run the tool regularly while working on the upgrade to have visibility into your progress. The number of issues should decrease as you fix them. This also helps your team decide on the best approach to distribute work.

The [!DNL Upgrade Compatibility Tool] continues to be improved upon and future releases will include features such as autofixes to help you fix issues as fast as possible. The latest improvements released in January 2022 include PHP 8.1 compatibility tests and HTML visualization capabilities that help you quickly identify areas that may require more effort to upgrade.
