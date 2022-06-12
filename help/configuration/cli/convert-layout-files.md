---
title: Convert layout files
description: Convert XML layout files.
---

# Convert XML layout files

{{file-system-owner}}

Use this command to update your layout XML files if you update the corresponding Extensible Stylesheet Language Transformations (XSLT) stylesheet.

-  [Layout instructions](https://devdocs.magento.com/guides/v2.4/frontend-dev-guide/layouts/xml-instructions.html)
-  [Layout file types](https://devdocs.magento.com/guides/v2.4/frontend-dev-guide/layouts/layout-types.html)

Command options:

```bash
bin/magento dev:xml:convert [-o|--overwrite] {xml file} {xslt stylesheet}
```

Where:

-  **`{xml file}`** is the full path and file name of a layout XML file to convert (required)
-  **`{xslt stylesheet}`** is the full path and file name of an XSLT stylesheet file to use for conversion (required)
-  **`-o|--overwrite`** include this option to overwrite the existing XML file
