---
title: 'BB2B-2598: Adds caching capability to storeConfig, currency, country, countries, availableStores GraphQl queries'
description: Apply the BB2B-2598 patch to add caching capability to the storeConfig, currency, country, countries, and availableStores GraphQl queries.
exl-id: 37551954-d721-4f3a-b237-cd795f715a5f
feature: B2B, GraphQL, Cache
role: Admin
---
# BB2B-2598: Adds caching capability to `storeConfig`, `currency`, `country`, `countries`, and `availableStores` GraphQl queries

The BB2B-2598 patch adds caching capability to `storeConfig`, `currency`, `country`, `countries`, and `availableStores` GraphQl queries. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.30 is installed. The patch ID is BB2B-2598. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7-beta1.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6 

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`availableStores`, `countries`, `country`, `currency`, `storeConfig`, and `customAttributeMetadata` GraphQL queries are not cacheable.

<u>Prerequisites</u>:

* Server is pointing to [!DNL Varnish] proxying to Adobe Commerce backend.
* Config setting `system/full_page_cache/caching_application` is set to *2* ([!DNL Varnish]), or go to Adobe Commerce Admin > **[!UICONTROL Stores]** > **[!UICONTROL System]** > **[!UICONTROL Full Page Cache]** > **[!UICONTROL Caching Application]** > and set it to [!DNL Varnish].

After the patch is applied, run the following steps to ensure caching capability is now available:

1. Send `GET` request to any of the GraphQL queries listed above, using any arbitrary fields.
1. Resend the request without any changes; you will notice that it is much faster. Note that the request is not sent to the backend but it is completely handled by [!DNL Varnish] as a cache hit.
1. If further proof is required, comment out the unset of `X-Magento-Debug` header present in our [VCL](https://github.com/magento/magento2/blob/026e5b29a5edfd619bbdea62d636b3cab2ea03b4/app/code/Magento/PageCache/etc/varnish6.vcl#L227), then restart [!DNL Varnish] and run the above steps again. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
