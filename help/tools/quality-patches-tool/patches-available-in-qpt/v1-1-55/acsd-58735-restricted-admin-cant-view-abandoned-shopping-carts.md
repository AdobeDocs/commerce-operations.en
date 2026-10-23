---
title: 'ACSD-58735: Restricted admin can’t view abandoned shopping carts on customer account for associated website'
description: Apply the ACSD-58735 patch to fix the Adobe Commerce issue where a restricted admin cannot view the abandoned shopping carts on the customer account page in the Commerce Admin for an associated website.
feature: Shopping Cart, Admin Workspace, Customers
role: Admin, Developer
exl-id: b5dcc12f-325d-4de5-bae5-ff938ec77b13
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: df8eaa0e-dd74-553a-8ad5-28129f8e8d3d
    internal-label: Shopping Cart
  - id: 22bad240-8308-569b-a9d5-578f1ff890ca
    internal-label: Customers
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: bb2df8be-afdd-4818-b6b5-95ca1dd3bc3a
    internal-label: Admin workspace
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-58735: Restricted admin can’t view abandoned shopping carts on customer account  for associated website

The ACSD-58735 patch fixes the issue where an admin user with a restricted role is unable to view abandoned customers' shopping carts from the Commerce **[!UICONTROL Admin]** >  **[!UICONTROL Reports]** > **[!UICONTROL Abandoned Carts]** > **[!UICONTROL Select Cart]** > **[!UICONTROL Shopping Cart]** tab.

The issue occurs because when displaying the grid view for multiple websites, if an abandoned cart is loaded by default in the Admin panel, it does not get the associated store ID to display.

This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-58735. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.5.0.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Restricted admins cannot view abandoned shopping carts on the customer account page in the Admin panel.

<u>Steps to reproduce</u>:

1. Create an admin role with access to only one of the websites.
1. Create an abandoned cart.
1. Log in as an admin user with full privileges. Check **[!UICONTROL Reports]** > **[!UICONTROL Abandoned Carts]** and see that the cart displays.
1. Check **[!UICONTROL Reports]** > **[!UICONTROL Abandoned Carts]** as the restricted admin user.

<u>Expected results</u>:

The restricted admin can see abandoned shopping carts for the associated website.

<u>Actual results</u>:

The restricted admin doesn't see abandoned shopping carts for the associated website.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
