---
title: 'ACSD-51036: Race conditions during concurrent REST API calls result in an overwrite of shipping status'
description: Apply the ACSD-51036 patch to fix the Adobe Commerce issue where there are race conditions during concurrent REST API calls resulting in an overwrite of shipping status in the items ordered table.
exl-id: 12d90de7-fe5c-4fcc-b84a-d420dcd871ca
feature: REST, Orders, Shipping/Delivery
role: Admin
---
# ACSD-51036: Race conditions during concurrent REST API calls result in an overwrite of shipping status in the items ordered table

The ACSD-51036 patch fixes the issue where the race conditions during concurrent REST API calls result in an overwrite of shipping status in the items ordered table. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.31 is installed. The patch ID is ACSD-51036. Please note that the issue is fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The race conditions during concurrent REST API calls result in an overwrite of shipping status in the items ordered table.

<u>Steps to reproduce</u>:

1. Create an order with two items.
1. Invoice Item A.
1. Send refund request for the item A via REST API simultaneously while you send a ship request for the item B.
1. Go to the order in **[!UICONTROL Admin Panel]**.

<u>Expected results</u>

*[!UICONTROL Shipped 1]* status should be present for item B in the *[!UICONTROL Items]* ordered table.

<u>Actual results</u>

*[!UICONTROL Shipped 1]* status is not present for item B in the *[!UICONTROL Items]* ordered table.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
