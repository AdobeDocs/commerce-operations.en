---
title: Search engine prerequisites
description: Follow these steps to install and configure supported search engine software for on-premises installations of Adobe Commerce.
feature: Install, Search
exl-id: 44ea638a-7200-4269-be1b-b0851de2c4f4
---
# Search engine prerequisites

As of Adobe Commerce 2.4, all installations must be configured to use [Elasticsearch](https://www.elastic.co) or [OpenSearch](https://opensearch.org/) as the catalog search solution.

>[!NOTE]
>
>OpenSearch support was added in 2.4.4. OpenSearch is a compatible fork of ElasticSearch. All instructions to configure ElasticSearch 7 apply to OpenSearch. [Migrate from Elasticsearch to OpenSearch](../../../upgrade/prepare/opensearch-migration.md) provides guidance on switching to OpenSearch.

## Supported versions

You must install and configure either Elasticsearch or OpenSearch before installing Adobe Commerce 2.4.4 and later.

Refer to the [System Requirements](../../system-requirements.md) for specific version information.

## Recommended configuration

We recommend the following:

*  [Configure nginx for your search engine](configure-nginx.md)
*  [Configure Apache for your search engine](configure-apache.md)

## Installation location

The following tasks assume that you have configured your system according to the following diagram:

![Search Engine diagram](../../../assets/installation/search-engine-config.svg)

The preceding diagram shows:

*  The Commerce application and the search engine are installed on different hosts.

   Running on separate hosts requires proxying to work. (Clustering the search engine is beyond the scope of this guide, but you can find more information in the [Elasticsearch clustering documentation](https://www.elastic.co/guide/en/elasticsearch/guide/current/distributed-cluster.html).)

*  Each host has its own web server; the web servers do not have to be the same.

   For example, the Commerce application can run Apache and the search engine can run nginx.

*  Both web servers use Transport Layer Security (TLS).

   Setting up TLS is beyond the scope of our documentation.

Search requests are processed as follows:

1. A search request from a user is received by the Commerce web server, which forwards it to the search engine server.

   You configure the search engine to connect to the proxy's host and port. We recommend the web server's SSL port (by default, 443).

1. The search engine web server (listening on port 443) proxies the request to the search engine server (by default, it listens on port 9200).

1. Access to the search engine is further protected by HTTP Basic authentication. For a request to reach the search engine, it must travel over SSL *and* provide a valid username and password.

1. The search engine processes the request.

1. Communication returns along the same route, with the Elasticsearch web server acting as a secure reverse proxy.

## Prerequisites

The tasks discussed in this section require the following:

*  [Firewall and SELinux](#firewall-and-selinux)
*  [Install the Java Software Development Kit (JDK)](#install-the-java-software-development-kit)
*  [Install the search engine](#install-the-search-engine)
*  [Upgrading Elasticsearch](#upgrading-elasticsearch)

### Firewall and SELinux

Security-related software (iptables, SELinux, AppArmor) may be configured by default to block communication between subsystems. It may be a good idea to check them if there are problems.

#### Set up rules for iptables and SELinux

To set up rules to allow communication with the firewall or SELinux enabled, consult the following resources:

*  [iptables how-to](https://help.ubuntu.com/community/IptablesHowTo)
*  [How to edit iptables rules (fedora project)](https://fedoraproject.org/wiki/How_to_edit_iptables_rules)
*  [Introduction to SELinux (CentOS.org)](https://www.centos.org)
*  [SELinux How-To Wiki (CentOS.org)](https://wiki.centos.org/HowTos/SELinux)

### Install the Java Software Development Kit

To determine if Java is already installed, enter the following command:

```bash
java -version
```

If the message `java: command not found` displays, you must install the Java SDK as discussed in the next section.

See one of the following sections:

*  [Install the latest JDK on CentOS](#install-the-jdk-on-centos)
*  [Install the latest JDK on Ubuntu](#install-the-jdk-on-ubuntu)

#### Install the JDK on CentOS

See this [Digital Ocean tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-java-on-centos-and-fedora#install-oracle-java-8).

Be sure to install the JDK and *not* the JRE.

```bash
yum -y install java-1.8.0-openjdk
```

>[!NOTE]
>
>Java version 8 might not be available for all operating systems. For example, you can [search the list of available packages for Ubuntu](https://packages.ubuntu.com/).

#### Install the JDK on Ubuntu

To install JDK 1.8 on Ubuntu, enter the following commands as a user with `root` privileges:

```bash
apt-get -y update
```

```bash
apt-get install -y openjdk-8-jdk
```

For other options, see [Oracle documentation](https://docs.oracle.com/javase/8/docs/technotes/guides/install/install_overview.html).

### Install the search engine

Follow [Installing Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/install-elasticsearch.html) or [Install and configure OpenSearch](https://opensearch.org/docs/latest/opensearch/install/index/) for your platform-specific steps.

To verify that Elasticsearch is working, enter the following command on the server on which it is running:

```bash
curl -XGET '<host>:9200/_cat/health?v&pretty'
```

A message similar to the following is displayed:

```
epoch      timestamp cluster       status node.total node.data shards pri relo init unassign pending_tasks
1519701563 03:19:23  elasticsearch green           1         1      0   0    0    0        0             0
```

To verify OpenSearch is working, enter the following commands:

```bash
curl -XGET https://<host>:9200 -u 'admin:admin' --insecure
```

```bash
curl -XGET https://<host>:9200/_cat/plugins?v -u 'admin:admin' --insecure
```

## Upgrading Elasticsearch

Refer to [Upgrading Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/setup-upgrade.html) for full instructions on backing up your data, detecting potential migration issues, and testing upgrades before deploying to production. Depending on your current version of Elasticsearch, a full cluster restart may or may not be required.

Elasticsearch requires JDK 1.8 or higher. See [Install the Java Software Development Kit](#install-the-java-software-development-kit) to check which version of JDK is installed.

## Additional resources

See the [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html) or [OpenSearch](https://opensearch.org/docs/latest/) documentation.
