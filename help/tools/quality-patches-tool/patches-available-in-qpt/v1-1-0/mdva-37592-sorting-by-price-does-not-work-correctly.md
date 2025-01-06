---
title: 'MDVA-37592: Sorting by price not working for products with price zero'
description: The MDVA-37592 Adobe Commerce patch solves the issue where sorting by price does not work correctly for products with  price zero assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.0 is installed. The patch ID is MDVA-37592. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: B2B, Catalog Management, Categories, Orders, Products
role: Admin
exl-id: 4d4a158c-2020-42a4-9b8b-14c9b48b4107
---
# MDVA-37592: Sorting by price not working for products with price zero

The MDVA-37592 Adobe Commerce patch solves the issue where sorting by price does not work correctly for products with  price zero assigned to a shared catalog. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.0 is installed. The patch ID is MDVA-37592. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on our cloud architecture 2.4.0-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment types) 2.3.6-2.4.2-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Sorting by price does not work correctly for products with price zero assigned to a shared catalog.

<u>Prerequisites</u>:

B2B is installed.

<u>Steps to reproduce</u>:

1. Enable shared catalog.
1. Create four products with the following prices and assign them to a category - $50, $60, $70, and $80.
1. Create a shared catalog with the above products.
1. Set the custom price to zero for the product with a price of $70.
1. Now create a company user and assign it to the shared catalog just created.
1. Log in using the company account and browse to the category where the products are assigned to.
1. Try to sort by price.

<u>Expected results</u>:

The product with price zero is sorted correctly.

<u>Actual results</u>:

The product with price zero is NOT sorted correctly. Instead it is sorted according to the original price.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
