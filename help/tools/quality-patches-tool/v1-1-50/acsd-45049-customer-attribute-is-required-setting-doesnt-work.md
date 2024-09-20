---
title: "ACSD-45049: Customer 'Is required' attribute setting doesn't work as per website scope in Admin"
description: Apply the ACSD-45049 patch to fix the Adobe Commerce issue where customer "[!UICONTROL Is required]" attribute is not properly overridden as per the website scope in Admin.
feature: Attributes, Customers
role: Admin, Developer
exl-id: e6ed7076-9d39-4b01-9e20-50ce296032c0
---
# ACSD-45049: Customer *[!UICONTROL Is required]* attribute setting doesn't work as per website scope in Admin

The ACSD-45049 patch fixes the issue where the customer *[!UICONTROL Is required]* attribute setting doesn't work properly as per the website scope in Admin. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.50 is installed. The patch ID is ACSD-45049. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.4-p7 and 2.4.5 - 2.4.5-p9

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Customer *[!UICONTROL Is required]* attribute setting doesn't work properly as per the website scope in Admin.

<u>Steps to reproduce</u>:

1. Create two websites.
1. Open **[!UICONTROL Admin]** > **[!UICONTROL Stores]** > **[!UICONTROL Customer attribute]**.
1. Create a new attribute, set **[!UICONTROL Is value required]** = *No*.
1. Switch to the default website, and change **[!UICONTROL Is value required]** = *Yes*. The other website has the default value.
1. Create a new customer from Admin for the non-default website.

<u>Expected results</u>:

The attribute is not required for the non-default website.

<u>Actual results</u>:

* The attribute is required for the non-default website when creating a customer in Admin.
* The attribute is not required for the non-default website when registering a customer on storefront.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
