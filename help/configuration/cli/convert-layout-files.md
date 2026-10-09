---
title: Convert layout files
description: Learn how to convert XML layout files using Adobe Commerce command-line tools. Discover XSLT stylesheet updates and file conversion processes.
exl-id: 9852b735-9b4b-43ce-887f-5c37d398bbf7
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Convert XML layout files

{{file-system-owner}}

Use this command to update your layout XML files if you update the corresponding Extensible Stylesheet Language Transformations (XSLT) stylesheet.

- [Layout instructions](https://developer.adobe.com/commerce/frontend-core/guide/layouts/xml-instructions)
- [Layout file types](https://developer.adobe.com/commerce/frontend-core/guide/layouts/#layout-files-types-and-conventions)

Command options:

```shell
bin/magento dev:xml:convert [-o|--overwrite] {xml file} {xslt stylesheet}
```

Where:

- `{xml file}`—is the full path and file name of a layout XML file to convert (required)
- `{xslt stylesheet}`—is the full path and file name of an XSLT stylesheet file to use for conversion (required)
- `-o|--overwrite`—include this option to overwrite the existing XML file
