---
title: .gitignore reference
description: Learn how to add files to the .gitignore list for Adobe Commerce projects. Discover version control management and file exclusion best practices.
exl-id: 7c53b50a-7bdf-433b-bebb-0129f792a1a4
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
# .gitignore reference

Magento Open Source includes a base `.gitignore` file. See [the latest Commerce `.gitignore`](https://raw.githubusercontent.com/magento/magento2/2.4/.gitignore) file. If you must add a file that is in the `.gitignore` list, you can use the `-f` (force) option when staging a commit:

```shell
git add <path/filename> -f
```
