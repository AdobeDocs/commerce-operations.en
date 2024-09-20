---
title: 'ACSD-53722: Bundled product options price changes to $0'
description: Apply the ACSD-53722 patch to fix the Adobe Commerce issue where the price of the bundled product options changes to $0 when scheduled updates for different scopes become active.
feature: Products
role: Admin, Developer
exl-id: da4c25ac-78bc-4d4e-a55e-826924a099e9
---
# ACSD-53722: Bundled product options price changes to $0

The ACSD-53722 patch fixes the issue where the price of the bundled product options changes to $0 when scheduled updates for different scopes become active. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.41 is installed. The patch ID is ACSD-53722. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The price of bundled product options changes to $0 when scheduled updates for different scopes become active.

<u>Steps to reproduce</u>:

1. Create two websites, A and B.
1. Set configuration under **[!UICONTROL Catalog]** > **[!UICONTROL Price]** > **[!UICONTROL Catalog Price Scope]** = **[!UICONTROL Website]**.
1. Create a bundled product with a fixed price on websites A and B:

    * Bundled product price = Fixed = *0*

1. Add one simple product as a drop-down option for the bundle. Set the following prices:

    * Simple product's all store views price inside bundled option = *120*
    * Simple product's website A price inside bundled option = *130*
    * Simple product's website B price inside bundled option = *140*

1. Schedule an update to disable the bundled product on website A.

<u>Expected results</u>:

Scheduled update for website A does not impact website B's price.

<u>Actual results</u>:

After the scheduled update, the price of the bundled product option on website B is changed to **$0**.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
