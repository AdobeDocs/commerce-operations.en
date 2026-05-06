# Update production system

**To update the production system**:

1. Log in to the production system as the file system owner.
1. Change to the application root and enable maintenance mode.

   ```shell
   cd <Magento root dir>
   ```

   ```shell
   bin/magento maintenance:enable
   ```

   For additional options, such as the ability to set an IP address whitelist, see [`magento maintenance:enable`](../installation/tutorials/maintenance-mode.md).

1. Stop any running queue workers by setting `cron_run` to `false` in `app/etc/env.php` as follows:

   ```php?start_inline=1
   'cron_consumers_runner' => [
           'cron_run' => false
       ]
   ```

1. Update the configuration.

   ```shell
   bin/magento app:config:import
   ```

1. Finally, `kill` any active consumer processes.

   ```shell
   kill <PID>
   ```

   Where `PID` is the process ID to be killed, for example:

   ```shell
   kill 1234
   ```

1. Pull code from source control.

   ```shell
   git pull mconfig m2.2_deploy
   ```

1. Update the configuration.

   ```shell
   bin/magento app:config:import
   ```

1. Clean the cache.

   ```shell
   bin/magento cache:clean
   ```

1. End maintenance mode.

   ```shell
   bin/magento maintenance:disable
   ```
