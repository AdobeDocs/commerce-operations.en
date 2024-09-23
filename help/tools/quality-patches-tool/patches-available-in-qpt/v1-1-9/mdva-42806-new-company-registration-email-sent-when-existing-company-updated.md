---
title: 'MDVA-42806: New company registration email is sent each time existing company is updated'
description: The MDVA-42806 patch solves the issue where a new company registration email is sent each time an existing company is updated via REST API. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42806. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 957b89f7-cd4d-4c94-8d1d-c30442aafa6a
feature: REST, B2B, Communications, Companies
role: Admin
---
# MDVA-42806: New company registration email is sent each time existing company is updated

The MDVA-42806 patch solves the issue where a new company registration email is sent each time an existing company is updated via REST API. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-42806. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

A new company registration email is sent each time an existing company is updated via REST API.

<u>Prerequisites</u>:

B2B modules installed.

<u>Steps to reproduce</u>:

1. Create a company account.
1. Use `/V1​/company​/<company_id>` endpoint. To update the created company, see [update the company](https://devdocs.magento.com/guides/v2.4/b2b/company-object.html#update-the-company) in our developer documentation. Below is a sample payload:

```php
{
    "company": {
        "id": 2,
        "status": 1,
        "company_name": "Company",
        "company_email": "company@example.test",
        "street": [
            "Test"
        ],
        "city": "Test",
        "country_id": "US",
        "region_id": "1",
        "postcode": "12345",
        "telephone": "8009994301",
        "customer_group_id": 2,
        "sales_representative_id": 1,
        "super_user_id": 2
    }
}
```

<u>Expected results</u>:

No email is sent saying "New company registration request" as the API is updating an existing company.

<u>Actual results</u>:

Email is sent saying "New company registration request" each time the API request is sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
