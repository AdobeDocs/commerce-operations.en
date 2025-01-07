---
title: 'ACSD-62635: Multi-store related products displayed incorrectly in [!DNL GraphQL]'
description: Apply the ACSD-62635 patch to fix the Adobe Commerce issue where multi-store related products do not display properly in the [!DNL GraphQL] product query.
feature: B2B
role: Admin, Developer
exl-id: 540cd37b-4dc5-42d1-a968-2989262effdd
---
# ACSD-62635: Multi-store related products displayed incorrectly in [!DNL GraphQL]

The ACSD-62635 patch fixes the issue where multi-store related products do not display properly in the [!DNL GraphQL] product query. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.57 is installed. The patch ID is ACSD-62635. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When B2B is enabled, [!DNL GraphQL] request returns all related products from all websites even if a store view scope is used in the request.

<u>Steps to reproduce</u>:

1. Create two websites, stores, and store views.
1. Create the following simple products:
    * One main with SKU *product1* assigned to all websites
    * One assigned only to *Website 1*
    * One assigned only to *Website 2*
    * One assigned to both *Website 1* and *Website 2*
1. Add all the products as related to *product1*.
1. Enable [!UICONTROL B2B] and [!UICONTROL Shared Catalog].
1. Add all products to the default shared catalog.
1. Send [!DNL GraphQL] request to retrieve *product1* and its related products with the store code of *Website 1* in the header.

<u>Expected results</u>:

The response contains related products only from the websites that correspond to the store code sent in the request header.

<u>Actual results</u>:

The response contains all related products from all websites, regardless of the store code specified in the request.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
