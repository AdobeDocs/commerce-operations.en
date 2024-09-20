---
title: 'ACSD 49843: Product download link unavailable after being auto invoiced with [!UICONTROL Payment Action] = [!UICONTROL Intent Sale]'
description: Apply the ACSD-49843 patch to fix the Adobe Commerce issue where product download link is unavailable after the ordered item is auto invoiced by an online payment method when [!UICONTROL Payment Action] is set to [!UICONTROL Intent Sale].
feature: Catalog Management, Configuration, Invoices, Orders, Storefront
role: Admin, Developer
exl-id: 4bfa3827-a2b1-4168-a39c-99c617ee4795
---
# ACSD-49843: Product download link unavailable after being auto invoiced with [!UICONTROL Payment Action] = [!UICONTROL Intent Sale]

The ACSD-49843 patch fixes the issue where the product download link is unavailable after the ordered item is auto invoiced by an online payment method when [!UICONTROL Payment Action] is set to [!UICONTROL Intent Sale]. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.37 is installed. The patch ID is ACSD-49843. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.3.7-p4, 2.4.1 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product download link is unavailable after the ordered item is auto invoiced by an online payment method when [!UICONTROL Payment Action] is set to [!UICONTROL Intent Sale].

<u>Steps to reproduce</u>:

1. Log in to the Adobe Commerce Admin and navigate to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Sales]** > **[!UICONTROL Configure Braintree]**.

    * In the [!UICONTROL Payment Action] drop-down, select **[!UICONTROL Intent Sale]**, and set *[!UICONTROL Enable Card Payments]* to *Yes*.

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL Catalog]** > **[!UICONTROL Downloadable Product Option]** > **[!UICONTROL Order Item status for Download]**, and make sure that it is set to *"Invoiced"*.
1. In the storefront, log in as a customer. 

    * Add any downloadable product and a simple product to the cart. 
    * Use [!DNL Braintree Pay] to place the order using the card option.

1. Go to **[!UICONTROL My Orders]** and see that the invoice is automatically created for the order and that both the item statuses are *"Invoiced"*.
1. Go to **[!UICONTROL My Downloadable Products]** and observe that the download link is not available yet.
1. In the Admin, go to that order and create a shipment for it.
1. In the storefront, go to **[!UICONTROL My Downloadable Products]** and observe that the download link is now available.

<u>Expected results</u>:

Download link is available when the downloadable product status is *"Invoiced"*.

<u>Actual results</u>:

Download link is not available even when the downloadable product status says *"Invoiced"*. It is available only after a shipment is created for the physical product. 

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
