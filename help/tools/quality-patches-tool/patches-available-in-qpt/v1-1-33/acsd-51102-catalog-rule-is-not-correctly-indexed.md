---
title: 'ACSD-51102: Catalog rule applied to large number of products not correctly indexed'
description: Apply the ACSD-51102 patch to fix the Adobe Commerce issue where a catalog rule that is applied to a large number of products is not correctly indexed when the rule is enabled by a scheduled update.
feature: Catalog Management, Products
role: Admin
exl-id: 5c1c5f9c-9cce-4b11-8058-0e12a4bf93fd
---
# ACSD-51102: Catalog rule applied to large number of products not correctly indexed

The ACSD-51102 patch fixes the issue where a catalog rule that is applied to a large number of products is not correctly indexed when the rule is enabled by a scheduled update. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-51102. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A catalog rule that is applied to a large number of products is not correctly indexed when the rule is enabled by a scheduled update.

Prerequisites:

* Cron job is set up and runs every minute.

<u>Steps to reproduce</u>:

1. Create a large catalog with thousands of products to achieve the running time for the *catalog rule* indexers of more than 120 seconds when catalog rules are being enabled.
2. Create two catalog rules with *Active* status set to *No*.  For example, *Test 1* and *Test 2*. Each rule should affect all products in the catalog and cause the indexer to run for more than 120 seconds.
3. Make sure the status of the indexer is *Ready*.
4. Create scheduled updates to enable these two rules. *Test 2* schedule should start shortly after *Test 1*. For example, with a 1-minute difference.
5. Check the product prices on the Storefront.

<u>Expected results</u>

Discounts from both rules are applied.

<u>Actual results</u>

Only the first rule discount is applied.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
