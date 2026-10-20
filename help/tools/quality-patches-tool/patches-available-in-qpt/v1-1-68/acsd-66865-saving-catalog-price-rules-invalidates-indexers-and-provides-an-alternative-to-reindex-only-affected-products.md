---
title: 'ACSD-66865: Saving a [!UICONTROL Catalog Price Rule] invalidates indexers and provides an alternative to reindex only affected products'
description: "Apply the ACSD-66865 patch to fix the Adobe Commerce issue where \_saving a [!UICONTROL Catalog Price Rules] invalidates indexers and provides an alternative to reindex only affected products."
feature: Price Rules, Price Indexer
role: Admin, Developer
type: Troubleshooting
exl-id: 68baf176-ee6e-4ba8-8a34-8adb8d1e16fe
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: a507b1ed-4937-53da-97ae-57d36bd5b9e0
    internal-label: Price Rules
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: b0d35b91-b9b0-5983-b37c-f35bd2650b53
    internal-label: Price Indexer
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-66865: Saving a **[!UICONTROL Catalog Price Rule]** invalidates indexers and provides an alternative to reindex only affected products

The ACSD-66865 patch fixes the issue where saving a **[!UICONTROL Catalog Price Rule]** invalidates indexers and provides an alternative to reindex only affected products. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.68 is installed. The patch ID is ACSD-66865. Please note that this issue was fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Saving a **[!UICONTROL Catalog Price Rule]** causes all indexers to be invalidated, triggering full reindexes instead of reindexing only affected products.

<u>Steps to reproduce</u>:

1. Ensure cron isn't running and all indexers are set to update on schedule (except `customer_grid` which can update on save).
2. Run a full manual reindex using the command: `php bin/magento indexer:reindex`.
3. Verify all indexes show status *[!UICONTROL Ready]* with *0* items in the backlog.
4. On the Admin sidebar, go to **[!UICONTROL Marketing]** > *[!UICONTROL Promotions]* > **[!UICONTROL Catalog Price Rule]**. Create an active catalog price rule for a single product (for example, using a *SKU* condition).
5. Run the command: `php bin/magento indexer:status` to check indexer status.
6. Observe that multiple indexes are marked as **[!UICONTROL Reindex Required]** even though only one product is affected.

<u>Expected results</u>:

Only the affected product data is identified, and a partial reindex is triggered instead of a full reindex across all indexers.

<u>Actual results</u>:

A full reindex is triggered for all indexers, even when only a single product is affected by the **[!UICONTROL Catalog Price Rule]**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
