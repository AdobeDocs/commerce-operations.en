---
title: 'ACSD-46869: Configurable products not updating using REST API at checkout'
description: The ACSD-46869 patch fixes the issue where the configurable products are not getting updated using REST API at the checkout. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-46869. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
exl-id: d1bac489-f0f3-4b50-bc48-86c844230da7
feature: REST, Checkout, Configuration, Orders, Products
role: Admin
---
# ACSD-46869: Configurable products not updating using REST API at checkout

The ACSD-46869 patch fixes the issue where configurable products are not getting updated using REST API at checkout. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.20 is installed. The patch ID is ACSD-46869. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL QPT] landing page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Configurable products are not updated using REST API during checkout.

<u>Steps to reproduce</u>:

1. Create a configurable product with color and size attributes.
1. Select **[!UICONTROL Options]** and add the product to the cart.
1. Go to **[!UICONTROL Checkout]**, update the size multiple times except for qty, and check the request and response.
1. You get the following response when you update the size.

```REST API
{"extension_attributes":{"configurable_item_options":[
{"option_id":"960","option_value":25083},
{"option_id":"801","option_value":177}
]}}
```

<u>Expected results</u>:

The value is updated as per the changes.

<u>Actual results</u>:

`option_value` is not updated, so when the order is placed, it has the old size value.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tools] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the Quality Patches Tool guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/support-tools/patches/check-patch-for-magento-issue-with-magento-quality-patches.html) in our support knowledge base.

For info about other patches available in [!DNL QPT], refer to [Patches available in [!DNL QPT]](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the Quality Patches Tool guide.
