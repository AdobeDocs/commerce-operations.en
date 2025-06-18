---
title: 'ACSD-65822: Bundle and Configurable product quantities not reflected correctly in the shopping cart'
description: Apply the ACSD-65822 patch to fix the Adobe Commerce issue where the quantity appeared as 0 in the customer shopping cart section in the admin panel when adding bundle products.
feature: Admin Workspace, Checkout, Orders
role: Admin, Developer
---

# ACSD-65822: Bundle and Configurable product quantities not reflected correctly in the [!UICONTROL Shopping Cart]

The ACSD-65822 patch fixes the issue where bundle and configurable product quantities are not displayed correctly in the **[!UICONTROL Shopping Cart]** section under *[!UICONTROL Customer's Activities]*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-65822. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The bundle and configurable product quantities are not displayed correctly in the **[!UICONTROL Shopping Cart]** section under *[!UICONTROL Customer's Activities]*.

<u>Steps to reproduce</u>:

1. Create a user on the storefront.
2. Create a **[!UICONTROL Bundle product]** in the admin panel.
3. On the storefront, as a logged-in user, add the bundle product to the shopping cart with a specified quantity.
4. In the *Admin* panel, go to **[!UICONTROL Customers]** and click **[!UICONTROL Edit]** for the customer created in Step 1.
5. Click **[!UICONTROL Create Order]**.
6. On the left-hand side, under *[!UICONTROL Customer's Activities]*, check the **[!UICONTROL Shopping Cart]** section. You should see the bundle product along with the selected quantity.

<u>Expected results</u>:

The bundle item quantity should match the quantity shown on the storefront.

<u>Actual results</u>:

The bundle item quantity is displayed as 0.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
