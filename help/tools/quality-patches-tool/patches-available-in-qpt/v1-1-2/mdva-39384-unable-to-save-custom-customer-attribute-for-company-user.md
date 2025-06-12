---
title: 'MDVA-39384: Unable to save custom customer attribute for company user'
description: The MDVA-39384 patch solves the issue where the custom customer attribute for a company user is not saved. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39384. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: Attributes, B2B, Companies
role: Developer
exl-id: 0ccaa4c5-ca43-4b25-963b-b9a547ecc71f
---
# MDVA-39384: Unable to save custom customer attribute for company user

The MDVA-39384 patch solves the issue where the custom customer attribute for a company user is not saved. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39384. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.1 - 2.3.6, 2.4.1 - 2.4.3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Custom customer attribute for a company user is not saved.

<u>Prerequisites</u>:

B2B modules are installed.

<u>Steps to reproduce</u>:

1. Go to **Stores** > Settings > **Configuration** > **B2B Features** and set the **Enable Company** to Yes.
1. Create a custom customer attribute:
    * Values Required: Yes (optional, enable it so the validation error is displayed).
    * Show on Storefront: Yes.
    * Forms to Use In: All available in the list.
1. Create a Company and log in as the company admin.
1. Navigate to Company Structure in your account.
1. Click on the **Add User** link.
1. Fill the form including the custom attribute.
1. Click **Save**.

<u>Expected results</u>:

The custom attribute values are saved with the new company user.

<u>Actual results</u>:

The custom attribute values are NOT saved with the new company user.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
