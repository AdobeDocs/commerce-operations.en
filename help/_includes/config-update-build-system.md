# Update build system

**To update the build system**:

1. Log in to the build system as the file system owner.
1. Change to the application root directory.

   ```shell
   cd <Magento root dir>
   ```

1. Pull the changes to `app/etc/config.php` from source control.

   ```shell
   git pull mconfig m2.2_deploy
   ```

1. Compile code.

   ```shell
   bin/magento setup:di:compile
   ```

1. After code has been compiled, generate static view files.

   ```shell
   bin/magento setup:static-content:deploy -f
   ```

1. Check the changes into source control.

   ```shell
   git add -A && git commit -m "Updated files on build system" && git push mconfig m2.2_deploy
   ```
