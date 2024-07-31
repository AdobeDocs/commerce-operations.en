---
title: Create symlinks to LESS files
description: Learn how to create symlinks to LESS files.
exl-id: 58a6123a-28b4-445b-b3f9-f524233ac127
---
# Create symlinks to LESS files

{{file-system-owner}}

To create symlinks to LESS files:

Command options:

```bash
bin/magento dev:source-theme:deploy [--type="..."] [--locale="..."] [--area="..."] [--theme="..."] [file1] ... [fileN]
```

>[!INFO]
>
>During development, this command creates symlinks for LESS files in the `var/view_preprocessed` and `pub/static` folders. This process does not compile LESS files into CSS files.

The following table explains this command's parameters and values.

| Parameter | Value | Required? |
| --------- | ----- | --------- |
| `--type`  | Type of source files: [less] (default: "less")<br>Currently, LESS is the only file type supported. | No |
| `--locale` | Locale code.<br>To display the list of locale codes, enter `bin/magento info:language:list` | No |
| `--area` | Area (`adminhtml` for the administrative area, `frontend` for the storefront). | No |
| `--theme` | Theme name in `<VendorName>/<theme-name>` format. For example, `Magento/blank` or `Magento/backend`. | No |
| `<file>` | Space-separated list of CSS files to convert to LESS without the CSS extension. (Default is `css/styles-m css/styles-l`, for adminhtml type `css/styles css/styles-old`) | No |

For example, to create LESS files for the frontend theme named `VendorName/themeName` in the `en_US` locale using a CSS file named `<magento_root>/pub/static/frontend/VendorName/themeName/en_US/css/styles-l.css`, enter the following command:

```bash
bin/magento dev:source-theme:deploy --type="less" --locale="en_US" --area="frontend" --theme="VendorName/themeName" css/styles-l
```

The following messages display to confirm success:

```
Processed Area: frontend, Locale: en_US, Theme: VendorName/themeName, File type: less.
-> css/styles-l.less
Successfully processed.
```

To create LESS files for the adminhtml:

```bash
bin/magento dev:source-theme:deploy --locale="en_US" --area="adminhtml" --theme="Magento/backend" css/styles css/styles-old
```
