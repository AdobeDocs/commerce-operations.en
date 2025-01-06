---
title: 'ACSD-63286: Products assigned to shared catalog need manual reindexing to appear'
description: Apply the ACSD-63286 patch to fix the Adobe Commerce issue where products assigned to a shared catalog via API do not appear on the storefront until a manual reindex is executed.
feature: Products, REST
role: Admin, Developer
---
# ACSD-63286: Products assigned to shared catalog need manual reindexing to appear

The ACSD-63286 patch fixes the issue where products assigned to a shared catalog via API do not appear on the storefront until a manual reindex is executed. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.57 is installed. The patch ID is ACSD-63286. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When products are assigned to a shared catalog via API, they don't appear on the frontend after the partial indexer and consumer cron jobs run. However, they do appear after a manual full reindex.

<u>Steps to reproduce</u>:

1. Set up [!DNL RabbitMQ] as the queue service.
1. Create a shared catalog and assign it a company.
1. Create a simple product and assign it to a category.
1. Execute partial reindex.

    ```
    bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1
    ```

1. Use the following API request to assign the created product to the shared catalog `pub/rest/all/V1/sharedCatalog/<id>/assignProducts`:

    ```
    {
        "products":[{
            "sku": "24-MB06"
            }
        ]
    }
    ```

1. Execute the following cron to clear up the queues and execute the partial reindex.

    ```
    bin/magento cron:run --group=consumers
    ```

    ```
    bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1
    ```

1. Log in to the frontend as a company user.
1. Check the frontend category page. The newly assigned products are not visible.
1. Execute a manual reindex:

    ```
    bin/magento index:reindex
    ```

<u>Expected results</u>:

The product appears on the frontend without a manual reindex.

<u>Actual results</u>:

The product appears on the frontend only after manual reindex.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.


## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
