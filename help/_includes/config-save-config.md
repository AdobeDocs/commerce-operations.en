# Update the shared configuration

**To update the configuration**:

1. Log in to your development system as, or switch to, the file system owner.

1. Change to the application root and run the dump command.

   ```bash
   cd <Magento root dir>
   php bin/magento app:config:dump
   ```

   For example, if Commerce is installed in `/var/www/html/magento2`, enter:

   ```bash
   cd /var/www/html/magento2
   php bin/magento app:config:dump
   ```

1. Confirm that `app/etc/config.php` was updated.

   ```bash
   git status
   ```

   Sample response:

   ```
   On branch m2.2_deploy
   Changed but not updated:
     (use "git add <file>..." to update what will be committed)
     (use "git checkout -- <file>..." to discard changes in working directory)
          modified:   app/etc/config.php
   ```

   >[!WARNING]
   >
   >Do _not_ submit changes to the `generated`, `pub/media`, or `pub/static` directories to source control. You generate those files on your build system. The development system likely has code, themes, and so on, that are not ready for use on the production system.

1. Check in your changes to `app/etc/config.php` only to source control.

   ```bash
   git add app/etc/config.php && git commit -m "Updated shared configuration" && git push mconfig m2.2_deploy
   ```
