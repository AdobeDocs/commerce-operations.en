---
title: Search engine configuration
description: Configure a search engine with Adobe Commerce and Magento Open Source.
---

# Search engine configuration

This section discusses the minimum settings that you must choose to test Elasticsearch or OpenSearch with Adobe Commerce and Magento Open Source. As of versions 2.4.4 and 2.4.3-p2, all fields labeled **Elasticsearch** also apply to OpenSearch.

For additional details about configuring your search engine, see the [User Guide](https://docs.magento.com/user-guide/catalog/search-elasticsearch.html).

## Configure your search engine from the Admin

To configure your system to use Elasticsearch or OpenSearch:

1. Log in to the Admin as an administrator.
1. Click **Stores** > Settings > **Configuration** > **Catalog** > **Catalog** > **Catalog Search**.
1. From the **Search Engine** list, select the corresponding version of your search engine If you are using OpenSearch, you must select Elasticsearch7.

   The following table lists the required configuration options to configure and test the connection with Commerce.
   Unless you changed the server settings of your search engine, the defaults should work. Skip to the next step.

   |Option|Description|
   |--- |--- |
   |**Elasticsearch Server Hostname**|Enter the fully qualified hostname or IP address of the machine running Elasticsearch or OpenSearch.<br>Adobe Commerce on cloud infrastructure: Get this value from your integration system.|
   |**Elasticsearch Server Port**|Enter the web server proxy port. The default is 9200<br>Adobe Commerce on cloud infrastructure: Get this value from your integration system.|
   |**Elasticsearch Index Prefix**|Enter the search engine index prefix. If you use a single instance for more than one Commerce installation (Staging and Production environments), you must specify a unique prefix for each installation. Otherwise, you can use the default prefix magento2.|
   |**Enable Elasticsearch HTTP Auth**|Click **Yes** only if you enabled authentication for your search engine server. If so, provide a username and password in the provided fields.|

1. Click **Test Connection**.

   Sample response:

   ![success](../../assets/configuration/elastic_test-success.png)

   Continue with:

   - [Configure Apache for your search engine](../../installation/prerequisites/search-engine/configure-apache.md)
   - [Configure nginx for your search engine](../../installation/prerequisites/search-engine/configure-nginx.md)

   or you see:

   ![failed](../../assets/configuration/elastic_test-fail.png)

If so, try the following:

- Make sure the search engine server is running.
- If the server is on a different host from Commerce, log in to the Commerce server and ping the search engine host. Resolve network connectivity issues and test the connection again.
- Examine the command window in which you started Elasticsearch or OpenSearch for stack traces and exceptions. You must resolve those before you continue. In particular, make sure you started your search engine as a user with `root` privileges.
- Make sure that [UNIX firewall and SELinux](../../installation/prerequisites/search-engine/overview.md#firewall-and-selinux) are both disabled, or set up rules to enable your search engine and Commerce to communicate with each other.
- Verify the value of the **Elasticsearch Server Hostname** field. Make sure that the server is available. You can try the server's IP address instead.
- Use the `netstat -an | grep <listen-port>` command to verify that the port specified in the **Elasticsearch Server Port** field is not being used by another process.

  For example, to see if your search engine is running on its default port, use the following command:

  ```bash
  netstat -an | grep 9200
  ```

  If it is running on port 9200, it displays similar to the following:

  ```terminal
  `tcp        0      0 :::9200            :::-         LISTEN`
  ```

## Reindexing catalog search and refreshing the full page cache

After you change the search engine configuration, you must reindex the catalog search index and refresh the full page cache using the Admin or command line.

To refresh the cache using the Admin:

1. In the Admin, click **System** > **Cache Management**.
1. Select the checkbox next to **Page Cache**.
1. From the **Actions** list in the upper right, click **Refresh**.

   ![cache management](../../assets/configuration/refresh-cache.png)

To clean the cache using the command line: [`bin/magento cache:clean`](../cli/manage-cache.md#clean-and-flush-cache-types)

To reindex using the command line:

1. Log in to your Commerce server as, or switch to, the [file system owner](../../installation/prerequisites/file-system/overview.md).
1. Enter any of the following commands:

   Enter the following command to reindex the catalog search index only:

   ```bash
   bin/magento indexer:reindex catalogsearch_fulltext
   ```

   Enter the following command to reindex all indexers:

   ```bash
   bin/magento indexer:reindex
   ```

1. Wait until reindexing completes.

   >[!INFO]
   >
   >Unlike the cache, indexers are updated by a cron job. Make sure [cron is enabled](../cli/configure-cron-jobs.md) before you start using your search engine.

