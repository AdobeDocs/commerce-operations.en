---
title: 'ACSD-57565: The order dashboard displays incorrect order information'
description: Apply the ACSD-57565 patch to fix the Adobe Commerce issue where the order dashboard displays incorrect order information until the time period is updated.
feature: Roles/Permissions
role: Admin, Developer
exl-id: dc4ad263-725e-4605-9b85-fc4305ab9a29
type: Troubleshooting
---
# ACSD-57565: The order dashboard displays incorrect order information

The ACSD-57565 patch fixes the issue where the order dashboard displays incorrect order information until the time period is updated. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.48 is installed. The patch ID is ACSD-57565. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch

## Issue

 The order dashboard displays incorrect order information.

 <u>Steps to reproduce</u>:

1. Enable **[!UICONTROL dashboard charts]**.
1. Create an order and invoice it.
1. Wait for at least 24 hours after the time of the order creation.
1. Check the **[!UICONTROL dashboard chart]** data.
1. Make a note of the complete order count.
1. Change the time to the *current month*, and then change it back to *today*.

<u>Expected results</u>:

The dashboard chart should show the correct statistics all the time.

<u>Actual results</u>:

The dashboard chart shows incorrect statistics at the first load. The chart's accurate statistics are updated after the time period.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
