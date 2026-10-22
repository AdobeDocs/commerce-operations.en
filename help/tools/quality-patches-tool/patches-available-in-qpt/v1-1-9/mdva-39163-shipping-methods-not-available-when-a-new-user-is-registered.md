---
title: 'MDVA-39163: Shipping methods not available to newly registered users with products from guest session'
description: The MDVA-39163 patch solves the issue where the shipping methods are not available when a new user is registered and products in the cart are from the guest session. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.9 is installed. The patch ID is MDVA-39163. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: CMS, Marketing Tools, Orders, Products, Shipping/Delivery
role: Admin
exl-id: 781b466b-7d8f-4ad1-9fb4-5404cd02f7d8
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: ddbd0f6e-b569-5a04-8a70-55058777c373
    internal-label: CMS
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 4067ab89-2e97-5de1-8d98-de8318461a8d
    internal-label: Products
  - id: 04d3134c-2afb-5bd7-ac14-e19fa935e848
    internal-label: Shipping/Delivery
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# MDVA-39163: Shipping methods not available to newly registered users with products from guest session

The MDVA-39163 patch solves the issue where the shipping methods are not available when a new user is registered and products in the cart are from the guest session. This patch is available when the [Quality Patches Tool (QPT)](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.9 is installed. The patch ID is MDVA-39163. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.5 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md). Use the patch ID as a search keyword to locate the patch.

## Issue

Shipping methods are not available when the new user is registered, and products in the cart are from the guest session.

<u>Steps to reproduce</u>:

1. Go to **Admin** > **Stores** > **Configuration** > **Sales** > **Delivery Methods**. Enable only the **Flat Rate** shipping method and disable everything else.
1. In the **Flat Rate** shipping method, select the **Specific** country option available in the **Ship to Applicable Countries** setting and select one country from the list (e.g., United States).
1. Go to **Admin** > **Stores** > **Configuration** > **Customer** > **Customer Configuration** and set **Require Email Confirmation** to _Yes_.
1. Create a new Email Template in **Admin** > **Marketing** > **Email Templates** and load `Footer (magento/luma)` template and replace the template content with a CMS block.

    ```CMS
    {{block class="Magento\Cms\Block\Block" block_id="footer_links_block"}}
    ```

1. Go to **Admin** > **Content** > **Design** > **Configuration** and select the theme which relates to your frontend website. Set the "Footer Template" to the new email template created.
1. Go to the frontend and add a product to the cart.
1. Create a customer; you'll get an email to confirm the email address. Click the verification link. You will be logged into the website.
1. Go to **My Account** and add an address. Set the address country to the shipping country that you set in the admin configuration previously.
1. Go to checkout.

<u>Expected results</u>:

Shipping method is available, as the customer has an address that is compatible with the shipping country.

<u>Actual results</u>:

Shipping method is not available.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
