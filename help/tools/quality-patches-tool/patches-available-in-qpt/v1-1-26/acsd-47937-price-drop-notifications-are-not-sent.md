---
title: 'ACSD-47937: price drop notifications not sent due to application-level caching'
description: Apply the ACSD-47937 patch to fix the Adobe Commerce issue where price drop notifications are not always sent due to application-level caching.
feature: Admin Workspace, Cache, Orders
role: Admin
exl-id: 91d8e677-c2bb-4230-bbe3-a2c5f9b82e16
type: Troubleshooting
---
# ACSD-47937: price drop notifications not sent due to application-level caching

The ACSD-47937 patch fixes the issue where price drop notifications are not always sent due to application-level caching. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.26 is installed. The patch ID is ACSD-47937. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4 and 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4, 2.4.5, and 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customers are not getting product price drop email for subsequent product price changes.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL Product Alert]** for both *[!UICONTROL Price Changes]* and *[!UICONTROL Back in Stock]* in **[!UICONTROL Store]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Product Alert]**.
1. Enable **[!UICONTROL Display Out of Stock Products]**.
1. Create a simple product (ABC) with qty = 0.
1. Create a customer from the storefront and subscribe to the above product to get product alerts for price drops.
1. Start the product alert for customers.

    ```PHP
    bin/magento queue:consumers:start product_alert
    ```

1. Drop the price for the ABC product.
1. Trigger the product alert cron.

    ```PHP
    php n98-magerun2.phar sys:cron:run catalog_product_alert
    ```

1. Drop the price for the ABC product again.
1. Trigger the product alert cron.

    ```PHP
    php n98-magerun2.phar sys:cron:run catalog_product_alert
    ```

>[!NOTE]
>
>If you are not familiar with [!DNL n98] tool, then you can run `bin/magento cron:run command` as usual and monitor `cron_schedule` table to make sure `catalog_product_alert` job gets success status.

<u>Expected results</u>:

The second price drop email is sent.

<u>Actual results</u>:

The second price drop email is not sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide
* [Best practices for modifying database tables](https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/development/modifying-core-and-third-party-tables#why-adobe-recommends-avoiding-modifications) in the Commerce Implementation Playbook


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
