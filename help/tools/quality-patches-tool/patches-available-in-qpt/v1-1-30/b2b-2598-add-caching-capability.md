---
title: 'B2B-2598: Adds caching capability to storeConfig, currency, country, countries, availableStores GraphQl queries'
description: Apply the B2B-2598 patch to add caching capability to the `storeConfig`, `currency`, `country`, `countries`, and `availableStores` GraphQl queries.
feature: B2B, GraphQL, Cache
role: Admin
type: Troubleshooting
autotag-review: '2026-05-22T20:21:20.687Z'
TQID: 'https://experienceleague.adobe.com/DQWkSrUHcUhOTn3fWdnRPVQUK6jRkPGCAnIKPRHkebQ'
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: c32adafa-ed01-4b31-997e-2413013911b0
    internal-label: Integrations
subfeature_v2:
  - id: e396cff5-f586-484c-89f0-7f1da3308f92
    internal-label: Graph QL
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: b5a62a22-46f7-4f0d-b151-3fc640bef588
    internal-label: Intermediate
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
topic_v2:
  - id: a004cc84-67b9-4a33-a3a7-8ec7273ef4dc
    internal-label: Metadata
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
    internal-label: Troubleshooting
industry_v2:
  - id: aad1e361-483a-40cf-9a88-144325515074
    internal-label: Retail
---
# B2B-2598: Adds caching capability to `storeConfig`, `currency`, `country`, `countries`, and `availableStores` GraphQl queries

The B2B-2598 patch adds caching capability to `storeConfig`, `currency`, `country`, `countries`, and `availableStores` GraphQl queries. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.30 is installed. The patch ID is B2B-2598. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7-beta1.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6 

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The `availableStores`, `countries`, `country`, `currency`, `storeConfig`, and `customAttributeMetadata` GraphQL queries aren't cacheable.

<u>Prerequisites</u>:

* Server is pointing to [!DNL Varnish] proxying to Adobe Commerce backend.
* Config setting `system/full_page_cache/caching_application` is set to *2* ([!DNL Varnish]), or go to Adobe Commerce Admin > **[!UICONTROL Stores]** > **[!UICONTROL System]** > **[!UICONTROL Full Page Cache]** > **[!UICONTROL Caching Application]** > and set it to [!DNL Varnish].

After the patch is applied, run the following steps to ensure caching capability is now available:

1. Send `GET` request to any of the GraphQL queries listed above, using any arbitrary fields.
1. Resend the request without any changes; you will notice that it is much faster. Note that the request isn't sent to the backend but it is completely handled by [!DNL Varnish] as a cache hit.
1. If further proof is required, comment out the unset of `X-Magento-Debug` header present in our [VCL](https://github.com/magento/magento2/blob/026e5b29a5edfd619bbdea62d636b3cab2ea03b4/app/code/Magento/PageCache/etc/varnish6.vcl#L227), then restart [!DNL Varnish] and run the above steps again. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide
