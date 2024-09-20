---
title: 'ACSD-53098: Products in shared catalog do not reflect on frontend'
description: Apply the ACSD-53098 patch to fix the Adobe Commerce issue where products assigned to a shared catalog do not reflect on the frontend upon executing a partial index.
feature: B2B, Catalog Management, Categories, Products
role: Admin, Developer
exl-id: 19c66a3a-04b2-48ee-aff3-ad2b592ff876
---
# ACSD-53098: Products in shared catalog do not reflect on frontend

The ACSD-53098 patch fixes the issue where products assigned to a shared catalog do not reflect on the frontend upon executing a partial index. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.38 is installed. The patch ID is ACSD-53098. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Products assigned to a shared catalog via API do not show up on the frontend after the partial indexer executes the cron job, followed by the consumer cron.

<u>Steps to reproduce</u>:

1. Set up [!DNL RabbitMQ] as the queue service.
1. Switch indexers to **[!UICONTROL Update on Schedule]** mode.
1. Create a shared catalog and assign it to a company.
1. Create a simple product and assign it to a category. Execute the partial reindex:

    `bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1`

1. Use the following API request to assign the created product to the shared catalog.

    ```
    pub/rest/all/V1/sharedCatalog/<id>/assignProducts
    {
        "products":[{
            "sku": "24-MB06"
            }
        ]
    }
    ```

1. Execute the following cron to clear up the queues, and execute the partial reindex:

    `bin/magento cron:run --group=consumers` 
    
    `bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1`

1. Log in to the frontend as the company's user.
1. Check the frontend category page.

<u>Expected results</u>:

The newly assigned products appear on the frontend.

<u>Actual results</u>:

The newly assigned products do not appear on the frontend.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
