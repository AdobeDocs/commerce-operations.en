---
title: 'ACSD-48362: the default shipping address is used instead of a new one.'
description: Apply the ACSD-48362 patch to fix the Adobe Commerce issue where the default shipping address is used instead of a new one when placing an order using a negotiable quote.
exl-id: 52f518b6-6f73-42cc-ac1b-c893cd5007fa
feature: Admin Workspace, B2B, Orders, Shipping/Delivery
role: Admin
---
# ACSD-48362: the default shipping address is used instead of a new one

The ACSD-48362 patch fixes the issue where the default shipping address is used instead of the newly added address when placing an order using a negotiable quote. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-48362. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.1 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The default shipping address is used instead of the newly added shipping address when placing an order using a negotiable quote.

<u>Steps to reproduce</u>:

1. Enable B2B quote by navigating to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL B2B features]** > **[!UICONTROL Enable company]** > **[!UICONTROL Enable B2B quote]**.
1. Log in as a company user.
1. Add a product to the cart.
1. Go to the cart page and request a quote.
1. Go to the customer's **[!UICONTROL My Quotes]** page and select the quote that was just created.
1. Go to the **[!UICONTROL Shipping Information]** section of the customer's quote page.
    * Click **[!UICONTROL Add New Address]**, fill out the form, and save the address (do not select **[!UICONTROL Use as my default billing address]** or **[!UICONTROL Use as my default shipping address]**).
1. Click **[!UICONTROL Send for Review]** on the customer's quote page.
1. Go to the Adobe Commerce Admin as an admin user, open the quote that was just created, and click **[!UICONTROL Send]**.
1. Now go to the customer's quote page, refresh the page, and click **[!UICONTROL Proceed to Checkout]**.
1. On the checkout page, data shows the default shipping address even when the new shipping address is selected.
1. Click **[!UICONTROL Continue]** and place the order.

<u>Expected results</u>:

The order should use the new address without reselecting the default shipping address on the checkout page.

<u>Actual results</u>:

The order is placed with the default shipping address.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide. 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
