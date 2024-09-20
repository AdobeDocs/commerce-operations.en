---
title: 'ACSD-55566: [!UICONTROL mergeCart] mutation fails with internal server error in [!DNL GraphQL] response'
description: Apply the ACSD-55566 patch to fix the Adobe Commerce issue where the `mergeCart` mutation fails with an internal server error in [!DNL GraphQL] response when merging the source and the destination carts that have the same bundle items.
feature: GraphQL, Shopping Cart
role: Admin, Developer
exl-id: 84a9b861-351e-4fcc-bb91-3e31c7ae24e6
---
# ACSD-55566: `mergeCart` mutation fails with internal server error in [!DNL GraphQL] response

The ACSD-55566 patch fixes the issue where the `mergeCart` mutation fails with an internal server error in [!DNL GraphQL] response. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.48 is installed. The patch ID is ACSD-55566. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`mergeCart` mutation fails with an internal server error in [!DNL GraphQL] response when merging the source and the destination carts that have the same bundle items.

<u>Steps to reproduce</u>:

1. Create a custom source and a custom stock.
1. Assign the created stock to the main website.
1. Create a simple product and assign to it the created source (qty=2).
1. Create a bundle product with one option and one child product (product created in step 3).
1. Create a guest cart via [!DNL GraphQL].
1. Add a bundle product with both options selected.
1. Save the *cartID*.
1. Create a customer and generate a customer token.
1. Create a customer cart.
1. Add the same bundle product with the same configuration to the cart.
1. Try to merge the guest cart with the customer cart.

<u>Expected results</u>:

The customer cart contains products from both carts.

<u>Actual results</u>:

You get an internal error.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
