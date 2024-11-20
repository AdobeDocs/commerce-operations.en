---
title: 'ACSD-49502: Downloadable link not updated correctly after [!DNL staging] update'
description: Apply the ACSD-49502 patch to fix the Adobe Commerce issue where the downloadable link is not updated correctly after a [!DNL staging] update is applied to the downloadable product.
feature: Staging
role: Admin
exl-id: 9bdc9a7e-4291-4438-9ba0-65fcab1f95bb
---
# ACSD-49502: Downloadable link not updated correctly after [!DNL staging] update

The ACSD-49502 patch fixes the issue where the downloadable link is not updated correctly after a [!DNL staging] update is applied to the downloadable product. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.29 is installed. The patch ID is ACSD-49502. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The downloadable link is not updated properly after a [!DNL staging] update is applied to the downloadable product.

<u>Steps to reproduce</u>:

1. Create a downloadable product with link(s).
1. Create a customer account and log in.
1. Add the downloadable product to the cart from the storefront.
1. In the **[!UICONTROL Admin]**, schedule a new update for the downloadable product and let the scheduled update complete.
1. Complete the order on the storefront.

<u>Expected results</u>:

Downloadable links are preserved when using scheduled updates while previously added products are in the cart.

<u>Actual results</u>:

Downloadable links are missing both under the customer's *[!UICONTROL My Account]* ([!UICONTROL My Downloadable Products]) and order view pages in the  **[!UICONTROL Admin]**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
