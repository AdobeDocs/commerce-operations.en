---
title: "ACSD-51845: Can't update subsequent products with tier prices & different attribute sets via asynch bulk [!DNL API]"
description: Apply the ACSD-51845 patch to fix the Adobe Commerce issue where you can't update subsequent products with tier prices and different attribute sets via asynchronous bulk [!DNL REST API].
feature: REST, Products
role: Admin
exl-id: c3fff9f2-30ad-4bcb-945e-e9e0c69630b3
---
# ACSD-51845: Can't update subsequent products with tier prices & different attribute sets via asynch bulk [!DNL API]

The ACSD-51845 patch fixes the issue where you can't update subsequent products with tier prices and different attribute sets via asynchronous bulk [!DNL REST API]. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.35 is installed. The patch ID is ACSD-51845. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Update fails for subsequent products with tier prices and different attribute sets via asynchronous bulk [!DNL REST API].

<u>Steps to reproduce</u>:

1. Configure [!DNL RabbitMQ].
1. Create two attribute sets.
1. Create two **Simple Products**, assigning each product to a different attribute set.
1. Add a **Customer Group Price** for each product.
1. Update both products in the same bulk [!DNL API] update.
1. Make sure that the `bin/magento queue:consumers:start async.operations.all` command is running.
1. Check the bulk [!DNL API] status.

<u>Expected results</u>:

The service execution is successful.

<u>Actual results</u>:

The system returns the error message: *The product was unable to be saved. Please try again.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
