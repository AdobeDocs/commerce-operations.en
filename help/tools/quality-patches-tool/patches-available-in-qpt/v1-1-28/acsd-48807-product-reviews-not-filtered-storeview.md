---
title: 'ACSD-48807: Product reviews not filtered by storeview'
description: Apply the ACSD-48807 patch to fix the Adobe Commerce issue where product reviews are not filtered by storeview via GraphQL.
exl-id: 754ef455-ff06-4832-9eb6-ad8cccec8799
feature: Admin Workspace, Products
role: Admin
---
# ACSD-48807: Product reviews not filtered by storeview

The ACSD-48807 patch fixes the issue where product reviews are not filtered by storeview via GraphQL. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.28 is installed. The patch ID is ACSD-48807. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Product reviews are not filtered by storeview via GraphQL.

<u>Steps to reproduce</u>:

1. Create an additional storeview.
1. Create a customer account and log in.
1. On the default storeview, create a review for a product.
1. Switch to another storeview and create another review for a product.
1. Approve both reviews in Adobe Commerce Admin.
1. Send customer GraphQL query to retrieve product reviews while specifying the storeview created in step one in the header.
1. Observe the response.

<u>Expected results</u>:

Only the product review for the specified storeview is returned in the response.

<u>Actual results</u>:

Both reviews are returned in the response.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
