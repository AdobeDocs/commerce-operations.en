---
title: 'ACSD-61134: [!UICONTROL Braintree Vault] payment method automatically deselected in checkout workflow'
description: Apply the ACSD-61134 patch to resolve the Adobe Commerce issue where the *[!UICONTROL Braintree Vault]* payment method is automatically deselected in the checkout workflow when a shopper updates their billing address by deselecting the *[!UICONTROL My billing and shipping address are the same]* checkbox.
feature: Checkout
role: Admin, Developer
exl-id: 8aad34e2-89ef-460c-8921-91098bd1645b
---
# ACSD-61134: *[!UICONTROL Braintree Vault]* payment method automatically deselected in checkout workflow

The ACSD-61134 patch fixes the issue where the *[!UICONTROL Braintree Vault]* payment method is automatically deselected in the checkout workflow when a shopper updates their billing address by deselecting the *[!UICONTROL My billing and shipping address are the same]* checkbox. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.54 is installed. The patch ID is ACSD-61134. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.7-beta1.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p7

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

*[!UICONTROL Braintree Vault]* payment method is automatically deselected in the checkout workflow.

<u>Steps to reproduce</u>:

1. Configure the *[!DNL Braintree]* payment method with *[!UICONTROL Vault]* enabled.
1. Checkout and save a card in the *[!UICONTROL Vault]*.
1. Checkout another product.
1. On the *[!UICONTROL Shipping]* page, add a new shipping address so you have two addresses to select.
1. On the *[!UICONTROL Payment]* page, select your payment method and click **[!UICONTROL My billing and shipping addresses are the same]**.

<u>Expected results</u>:

The selected payment method remains selected.

<u>Actual results</u>:

The selected payment method is unchecked.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
