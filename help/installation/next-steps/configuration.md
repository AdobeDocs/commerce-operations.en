---
title: Configure the application
description: Learn about the post-install configuration required for Adobe Commerce on-premises deployments.
feature: Install, Configuration
exl-id: b1808664-10ec-4147-8251-a99f8b58f4be
---
# Configure the application

Now that you've finished installing Adobe Commerce, you need to configure it. This topic provides some recommended configuration settings.

## Set up cron

The UNIX task scheduler, cron, is critical to the application's day-to-day operations. It schedules things like reindexing, newsletters, e-mails, and sitemaps. A *crontab* is a cron configuration.

You must install Adobe Commerce services in the *crontab*, or some core functionality (and some third-party extensions) do not function properly.

For more information about cron, including how to remove a crontab and run cron from the command line, see [Configure and run cron](../../configuration/cli/configure-cron-jobs.md).

## Security settings and recommendations

After installation, we recommend the following:

*  Make sure that your file ownership and permissions are set properly
*  We strongly recommend [changing the default Admin URI](../tutorials/admin-uri.md) from `admin` to something else
*  Make sure the [`X-Frame-Option` HTTP header](../../configuration/security/xframe-options.md) is set properly.
*  Take precautions against cross-site scripting (XSS) by [securing your templates](https://developer.adobe.com/commerce/php/development/security/cross-site-scripting/)

If you installed by [cloning the GitHub repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository/), make sure that when you deploy the application, you only include files and folders that are required for the production environment. Files and folders that are not required can potentially expose security risks.

## Enable Apache server rewrites

If you use the Apache web server, you must enable server rewrites for pages to display properly. Otherwise, you see pages without styles and other issues.

[Section on Apache server rewrites](../prerequisites/web-server/apache.md#apache-rewrites-and-htaccess)

## Caching in a multi-webnode environment

If you have multiple web nodes, you *cannot* use the application's default file caching because there is no synchronization between web nodes. In other words, the activity on one web node is written to that web node's file system only. Subsequent activity, if performed on another web node, can result in unnecessary files being written or can result in errors.

Instead, use [Redis](../../configuration/cache/config-redis.md) for both the default cache and the page cache.

## Server settings

This section briefly discusses settings that we recommend you consider for the server on which the application runs. Some of these settings are not directly related to the application; these are provided as suggestions only.

### Log rotation

The UNIX `logrotate` utility enables you to administer systems that generate large numbers of log files. It allows automatic rotation, compression, removal, and mailing of log files. Each log file can be handled daily, weekly, monthly, or when the log file exceeds a specified size.

For more information, see one of the following:

*  [HowTo: The ultimate log rotate command tutorial with ten examples](https://www.thegeekstuff.com/2010/07/logrotate-examples)
*  [Stack Exchange](https://unix.stackexchange.com/questions/85662/how-to-properly-automatically-manually-rotate-log-files-for-production-rails-app)
*  [`logrotate` man page](https://linuxconfig.org/logrotate-8-manual-page)

>[!AVAILABILITY]
>
>The following availability information applies to Adobe Commerce on Cloud Infrastructure projects:
>
>* Starter environments do not have log rotation.
>
>* You cannot configure log rotation on Pro Integration environments. You must implement a custom solution/script and [configure your cron](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/configure/app/properties/crons-property) to run the script as needed.

### Set up iptables rules to enable various services to communicate

Whether you have one server or many, you must open ports in the firewall to enable services to communicate. For example, if you use the Solr search engine with Adobe Commerce, you must enable it to communicate with the web server. If you have multiple web nodes, you must enable them to communicate with each other.

More information:

*  Ubuntu: [Ubuntu documentation page](https://help.ubuntu.com/community/IptablesHowTo).
*  CentOS: [CentOS how-to](https://wiki.centos.org/HowTos%282f%29Network%282f%29IPTables.html).

### Security Enhanced Linux (SELinux) rules

We don't have a recommendation for whether you use SELinux; however, if you do use it, you must configure services to communicate with each other similar to configuring iptables.

More information:

*  Ubuntu: [Debian handbook](https://debian-handbook.info/browse/stable/sect.selinux.html)
*  CentOS: [CentOS wiki](https://wiki.centos.org/HowTos/SELinux)

### Set up an e-mail server

Adobe Commerce requires an e-mail server. We don't recommend a particular server, but you can try any of the following:

*  Postfix for CentOS ([Digital Ocean tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-postfix-on-centos-6), [CentOS documentation](https://www.centos.org))
*  Postfix for Ubuntu ([Digital Ocean tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-setup-postfix-on-ubuntu-14-04), [Ubuntu documentation](https://help.ubuntu.com/community/MailServer))

### Refine the search engine for enhanced performance:

Elasticsearch or OpenSearch is required for all installations as of 2.4.0.

*  [Install and configure the search engine](../../configuration/search/overview-search.md)

### Set up a message queue

Since version 2.3.0, Adobe Commerce has included message queue functionality. In earlier versions, it is available only for Adobe Commerce.

*  [[!DNL RabbitMQ]](../../configuration/queues/message-queue-framework.md)

## Settings for Adobe Commerce only

You can configure the following only if you use Adobe Commerce:

*  [Split databases for checkout, order management, and other database tables](../../configuration/storage/multi-master.md)
