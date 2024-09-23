---
title: 'ACSD-49389: Ready for pickup email sent by API when not ready for pickup'
description: Apply the ACSD-49389 patch to fix the Adobe Commerce issue where a ready for pickup email is sent by the API when order is not ready for pickup.
exl-id: a1baae06-cf36-448b-bda4-aff1e5ca68db
feature: REST, Communications
role: Admin
---
# ACSD-49389: Ready for pickup email sent by API when not ready for pickup

The ACSD-49389 patch fixes the issue where a ready-for-pickup email is sent by the API when the order is not ready for pickup. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.29 is installed. The patch ID is ACSD-49389. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [QPT landing page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A ready-for-pickup email is sent by the API when the order is not ready for pickup.

<u>Steps to reproduce</u>:

1. Enable *[!UICONTROL In-Store Delivery]* method.
1. Create a stock source with pickup location enabled.
1. Create new stock using the main website with the source created above.
1. Create a product assigning the same source.
1. Set stock qty = 1.
1. Check out the product created in step 4 using the *[!UICONTROL In-Store Delivery]* method from the storefront.
1. Create an invoice for the order.
1. Set the qty of the product to *0* and make it out of stock.
1. Post the following API request:

```
{
    "orderIds": [
        1
    ]
}
```

<u>Expected results</u>:

Ready for pickup email is not sent.

<u>Actual results</u>:

API returns *Order is not ready for pickup*, but ready to pickup email is sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
