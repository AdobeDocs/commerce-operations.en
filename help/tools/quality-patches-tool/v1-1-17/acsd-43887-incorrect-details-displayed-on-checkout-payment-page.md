---
title: 'ACSD-43887: Incorrect details displayed on checkout payment page'
description: The ACSD-43887 patch fixes the issue where incorrect details are displayed on the checkout payment page when Purchase Orders for companies are enabled. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-43887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: 07b17f96-5236-43a7-aeaf-6bfe36c551cf
feature: B2B, Checkout, Orders, Payments, User Account
role: Admin
---
# ACSD-43887: Incorrect details displayed on checkout payment page

The ACSD-43887 patch fixes the issue where incorrect details are displayed on the checkout payment page when Purchase Orders for companies are enabled. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.17 is installed. The patch ID is ACSD-43887. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.4

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

Incorrect details are displayed on the checkout payment page when Purchase Orders for companies are enabled.

<u>Prerequisites</u>:

1. B2B modules are installed.
1. Enable Company is set to _Yes_. Go to **Stores** > **Configurations** > **General** > **B2B Features** > **Enable Company** > **Yes**.
1. Enable Purchase Orders is set to _Yes_. Go to **Order Approval Configuration** > **Enable Purchase Orders** > **Yes**.
1. PayPal Express is configured as the payment method.

<u>Steps to reproduce</u>:

1. Create a virtual product.
1. Register a company account from the frontend with a company Admin.
1. Approve the company account from the backend and set **Enable Purchase Orders** as _Yes_ while approving the company.
1. Go to the frontend and log in using the company Admin account created in step two.
1. Create a "Default User" for the company. Go to **Company User** > **Add New User**.
1. Create an "Approval Rule" for the company. Go to **Approval Rules** > **Add New Rule**.

    * Rule type: Order Total
    * Order Total: is more than or equal to $1
    * Requires approval from: Company Administrator

1. Log out and log in using the "Default User" account.
1. Add the virtual product created in step one to the cart and proceed to checkout.
1. Select PayPal Express as the payment method and click on **Place Purchase Order**.
1. Log out and log in using the company Admin account.
1. Go to **My Purchase Orders** and from **Company Purchase Orders**, click on **View** for the order created in step nine.
1. Approve the purchase order. The purchase order status should be "Approved: Pending Payment".
1. Log out and log in using the company "Default User" account.
1. Go to **My Purchase Orders** > **View** > **Place Order**.
1. Check the **Order Summary**.

<u>Expected results</u>:

The order summary shows correct non-zero values.

<u>Actual results</u>:

The order summary total value is zero.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
