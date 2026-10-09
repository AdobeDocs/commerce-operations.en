---
title: Best practice for Report Configuration
description: Optimize site performance by removing the reporting module if you are not using it.
role: Admin
feature: Best Practices, Configuration
exl-id: 8c991b8a-affb-4a9e-9383-671f595ff89e
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: cdfd3bc1-dc23-5cf0-b965-d3c0c55cde67
    internal-label: Best Practices
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Best practice for report configuration

If your business does not require reporting or dynamic customer segments functionality, disable the [Reports functionality](https://experienceleague.adobe.com/en/docs/commerce-admin/config/general/reports) to improve store performance.

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure
- Adobe Commerce on-premises

## Disable reporting

If you do not use the Reports or dynamic customer segments, disable the Reports functionality.

1. From the Admin, navigate to **Stores** > **Settings** > **Configuration** > **General** > **Reports**.
1. Under **General Options**, set **Enable Reports** to *No*.
1. Flush cache by running `php bin/magento cache:flush` or in the Admin under **System** > **Tools** > **Cache Management**.

## Additional information

- [Generate reports in Adobe Commerce](https://experienceleague.adobe.com/en/docs/commerce-admin/start/reporting/reports-menu)
- [Customer dynamic segments](https://experienceleague.adobe.com/en/docs/commerce-admin/customers/segments/customer-segments)
