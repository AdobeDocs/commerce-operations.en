---
title: 'ACSD-56760: Admin user is restricted to a specific website and is unable to sort or add new products'
description: Apply the ACSD-56760 patch to fix the Adobe Commerce issue where the the Admin user that is restricted to a specific website and is unable to sort or add new products inside a category in case the web store has it's own root category.
role: Admin
exl-id: fc1898ce-dcd7-4c0b-bef0-445219e8455f
---
# ACSD-56760: Admin user is restricted to a specific website and is unable to sort or add new products

The ACSD-56760 patch fixes the issue where the the Admin user that is restricted to a specific website and is unable to sort or add new products inside a category in case the web store has it's own root category. This patch is available when the [!DNL Quality Patches Tool (QPT)] 1.1.47 is installed. The patch ID is ACSD-56760. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The Admin user that is restricted to a specific website and is unable to sort or add new products inside a category in case the web store has it's own root category. 

<u>Steps to reproduce</u>:

1. Create *2* websites.
1. Create a **[!UICONTROL restricted admin user]** with access to only *1* website.
1. Login as the **[!UICONTROL restricted admin user]** and try to change the product positions in a category.

*Case 1*:

* *2* stores.
* *2* root categories, each website assigned to it's own category root.

*Case 2*:

* *2* stores.
* Only *1* root category is assigned to both websites.

<u>Expected results</u>:

* *Case 1*: The restricted admin should be able to sort products inside the available category.
* *Case 2*: The restricted admin can't sort products inside the available category, because this will affect the restricted store as well.

<u>Actual results</u>:

* *Case 1*: The restricted admin isn't able to sort products inside the available category.
* *Case 2*: The restricted admin can sort products inside the available category, affecting the restricted stores.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
