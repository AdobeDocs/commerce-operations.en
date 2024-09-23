---
title: 'ACSD-58141: PHPSESSID regenerates on POST requests for logged-in customers with L2 Redis cache enabled'
description: Apply the ACSD-58141 patch to fix the Adobe Commerce issue where `PHPSESSID` regenerates on POST requests on the Storefront area for a logged-in customer with L2 Redis cache enabled, and the customer is updated from Admin.
feature: Customers, Cache
role: Admin, Developer
---

# ACSD-58141: PHPSESSID regenerates on [!DNL POST] requests for logged-in customers if the L2 Redis cache is enabled

The ACSD-58141 patch fixes the issue where `PHPSESSID` regenerates on [!DNL POST] requests for a logged-in customer if the L2 Redis cache is enabled, and the customer is updated from Admin. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-58141. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce and Magento Open Source versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`PHPSESSID` regenerates on [!DNL POST] requests for a logged-in customer with the L2 Redis cache enabled.

<u>Prerequisites</u>

Environment must be configured with Redis having at least 3 nodes.

<u>Steps to reproduce</u>:

1. Create a simple product.
1. Create a customer and log in to the Storefront.
1. Check the value of `PHPSESSID`.
1. Send a few [!DNL POST] requests (For e.g., adding product to cart), and see that `PHPSESSID` remains the same).
1. Log in to the **[!UICONTROL Admin]** panel and change the middle name of the customer. 
1. When the middle name is saved, change it and save it again a few times.
1. On the storefront, send a [!DNL POST] request. `PHPSESSID` should have been updated.
1. On the storefront, send another [!DNL POST] request and check `PHPSESSID`.
1. Repeat the previous step a few times.

<u>Expected results</u>

`PHPSESSID` is regenerated only once after changing customer data.

<u>Actual results</u>:

`PHPSESSID` is regenerated every time the [!DNL POST] requests are sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
