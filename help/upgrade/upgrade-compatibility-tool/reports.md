---
title: "[!DNL Upgrade Compatibility Tool] reports"
description: Follow these steps to run the [!DNL Upgrade Compatibility Tool] on your Adobe Commerce project.
---

# Reports

{{commerce-only}}

As a result of the analysis, the [!DNL Upgrade Compatibility Tool] exports a report that contains a list of issues for each file specifying its severity, error code, and error description.

See the example below:

```terminal
File: /app/code/Custom/CatalogExtension/Controller/Index/Index.php
------------------------------------------------------------------
 * [WARNING][1131] Line 23: Extending from class 'Magento\Framework\App\Action\Action' that is @deprecated on version '2.4.2'
 * [ERROR][1429] Line 103: Call method 'Magento\Framework\Api\SearchCriteriaBuilder::addFilters' that is non API on version '2.4.2'
 * [CRITICAL][1110] Line 60: Instantiating class/interface 'Magento\Catalog\Model\ProductRepository' that does not exist on version '2.4.2'
```

Check the [Error message reference](../upgrade-compatibility-tool/error-messages.md) topic for more information.

The report also includes a detailed summary that shows:

- *Current version*: the version currently installed.
- *Target Version*: the version you want to upgrade to.
- *Execution time*: the amount of time the analysis took to build the report (mm:ss).
- *Modules that require update*: the percentage of modules that contain compatibility issues and require update.
- *Files that require update*: the percentage of files that contain compatibility issues and require update.
- *Total critical errors*: the number of critical errors found.
- *Total errors*: the number of errors found.
- *Total warnings*: the number of warnings found.

See the example below:

```terminal
 ----------------------------- ------------------
  Current version               2.4.2
  Target version                2.4.3
  Execution time                1m:10s
  Modules that require update   78.33% (47/60)
  Files that require update     21.62% (115/532)
  Total critical issues         35
  Total errors                  201
  Total warnings                103
 ----------------------------- ------------------
```

>[!NOTE]
>
>By default, the [!DNL Upgrade Compatibility Tool] exports the report into 2 different formats: `json` and `html`.

## JSON file

The JSON file contains exactly the same information shown on output:

- List of the identified issues.
- Summary of the analysis.

For each encountered issue, the report provides detailed information such as the severity and description of the problem.

To export this report into a different output folder, run:

```bash
bin/uct upgrade:check <dir> --json-output-path[=JSON-OUTPUT-PATH]
```

Where arguments are as follows:

- `<dir>`: Adobe Commerce installation directory.
- `[=JSON-OUTPUT-PATH]`: Path directory to export the `.json` output file.

>[!NOTE]
>
>The default path for the output folder is `var/output/[TIME]-results.json`.

## HTML report

The HTML file also contains the analysis summary and the list of identified issues. You can get the HTML report while running the tool on a command-line interface or through the [!DNL Site-Wide Analysis Tool].

![HTML report - Summary](../../assets/upgrade-guide/uct-html-summary.png)

You can easily navigate through the identified issues during the [!DNL Upgrade Compatibility Tool] analysis:

![HTML report - Details](../../assets/upgrade-guide/uct-html-details.png)

The HTML report also includes four different charts:

- **Modules by issue severity**: Shows severity distribution by modules.
- **Files by issue severity**: Shows severity distribution by files.
- **Modules ordered by total number of issues**: Shows the 10 most compromised modules taking into account warnings, errors, and critical errors.
- **Modules with relative sizes and issues**: The more files a module contains, the bigger its circle. The more issues a module has, the more red its circle appears.

These charts allow you to identify (at a glance) the parts that are most compromised and the ones that require more work to perform an upgrade.

![HTML report - Diagrams](../../assets/upgrade-guide/uct-html-diagrams.png)

You can filter issues shown on the report according to the minimum issue level. Default value is `WARNING`.

There is a dropdown at the top right corner that will allow you to select a different one according to your necessities. The list of identified issues will be filtered accordingly.

![HTML report - Drop Down usage](../../assets/upgrade-guide/uct-html-filtered-issues-list.png)

Please note that the issues with lower issue level are stripped out but you get a notification so you are always aware of the identified issues per module.

The diagrams are also updated accordingly, with the only exception of the `Modules with relative sizes and issues`, which is generated with the `min-issue-level` originally set up. 

If you want to see different results, you will need to re-run the command providing another value for the `--min-issue-level` option.

![HTML report - Bubble Chart Diagram](../../assets/upgrade-guide/uct-html-filtered-diagrams.png)

To export this report into a different output folder run:

```bash
bin/uct upgrade:check <dir> --html-output-path[=HTML-OUTPUT-PATH]
```

Where arguments are as follows:

- `<dir>`: {{site.data.var.ee}} installation directory.
- `[=HTML-OUTPUT-PATH]`: Path directory to export the `.html` output file.

>[!NOTE]
>
> The default path for the output folder is `var/output/[TIME]-results.html`.
