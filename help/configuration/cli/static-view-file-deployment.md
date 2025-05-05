---
title: Deploy static view files
description: Learn to write static files to the Commerce file system during production mode.
exl-id: 51954738-b999-4982-954b-70f7a70c5a17
---
# Deploy static view files

{{file-system-owner}}

The static view files deployment command enables you to write static files to the Commerce file system when the Commerce software is set for [production mode](../bootstrap/application-modes.md#production-mode).

The term _static view file_ refers to the following:

-  "Static" means it can be cached for a site (that is, the file is not dynamically generated). Examples include images and CSS generated from LESS.
-  "View" refers to presentation layer (from MVC).

Static view files are located in the `<magento_root>/pub/static` directory, and some are cached in the `<magento_root>/var/view_preprocessed` directory as well.

Static view files deployment is affected by application modes as follows:

- [Default](../bootstrap/application-modes.md#default-mode) and [developer](../bootstrap/application-modes.md#developer-mode) modes: Commerce generates them on demand, but the rest are cached in a file for speed of access.
- [Production](../bootstrap/application-modes.md#production-mode) mode: Static files are _not_ generated or cached.

You must write static view files to the Commerce file system manually using the command discussed in this topic; after that, you can restrict permissions to limit your vulnerabilities and to prevent accidental or malicious overwriting of files.

>[!WARNING]
>
>_Developer mode only_: When you install or enable a new module, it might load new JavaScript, CSS, layouts, and so on. To avoid issues with static files, you must clean the old files to make sure you get all the changes for the new module. You can clean generated static view files in several ways. Refer to [Clean static files cache topic for details](https://developer.adobe.com/commerce/frontend-core/guide/caching/#clean-static-files-cache) for more information.

**To deploy static view files**:

1. Log in to the Commerce server as, or [switch to the file system owner](../../installation/prerequisites/file-system/overview.md).
1. Delete the contents of `<magento_root>/pub/static`, except for the `.htaccess` file. Do not delete this file.
1. Run the static view files deployment tool `<magento_root>/bin/magento setup:static-content:deploy`.

   >[!INFO]
   >
   >If you enable static view file merging in the Admin, the `pub/static` directory system must be writable.

   Command options:

   ```bash
   bin/magento setup:static-content:deploy [<languages>] [-t|--theme[="<theme>"]] [--exclude-theme[="<theme>"]] [-l|--language[="<language>"]] [--exclude-language[="<language>"]] [-a|--area[="<area>"]] [--exclude-area[="<area>"]] [-j|--jobs[="<number>"]]  [--no-javascript] [--no-css] [--no-less] [--no-images] [--no-fonts] [--no-html] [--no-misc] [--no-html-minify] [--no-parent] [-f|--force]
   ```

The following table explains this command's parameters and values.

| Option | Description | Required? |
| ------ | ----------- | --------- |
| `<languages>` | Space-separated list of [ISO-639](https://www.loc.gov/standards/iso639-2/php/code_list.php) language codes for which to output static view files. (Default is `en_US`.)<br>Find the list by running: `bin/magento info:language:list` | No |
| `--language (-l)` | Generate files only for the specified languages. The default, with no option specified, is to generate files for all ISO-639 language codes. You can specify the name of one language code at a time. Default value is **all**.<br>For example: `--language en_US --language es_ES` | No |
| `--exclude-language`| Generate files for the specified language codes. The default, with no option specified, is to exclude nothing. You can specify the name of one language code or a comma-separated list of language codes. Default value is **none**. | No |
| `--theme <theme>`| Themes for which to deploy static content. Default value is **all**.<br>For example: `--theme Magento/blank --theme Magento/luma` | No |
| `--exclude-theme <theme>`| Themes to exclude when deploying static content. Default value is **none**.<br>For example, `--exclude-theme Magento/blank` | No |
| `--area (-a)`| Generate files only for the specified areas. The default, with no option specified, is to generate files for all areas. Valid values are `adminhtml` and `frontend`. Default value is **all**.<br>For example: `--area adminhtml` | No |
| `--exclude-area` | Do not generate files for the specified areas. The default, with no option specified, is to exclude nothing. Default value is **none**. | No |
| `--jobs (-j)` | Enable [parallel processing](manage-indexers.md#reindexing-in-parallel-mode) using the specified number of jobs. The default is 0 (do not run in parallel processes). Default value is **0**. | No |
| `--symlink-locale` | Create symlinks for the files of those locales, which are passed for deployment, but have no customizations. | No |
| `--content-version=CONTENT-VERSION` | Custom version of static content can be used if running deployment on multiple nodes to ensure that static content version is identical and caching works properly. | No |
| `--no-javascript` | Do not deploy JavaScript files | No |
| `--no-css` | Do not deploy CSS files. | No |
| `--no-less` | Do not deploy LESS files. | No |
| `--no-images` | Do not deploy images. | No |
| `--no-fonts` | Do not deploy font files. | No |
| `--no-html` | Do not deploy HTML files. | No |
| `--no-misc` | Do not deploy other types of files: MD, JBF, CSV, JSON, TXT, HTC, SWF | No |
| `--no-html-minify` | Do not minify HTML files. | No |
| `-s <quick\|standard\|compact>` | Define the deployment strategy. Use these options only if you have more than one local.<ul><li>Use the [quick strategy](static-view-file-strategy.md#quick-strategy) to minimize deployment time. This is the default command option if not specified.</li><li>Use the [standard strategy](static-view-file-strategy.md#standard-strategy) to deploy all static view files for all packages.</li><li>Use the [compact strategy](static-view-file-strategy.md#compact-strategy) to conserve disk space on the server.</li></ul> | No |
| `--no-parent` | Do not generate files for the parent themes of the current theme. It is strongly recommended to use this flag if you do not explicitly use the parent theme of the current theme you are trying to deploy. This significantly increases the speed of the process. This flag is available in Commerce 2.4.2 | No |
| `--force (-f)` | Deploy files in any mode. (by default, the static content deployment tool can be run only in production mode. Use this option to run it in default or developer mode). | No |

>[!INFO]
>
>If you specify values for both `<languages>` and `--language`, `<languages>` takes precedence.

## Examples

Following are some example commands.

### Excluding a theme and HTML minification

The following command deploys static content for the US English (`en_US`) language, excludes the Luma theme provided with Commerce, and does not minify HTML files.

```bash
bin/magento setup:static-content:deploy en_US --exclude-theme Magento/luma --no-html-minify
```

Sample output:

```
Requested languages: en_US
Requested areas: frontend, adminhtml
Requested themes: Magento/blank, Magento/backend
=== frontend -> Magento/blank -> en_US ===
=== adminhtml -> Magento/backend -> en_US ===
...........................................................
... more ...
Successful: 2055 files; errors: 0
---

New version of deployed files: 1466710645
............
Successful: 1993 files; errors: 0
---
```

The following command deploys only JavaScript, with 4 jobs, with a standard deployment strategy:

```bash
bin/magento setup:static-content:deploy -s standard --no-misc --no-html --no-fonts --no-images --no-less --no-css -j 4
```

The following command deploys only CSS and LESS with 3 jobs, and a quick deployment strategy:

```bash
bin/magento setup:static-content:deploy -s quick --no-misc --no-html --no-fonts --no-images --no-javascript -j 3
```

### Generating static view files for one theme and one area

The following command generates static view files for all languages, the frontend area only, the Commerce Luma theme only, without generating fonts:

```bash
bin/magento setup:static-content:deploy --area frontend --no-fonts --theme Magento/luma
```

Sample output:

```
Requested languages: en_US
Requested areas: frontend
Requested themes: Magento/luma
=== frontend -> Magento/luma -> en_US ===
...........................................................
... more ...
........................................................................
Successful: 2092 files; errors: 0
---

New version of deployed files: 1466711110
```

## Deploy static view files without installing Commerce

You might want to run the deployment process in a separate, non-production, environment, to avoid any build processes on sensitive production machines.

To do this, take the following steps:

1. Run [`bin/magento app:config:dump`](../cli/export-configuration.md) to export the configuration from your production system.
1. Copy the exported files to the non-production code base.
1. Deploy static view files: `bin/magento setup:static-content:deploy`

## Troubleshooting the static view files deployment tool

[Install the Commerce software first](../../installation/overview.md); otherwise, you cannot run the static view files deployment tool.

**Symptom**: The following error is displayed when you run the static view files deployment tool:

```
ERROR: You need to install the Commerce application before running this utility.
```

**Solution**:

Use the following steps:

1. Install the Commerce software using the [command line](../../installation/composer.md).
1. Log in to the application server as, or [switch to](../../installation/prerequisites/file-system/overview.md), the file system owner.
1. Delete the contents of `<app_root>/pub/static` directory, except for the `.htaccess` file. Do not delete this file.
1. Deploy static view files: `bin/magento setup:static-content:deploy`

## Tip for developers customizing the static content deployment tool

When creating a custom implementation of the static content deployment tool, use only atomic file writing for files that should be available on the client. If you use non-atomic file writing, those files might be loaded on the client with partial content.

One of the options for making it atomic is to write to files stored in a temporary directory and copying or moving them to the destination directory (from where they are loaded to client) after writing is over. For details about writing to files, see [php fwrite](https://www.php.net/manual/en/function.fwrite.php).
