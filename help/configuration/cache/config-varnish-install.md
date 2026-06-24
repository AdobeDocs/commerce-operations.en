---
title: Install Varnish
description: Learn about Varnish installation requirements for Adobe Commerce caching. Discover installation resources and setup guidance.
feature: Configuration, Cache
exl-id: e1881a85-3965-42d9-a46f-c2f5f20fbacc
badgePaas: label="On Premises" type="Informative" url="https://experienceleague.adobe.com/en/docs/commerce/user-guides/product-solutions" tooltip="Applies to Adobe Commerce on-premises projects only."
autotag-review: '2026-06-22T21:26:58.525Z'
TQID: 'https://experienceleague.adobe.com/Cvy4Qsi-5Fom1t5wqNlq1SiSs4Bb8-DPsWrGfapWfSc'
product_v2:
  - id: b974b164-8a4e-43b8-a9e2-8e67ec131677
    internal-label: Commerce on Prem
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
topic_v2:
  - id: b5ce8718-c3af-4fdb-a1a9-fca32f83a87c
    internal-label: Implementation
---
# Install Varnish

{{varnish-config-cloud}}

Installing Varnish is outside the scope of this guide. This topic assumes a supported Varnish version and an Adobe Commerce origin server running behind Varnish. The examples in this guide use nginx as the origin web server.

- [installation guide](https://www.varnish-software.com/developers/tutorials/installing-varnish-ubuntu/)
- [Varnish installation guides](https://www.varnish-cache.org/docs)
- [How to install Varnish (Tecmint)](https://www.tecmint.com/install-varnish-cache-web-accelerator/)

>[!INFO]
>
>If you intend to install Varnish modules (vmods), such as saint mode, you should install Varnish by compiling the code, rather than installing from a package. See [Saint mode](config-varnish-advanced.md#saint-mode) for more details.

## Confirm your Varnish version

Open a terminal and enter the following command to display the version of Varnish:

```shell
varnishd -V
```

Make sure that [Adobe Commerce supports](../../installation/system-requirements.md) the installed version of Varnish before continuing. If you are running an unsupported version, you must upgrade to a supported version. Consult the Varnish installation documentation for more information.
