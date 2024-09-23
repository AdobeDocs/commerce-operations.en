---
title: 'ACSD-51528: Different behaviors on snake_case formatting'
description: Apply the ACSD-51528 patch to fix the Adobe Commerce issue where there are different behaviors on snake_case formatting.
exl-id: dd878321-8032-41f3-8dcd-acb0cc023b44
feature: Variables
role: Admin
---
# ACSD-51528: Different behaviors on snake_case formatting

The ACSD-51528 patch fixes different behaviors on snake_case formatting. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.32 is installed. The patch ID is ACSD-51528. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The different behaviors on snake_case formatting.

<u>Steps to reproduce</u>:

1. Test the `\Magento\Framework\Api\DataObjectHelper::populateWithArray` function with a variety of different property names.
1. The properties with names like *NewPName* should be transformed into *new_p_name*, instead they're being transformed to *new_pname*.
1. Also, when using the *getNewPName* function in the object, *null* will be returned because the *Abstract model* will correctly transform the call to *new_p_name* making both functions incompatible with each other.

<u>Expected results</u>

The **[!UICONTROL populateWithArray]** function should transform the object properties to snake_case correctly, making it compatible with the **[!DNL AbstractModel's]** `Getters` and `Setters`.

<u>Actual results</u>

When using the **[!UICONTROL populateWithArray]** function, any object properties that contain two or more capital letters in a row in its name will cause the snake_case transformation to be incorrect in the final data array.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
