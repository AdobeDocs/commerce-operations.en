---
title: On-premises installation security
description: Learn about ways to improve the security posture of your Adobe Commerce on-premises installation.
feature: Install, Security
exl-id: 56724a72-c64d-44d4-a886-90d97ae5fb6d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 6388cf7b-8a81-5248-a1e4-7bb57bbe250f
    internal-label: Install
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# On-premises installation security

[Security Enhanced Linux (SELinux)](https://selinuxproject.org/page/Main_Page) enables CentOS and Ubuntu administrators greater access control over their servers. If you are using SELinux *and* Apache must initiate a connection to another host, you must run the commands discussed in this section.

>[!NOTE]
>
>Adobe has no recommendation about using SELinux; you can use it for enhanced security if you want. If you use SELinux, you must configure it properly or the Adobe Commerce can function unpredictably. If you choose to use SELinux, consult a resource like the [CentOS wiki](https://wiki.centos.org/HowTos/SELinux) to set up rules to enable communication.

## Suggestion for installing with Apache

If you choose to enable SELinux, you might have issues running the installer unless you change the *security context* of some directories as follows:

```shell
chcon -R --type httpd_sys_rw_content_t <magento_root>/app/etc
```

```shell
chcon -R --type httpd_sys_rw_content_t <magento_root>/var
```

```shell
chcon -R --type httpd_sys_rw_content_t <magento_root>/pub/media
```

```shell
chcon -R --type httpd_sys_rw_content_t <magento_root>/pub/static
```

```shell
chcon -R --type httpd_sys_rw_content_t <magento_root>/generated
```

The preceding commands work only with the Apache web server. Because of the variety of configurations and security requirements, we do not guarantee these commands work in all situations. For more information, see:

*  [man page](https://linux.die.net/man/8/httpd_selinux)
*  [Server Lab](https://www.serverlab.ca/tutorials/linux/web-servers-linux/configuring-selinux-policies-for-apache-web-servers/)

## Enable inter-server communication

If Apache and the database server are on the same host, use the following command if you plan to use integrations that use `curl` (ex. Paypal and USPS).
To enable Apache to initiate a connection to another host with SELinux enabled:

1. To determine if SELinux is enabled, use the following command:

   ```shell
   getenforce
   ```

   `Enforcing` displays to confirm that SELinux is running.

   *  CentOS: `setsebool -P httpd_can_network_connect=1`
   *  Ubuntu: `setsebool -P apache2_can_network_connect=1`

## Opening ports in your firewall

Depending on your security requirements, you might find it necessary to open port 80 and other ports in your firewall. Because of the sensitive nature of networking security, Adobe strongly recommends that you consult with your IT department before proceeding. Following are some suggested references:

*  Ubuntu: [Ubuntu documentation page](https://help.ubuntu.com/community/IptablesHowTo)
*  CentOS: [CentOS how-to](https://wiki.centos.org/HowTos%282f%29Network%282f%29IPTables.html).
