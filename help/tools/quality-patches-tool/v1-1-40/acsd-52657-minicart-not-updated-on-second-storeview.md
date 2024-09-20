---
title: 'ACSD-52657: Minicart not updated on the second storeview that uses subdomain'
description: Apply the ACSD-52657 patch to fix the Adobe Commerce issue where the minicart is not updated on the second storeview that uses a subdomain.
feature: Shopping Cart
role: Admin, Developer
exl-id: d0877a15-800e-4e10-9ace-ebb7f26dbd18
---
# ACSD-52657: Minicart not updated on the second storeview that uses subdomain

The ACSD-52657 patch fixes the issue where the minicart is not updated on the second storeview that uses a subdomain. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.40 is installed. The patch ID is ACSD-52657. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Minicart is not updated on the secondary storeview that uses a subdomain.

<u>Steps to reproduce</u>:

1. Create a second storeview and configure a subdomain for the base URL.
1. Update the cookie domain to have the common domain.
1. On the main store, add a product to the cart.
1. Refresh the second storeview, then go to the shopping cart page.

<u>Expected results</u>:

The shopping cart and minicart are updated on the subdomain.

<u>Actual results</u>:

Minicart is not updated when the secondary store is refreshed, but the cart page shows the added product, and you are able to place an order in that session (`PHPSESSID` cookie is shared).

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
