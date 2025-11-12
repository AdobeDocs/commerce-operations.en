---
title: Convert layout files
description: Learn how to convert XML layout files using Adobe Commerce command-line tools. Discover XSLT stylesheet updates and file conversion processes.
exl-id: 9852b735-9b4b-43ce-887f-5c37d398bbf7
---
# Convert XML layout files

{{file-system-owner}}

Use this command to update your layout XML files if you update the corresponding Extensible Stylesheet Language Transformations (XSLT) stylesheet.

- [Layout instructions](https://developer.adobe.com/commerce/frontend-core/guide/layouts/xml-instructions/)
- [Layout file types](https://developer.adobe.com/commerce/frontend-core/guide/layouts/types/)

Command options:

```bash
bin/magento dev:xml:convert [-o|--overwrite] {xml file} {xslt stylesheet}
```

Where:

- `{xml file}`—is the full path and file name of a layout XML file to convert (required)
- `{xslt stylesheet}`—is the full path and file name of an XSLT stylesheet file to use for conversion (required)
- `-o|--overwrite`—include this option to overwrite the existing XML file
