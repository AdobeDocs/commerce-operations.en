---
title: 'ACSD-54018: Performance issue with catalog widget product list'
description: Apply the ACSD-54018 patch to fix the Adobe Commerce issue where the page loads slowly when adding a catalog widget product list with condition and attribute type boolean.
feature: Attributes, Catalog Management, Page Builder, Page Content, Storefront
role: Admin, Developer
exl-id: 9f20484d-58c7-49d8-87df-1eeb84bee6fe
---
# ACSD-54018: Performance issue with catalog widget product List

The ACSD-54018 patch fixes the issue where the page loads slowly when adding a catalog widget product list with condition and attribute type boolean. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.38 is installed. The patch ID is ACSD-54018. Please note that the issue was fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.5-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The page loads slowly when adding a catalog widget product list with condition and attribute type boolean. 

<u>Steps to reproduce</u>:

1. Generate 100k products.
1. Create a bool attribute with the scope set to [!UICONTROL Store View].
1. Assign attribute to all attribute sets.
    * Assign the attribute value *Yes* to all products.
1. Now go to **[!UICONTROL Catalog]** > **[!UICONTROL Products]**, and select all 100k products.
    * Choose **[!UICONTROL Actions]** > **[!UICONTROL Update Attribute]**.
    * Set the bool attribute to *Yes* and save it.
    * If you logged out on this step, check the *Notes*.
1. Go to CLI and run `php bin/magento queue:con:start product_action_attribute.update`.
    * Make sure the attributes for all products are updated.
1. Now go to **[!UICONTROL Content]** > **[!UICONTROL Pages]** and create a new page.
1. Open **[!UICONTROL Page Builder]** > **[!UICONTROL Add row]** > **[!UICONTROL Add Content]** > **[!UICONTROL Products]**.
1. Choose *[!UICONTROL Select Products By]* = *[!UICONTROL Condition]*.
1. Set the condition *[!UICONTROL Created attribute]* to *[!UICONTROL Yes]* and save it.
1. Go to the frontend and open the created page.
1. Disable full page cache and block html cache.
1. Check the page loading speed.
1. Reload the page a few times and calculate the average loading time.

<u>Expected results</u>:

The page loads fast.

<u>Actual results</u>:

It takes 5-10 seconds to load the page.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
