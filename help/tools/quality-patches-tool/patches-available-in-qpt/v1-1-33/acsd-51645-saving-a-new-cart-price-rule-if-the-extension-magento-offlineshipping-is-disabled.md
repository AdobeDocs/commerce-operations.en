---
title: 'ACSD-51645: Saving a new Cart Price Rule if the extension Magento_OfflineShipping is disabled'
description: Apply the ACSD-51645 patch to fix the Adobe Commerce issue where an error occurs when saving a new Cart Price Rule if the extension Magento_OfflineShipping is disabled.
exl-id: 301086bb-7aab-4e74-93e6-9080eebcb026
---
# ACSD-51645: Saving a new Cart Price Rule if the extension Magento_OfflineShipping is disabled

The ACSD-51645 patch fixes the issue where an error occurs when saving a new Cart Price Rule if the extension Magento_OfflineShipping is disabled. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.33 is installed. The patch ID is ACSD-51645. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>). Use the patch ID as a search keyword to locate the patch.

## Issue

Getting an error when saving a new Cart Price Rule if the extension `Magento_OfflineShipping` is disabled.

<u>Steps to reproduce</u>:

1. Disable the `Magento_OfflineShipping` module.
1. Log in to **Admin**.
1. Go to **[!UICONTROL Marketing]** > **[!UICONTROL Cart Price Rules]**.
1. Create a new **[!UICONTROL Cart Price Rule]**.
1. Fill the required fields.
1. Save the **[!UICONTROL Cart Price Rule]**.

<u>Expected results</u>:

The Cart Price Rule is saved successfully.

<u>Actual results</u>:

The following error occurs:
`report.ERROR: Warning: Undefined array key "simple_free_shipping" in app/code/Magento/SalesRule/Controller/Adminhtml/Promo/Quote/Save.php on line 67 [] []`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](<https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html>) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](<https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html>) in the [!DNL Quality Patches Tool] guide.
