---
title: Prevent cache poisoning
description: Learn how to prevent page cache poisoning for your Commerce storefront.
feature: Configuration, Cache, Security
exl-id: 947024dd-d59d-480d-bb6c-8e0065054bb6
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
  - id: ba9e5be9-7de1-4f71-a5d2-baead0e425ee
    internal-label: Security
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: b673188e-f9fa-492a-b470-c8f949bf7827
    internal-label: Cache
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Prevent cache poisoning

This topic discusses how to prevent cache poisoning if you use the Microsoft Internet Information Server (IIS) web server. _Cache poisoning_ is a method of changing cache contents to include different pages from the same site. For example, it is possible to inject an HTTP 404 (Not Found) error page in place of some benign page (for example, the storefront home page), which can lead to a potential denial-of-service (DoS). The malicious page URLs are cached by Varnish or Redis, hence the name _page cache poisoning_.

These types of attacks can be difficult to detect because they do not result in errors in web server logs.

This solution applies to the following Commerce versions:

- 2.0.10 and later
- 2.1.2 and later

>[!INFO]
>
>This topic is intended for experienced IIS administrators.

## Description

The issue results if URL rewrites are enabled on the IIS server, and any of the following HTTP headers are altered before the request reaches the Varnish or Redis caching service:

- `X-Rewrite-Url`
- `X-Original-Url`
- `IIS-wasurlrewritten`
- `Unencoded-URL`
- `Orig-path-info`

If these headers are changed, the resulting URL and content are cached, resulting in potential vulnerabilities.

## Solution

We provide the option to remove the values of all of the preceding headers based on the IIS server setting for `Enable_IIS_Rewrites`.

- If `Enable_IIS_Rewrites` is set to `0`,  the values of the headers are removed.
- If `Enable_IIS_Rewrites` is set to `1`, the values of the headers are left intact.

>[!WARNING]
>
>If you set `Enable_IIS_Rewrites` to `1`, you must not allow the values of the preceding headers to be altered before the request reaches the IIS web server.
