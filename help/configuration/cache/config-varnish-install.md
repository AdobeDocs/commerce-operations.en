---
title: Install Varnish
description: See advice about installing Varnish.
---

# Install Varnish

Installing the Varnish software is beyond the scope of this guide. For more information about installing Varnish, see:

- [installation wiki](http://wiki.mikejung.biz/Varnish)
- [Varnish installation guides](https://www.varnish-cache.org/docs)
- [How to install Varnish (Tecmint)](http://www.tecmint.com/install-varnish-cache-web-accelerator)

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

A sample follows:

```terminal
varnishd (varnish-6.3.2 revision 199de9b)
Copyright (c) 2006 Verdens Gang AS
Copyright (c) 2006-2019 Varnish Software AS
```

Make sure that the version is 6.x before continuing. If you are running version lower than 6.x, you must upgrade to a supported version. Consult the Varnish installation documentation for more information.
