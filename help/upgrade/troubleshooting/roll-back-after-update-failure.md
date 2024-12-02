---
title: Roll back after module update failure
description: Troubleshoot your Adobe Commerce upgrade after encountering a module update error.
exl-id: 1537a6b1-b450-4f90-bffb-73359fa71598
---
# Roll back after module update failure

If your module update fails, messages similar to the following display in the console log:

```
[2015-08-14 12:12:02 CDT] Job "update {"components":[{"name":"example/module","version":"1.1.0"}]}" has been started
[2015-08-14 12:12:02 CDT] Starting composer update...
[2015-08-14 12:12:02 CDT] An error occurred while executing job "update {"components":
[{"name":"example/module","version":"1.1.0"}]}": Could not complete update {"components":
[{"name":"example/module","version":"1.1.0"}]} successfully: Cannot find component to update
```

In the preceding example, there is no component version to which to roll back. Contact the component vendor or try to resolve the issue yourself.

In the meantime, you can roll back to a previous version by clicking **Rollback**, which recovers your data even if you did not back up previously.
