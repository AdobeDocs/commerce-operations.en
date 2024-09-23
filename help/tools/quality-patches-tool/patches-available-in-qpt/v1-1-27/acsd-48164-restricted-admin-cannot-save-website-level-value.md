---
title: 'ACSD-48164: restricted admin cannot save website-level value'
description: Apply the ACSD-48164 patch to fix the Adobe Commerce issue where a restricted admin cannot save a website-level value.
exl-id: 6ec15163-ad30-4566-a46c-5756bfd9f8d4
feature: Admin Workspace
role: Admin
---
# ACSD-48164: restricted admin cannot save website-level value

The ACSD-48164 patch fixes the issue where a restricted admin cannot save a website-level value. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-48164. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Restricted admin is not able to save a website-level value.

<u>Steps to reproduce</u>:

1. Create a new website, store, and store view in [!UICONTROL Admin] > **[!UICONTROL Store]** > **[!UICONTROL All Stores]**.
1. Create a new admin role in [!UICONTROL Admin] > **[!UICONTROL System]** > **[!UICONTROL User Roles]**.

    * Go to **[!UICONTROL Role Resources]** > **[!UICONTROL Role Scopes]**, select the new website, and assign this role to any admin user.

1. Select any product and assign only the new website. Do not select the default website.
1. Log in as the admin user assigned in step two and edit the product under **[!UICONTROL All Store View]** scope by changing any website-level attribute like *[!UICONTROL Status]*, *[!UICONTROL Tax Class]*, and set the product as new.
1. Save the product.

<u>Expected results</u>:

Admin user associated with the role scope to one website is able to save Website-level product attributes using the *[!UICONTROL All Store View]* scope.

<u>Actual results</u>:

The success message that the product was saved appears, but the product attribute values remain unchanged.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
