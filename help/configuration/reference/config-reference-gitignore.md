---
title: .gitignore reference
description: See how to add a file that is included in the ignore list.
exl-id: 7c53b50a-7bdf-433b-bebb-0129f792a1a4
---
# .gitignore reference

Magento Open Source includes a base `.gitignore` file. See [the latest Commerce `.gitignore`](https://raw.githubusercontent.com/magento/magento2/2.4/.gitignore) file. If you must add a file that is in the `.gitignore` list, you can use the `-f` (force) option when staging a commit:

```bash
git add <path/filename> -f
```
