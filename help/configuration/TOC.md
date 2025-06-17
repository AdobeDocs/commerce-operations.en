---
user-guide-title: Configuration Guide
user-guide-description: Configure your Adobe Commerce application features and services.
feature: Configuration
---

# Configuration Guide {#configuration-guide}

+ [Overview](overview.md)
+ General setup {#setup}
    + [Application initialization and bootstrap](bootstrap/initialization.md)
    + [Application modes](bootstrap/application-modes.md)
    + [Bootstrap parameters](bootstrap/set-parameters.md)
    + [Profiling](bootstrap/mage-profiler.md)
    + [Base directory paths](bootstrap/mage-directory.md)
+ Deployment {#deployment}
    + [Deployment overview](deployment/overview.md)
    + [Single machine deployment](deployment/single-machine.md)
    + [Pipeline deployment](deployment/technical-details.md)
    + [Prerequisites](deployment/prerequisites.md)
    + [Development system setup](deployment/development-system.md)
    + [Build system setup](deployment/build-system.md)
    + [Production system setup](deployment/production-system.md)
    + [File systems access permissions](deployment/file-system-permissions.md)
    + Examples {#examples}
        + [Using a shared configuration](deployment/example-shared-configuration.md)
        + [Using CLI commands](deployment/example-using-cli.md)
        + [Using environment variables](deployment/example-environment-variables.md)
+ Cache {#cache}
    + [Caching overview](cache/caching-overview.md)
    + [Cache types](cache/cache-types.md)
    + [Cache options](cache/cache-options.md)
    + [L2 cache](cache/level-two-cache.md)
    + Redis {#redis}
        + [Configure Redis](cache/config-redis.md)
        + [Use Redis for default cache](cache/redis-pg-cache.md)
        + [Use Redis for session storage](cache/redis-session.md)
    + Valkey {#valkey}
        + [Configure Valkey](cache/config-valkey.md)
        + [Use Valkey  for default cache](cache/valkey-pg-cache.md)
        + [Use Valkey for session storage](cache/valkey-session.md)
    + Varnish {#varnish}
        + [Varnish overview](cache/config-varnish.md)
        + [Install Varnish](cache/config-varnish-install.md)
    + [Web server](cache/config-varnish-server.md)
    + [Configure Commerce application](cache/configure-varnish-commerce.md)
    + [Advanced Varnish configuration](cache/config-varnish-advanced.md)
    + [Cache clearing](cache/use-varnish-cache.md)
    + [Cache clearing multiple Varnish instances](cache/use-multiple-varnish-cache.md)
    + [Verify Varnish configuration](cache/config-varnish-final.md)
    + [Varnish ESI block](cache/use-varnish-esi.md)
    + [Static content cache](cache/static-content-signing.md)
+ Command Line {#cli}
    + [Command-line tool](cli/config-cli.md)
    + [Common commands](cli/common-cli-commands.md)
    + [Enable logging](cli/enable-logging.md)
    + [Manage the cache](cli/manage-cache.md)
    + [Manage indexers](cli/manage-indexers.md)
    + [Configure cron jobs](cli/configure-cron-jobs.md)
    + [Compile code](cli/code-compiler.md)
    + [Operation mode](cli/set-mode.md)
    + [Start message queue consumers](cli/start-message-queues.md)
    + [URN highlighter](cli/urn-highlighter.md)
    + [Dependency reports](cli/dependency-reports.md)
    + [Localization](cli/localization.md)
    + Configuration management {#configuration-management}
        + [Set values](cli/set-configuration-values.md)
        + [Export settings](cli/export-configuration.md)
        + [Import data](cli/import-configuration.md)
    + Static view {#static-view}
        + [Deployment strategies](cli/static-view-file-strategy.md)
        + [Deploy static view files](cli/static-view-file-deployment.md)
    + [Create symlinks](cli/create-symlinks.md)
    + [Run unit tests](cli/unit-tests.md)
    + [Convert layout files](cli/convert-layout-files.md)
    + [Generate data for performance testing](cli/generate-data.md)
    + [Run support utilities (Commerce only)](cli/run-support-utilities.md)
+ Configuration files {#files}
    + [Configuration files for deployment](reference/deployment-files.md)
    + [Configuration types](reference/config-create-types.md)
    + [Module files](reference/module-files.md)
    + [Module output](reference/disable-module-output.md)
    + [config.php](reference/config-reference-configphp.md)
    + [env.php](reference/config-reference-envphp.md)
    + [gitignore](reference/config-reference-gitignore.md)
    + [system.xml](reference/config-reference-systemxml.md)
+ Configuration paths {#paths}
    + [General](reference/config-reference-general.md)
    + [B2B Extension](reference/config-reference-b2b.md)
    + [Catalog](reference/config-reference-catalog.md)
    + [Customers](reference/config-reference-customers.md)
    + [Payment methods](reference/config-reference-payment.md)
    + [Sales](reference/config-reference-sales.md)
    + [Services](reference/config-reference-services.md)
    + [Sensitive and system-specific settings](reference/config-reference-sens.md)
    + [Override configuration settings](reference/override-config-settings.md)
+ Cron Jobs {#crons}
    + [Cron jobs and groups](cron/custom-cron.md)
    + [Customizing crons reference](cron/custom-cron-reference.md)
    + [Configure a custom cron job](cron/custom-cron-tutorial.md)
+ Logs {#logs}
    + [Customized logs](logs/custom-logging.md)
    + [Logger interface](logs/logger-interface.md)
    + [Log database activity](logs/database-activity.md)
    + [Write to a custom log file](logs/custom-log-files.md)
+ Message Queues {#message-queues}
    + [Message queue framework](queues/message-queue-framework.md)
    + [Manage message queues](queues/manage-message-queues.md)
    + [Set up Amazon MQ](queues/aws-mq.md)
    + [Consumers](queues/consumers.md)
+ Multiple sites {#multi-sites}
    + [Multiple sites and views](multi-sites/ms-overview.md)
    + [Database entity Increment ID](multi-sites/change-increment-id.md)
    + [Set up in the Admin](multi-sites/ms-admin.md)
    + [Set up with Nginx](multi-sites/ms-nginx.md)
    + [Set up with Apache](multi-sites/ms-apache.md)
+ Search Engine {#search}
    + [Overview of search engines](search/overview-search.md)
    + [Configure search engine](search/configure-search-engine.md)
    + [Filter with stopwords](search/search-stopwords.md)
+ Security {#security}
    + [Security overview](security/overview.md)
    + [Password hashing](security/password-hashing.md)
    + [Cache poisoning](security/cache-poisoning.md)
    + [Secure cron PHP](security/secure-cron-php.md)
    + [Security TXT](security/security-txt.md)
    + [Click jacking Exploits](security/xframe-options.md)
+ Storage {#storage}
    + [Database profiler](storage/db-profiler.md)
    + Remote storage {#remote-storage}
        + [Remote storage module](remote-storage/remote-storage.md)
        + [AWS S3 bucket](remote-storage/remote-storage-aws-s3.md)
        + [Image resizing](remote-storage/remote-storage-image-resize.md)
        + [Remote storage for cloud](remote-storage/cloud-support.md)
    + Session storage {#session-storage}
        + [Session storage location](storage/sessions.md)
        + [memcached for session storage](storage/memcached.md)
        + [memcached on CentOS](storage/memcache-centos.md)
        + [memcached on Ubuntu](storage/memcache-ubuntu.md)
    + Split Database {#split-db}
        + [Split database overview](storage/multi-master.md)
        + [Automatic configuration](storage/multi-master-masterdb.md)
        + [Manual configuration](storage/multi-master-manual.md)
        + [Verify split database](storage/multi-master-verify.md)
        + [Database replication](storage/multi-master-replication.md)
        + [Revert to single database](storage/revert-split-database.md)
+ [Return to Operational Guides](https://experienceleague.adobe.com/docs/commerce-operations/operational-guides/home.html)