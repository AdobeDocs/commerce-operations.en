# MariaDB configuration settings

Reindexing on MariaDB 10.4 and 10.6 takes more time compared to previous MariaDB or MySQL versions. To speed up reindexing, we recommend setting these MariaDB configuration parameters:

*  [`optimizer_switch='rowid_filter=off'`](https://mariadb.com/kb/en/optimizer-switch/)
*  [`optimizer_use_condition_selectivity = 1`](https://mariadb.com/products/skysql/docs/reference/es/system-variables/optimizer_use_condition_selectivity/)

If you experience performance degradation not related to indexation after upgrading to MariaDB 10.6, consider enabling the `--query-cache-type` setting. For example, `--query-cache-type=ON`.

In addition to these recommendations, you should consult with your database administrator on configuring the following parameters:

*  `--query-cache-limit`
*  `--query-cache-size`
*  `--join-buffer-size`
*  `--innodb-buffer-pool-size`
