---
title: Install Varnish
description: Learn about Varnish installation requirements for Adobe Commerce caching. Discover installation resources and setup guidance.
feature: Configuration, Cache
exl-id: e1881a85-3965-42d9-a46f-c2f5f20fbacc
---
# Install Varnish

Installing the Varnish software is beyond the scope of this guide. For more information about installing Varnish, see:

- [installation guide](https://www.varnish-software.com/developers/tutorials/installing-varnish-ubuntu/)
- [Varnish installation guides](https://www.varnish-cache.org/docs)
- [How to install Varnish (Tecmint)](https://www.tecmint.com/install-varnish-cache-web-accelerator/)

>[!INFO]
>
>This topic is written for Varnish on CentOS and Apache 2.4. If you are setting up Varnish in a different environment, some commands are likely different. Consult the preceding documentation for more information.
>
>If you intend to install Varnish modules (vmods), such as saint mode, you should install Varnish by compiling the code, rather than installing from a package. See [Saint mode](config-varnish-advanced.md#saint-mode) for more details.

## Confirm your Varnish version

Open a terminal and enter the following command to display the version of Varnish:

```bash
varnishd -V
```

Make sure that [Adobe Commerce supports](../../installation/system-requirements.md) the installed version of Varnish before continuing. If you are running an unsupported version, you must upgrade to a supported version. Consult the Varnish installation documentation for more information.
