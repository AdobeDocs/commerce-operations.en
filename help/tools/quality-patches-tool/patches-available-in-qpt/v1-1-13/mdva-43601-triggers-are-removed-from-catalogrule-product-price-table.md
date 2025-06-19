---
title: 'MDVA-43601: Triggers are removed from "catalogrule_product_price" table after full reindex'
description: The MDVA-43601 patch fixes the issue where triggers are removed from `catalogrule_product_price` table after a full reindex of `catalogrule_rule` or `catalogrule_product`. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43601. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Catalog Management, Orders, Products
role: Admin
exl-id: b9580806-ac35-4c86-8eee-c9f16d654171
type: Troubleshooting
---
# MDVA-43601: Triggers are removed from "catalogrule_product_price" table after full reindex

The MDVA-43601 patch fixes the issue where triggers are removed from `catalogrule_product_price` table after a full reindex of `catalogrule_rule` or `catalogrule_product`. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.13 is installed. The patch ID is MDVA-43601. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Triggers are removed from `catalogrule_product_price` table after a full reindex of `catalogrule_rule` or `catalogrule_product`.

<u>Steps to reproduce</u>:

1. Set all the indexers to *Update by Schedule*.
1. Check the triggers created for `catalogrule_product_price` table by running the following SQL request:

    ```sql
    show triggers like '%catalogrule_%'\G
    ```

1. Manually reindex `catalogrule_rule` or `catalogrule_product` by running the following command: `bin/magento indexer:reindex catalogrule_rule`
1. Check the triggers of `catalogrule_product_price` table again.

<u>Expected results</u>:

Triggers in `catalogrule_product_price` table are preserved after a full reindex.

<u>Actual results</u>:

No triggers are found for `catalogrule_product_price` table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
