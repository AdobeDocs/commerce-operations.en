---
title: 'MDVA-38393: Catalog rules stop working for configurable product if its simple product is re-named'
description: The MDVA-38393 patch fixes the issue where catalog rules stop working for a configurable product if its simple product is re-named. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-38393. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Catalog Management, Categories, Configuration, Products
role: Admin
exl-id: 3d98671c-6ee7-4fe8-80d9-67fa697cae75
type: Troubleshooting
---
# MDVA-38393: Catalog rules stop working for configurable product if its simple product is re-named

The MDVA-38393 patch fixes the issue where catalog rules stop working for a configurable product if its simple product is re-named. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.8 is installed. The patch ID is MDVA-38393. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Catalog rules stop working for a configurable product if its simple product is re-named.

<u>Steps to reproduce</u>:

1. Create a configurable product with an associated simple product.
1. Create a category.
1. Assign only the configurable product to the new category.
1. Create new catalog rules:
    * Condition = Category contains \<new category id>
    * Action = 50% discount
    * Active = Yes
1. Perform reindex.
1. Check the configurable product on the frontend (the discount should be applied).
1. Check the `catalogrule_product` table (the simple product should have a discount).
1. Go to the Admin and change the name of the simple product. This would add a record to the `catalogrule_product_cl` table.
1. Execute the cron or the `bin/magento cron:run --group=index --bootstrap=standaloneProcessStarted=1` command.
1. Check the `catalogrule_product` table.

<u>Expected results</u>:

The configurable product has a discount.

<u>Actual results</u>:

* The discount records created for the simple products are missing in the `catalogrule_product` table.
* The configurable product on the frontend has the full original price.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
