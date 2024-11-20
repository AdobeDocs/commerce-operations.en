---
title: 'MDVA-44703: Order totals in Orders report are miscalculated'
description: The MDVA-44703 patch fixes the issue where the order totals in the Orders report are miscalculated for the restricted admin user. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44703. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Orders
role: Admin
exl-id: bdd38ba6-f282-4026-8f65-b76543859123
---
# MDVA-44703: Order totals in Orders report are miscalculated

The MDVA-44703 patch fixes the issue where the order totals in the Orders report are miscalculated for the restricted admin user. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) 1.1.16 is installed. The patch ID is MDVA-44703. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Order totals in the Orders report are miscalculated for the restricted admin user.

<u>Steps to reproduce</u>:

1. Create an additional website with two stores.
1. Create a restricted admin user with access to the new website only.
1. Log in as the restricted admin user.
1. Create two orders with different totals, one for each new store.
1. Create invoices for the orders.
1. Go to **Reports** > **Sales** and open **Orders report**.
1. Refresh statistics.
1. See the report for each store.

<u>Expected results</u>:

Sales totals correspond to the order amount of each store.

<u>Actual results</u>:

The aggregated sales total for the whole website is displayed for each store.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
