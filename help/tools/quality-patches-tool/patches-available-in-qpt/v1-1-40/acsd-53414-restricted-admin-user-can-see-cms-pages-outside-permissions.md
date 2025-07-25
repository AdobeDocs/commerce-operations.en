---
title: 'ACSD-53414: Restricted admin users can see CMS pages outside their permissions scope'
description: Apply the ACSD-53414 patch to fix the Adobe Commerce issue where a restricted admin user can see CMS pages outside of their permissions scope.
feature: CMS
role: Admin, Developer
exl-id: 86658336-679b-4fe0-9d26-56064ff0c604
type: Troubleshooting
---
# ACSD-53414: Restricted admin users can see CMS pages outside their permissions scope

The ACSD-53414 patch fixes the issue where a restricted admin user can see CMS pages outside their permissions scope. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.40 is installed. The patch ID is ACSD-53414. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Restricted admin users can see CMS pages beyond their permissions scope.

<u>Steps to reproduce</u>:

1. Create a new website (sub_website), store (sub_store), and storeview (sub_storeview).
1. Create a sub_expert role, allowing the scope of sub_website and sub_store. Assign the following permissions only: [!UICONTROL Dashboard] and [!UICONTROL Pages].
1. Create a new admin user and assign it to the sub_expert role.
1. Assign the following CSM pages to sub_storeview and default storeview.

    * [!UICONTROL 404 Not Found] > Sub storeview
    * [!UICONTROL 503 Service Unavailable] > Default storeview

1. Sign in to the Admin using the admin user created in Step 3.
1. Check the CMS page grid.

<u>Expected results</u>:

*[!UICONTROL 503 Service Unavailable]* page is not visible to the web admin.

<u>Actual results</u>:

*[!UICONTROL 503 Service Unavailable]* is visible to the web admin.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
