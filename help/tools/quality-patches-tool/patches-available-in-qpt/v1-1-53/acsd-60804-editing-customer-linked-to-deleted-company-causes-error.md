---
title: 'ACSD-60804: Editing a customer associated with a deleted company results in an error'
description: Apply the ACSD-60804 patch to fix the Adobe Commerce issue where editing a customer associated with a deleted company causes an error *Call to a member function getSuperUserId() on null*.
feature: Companies, Customers, B2B
role: Admin, Developer
exl-id: 09241160-f5ed-41f8-8bb6-2bb8ed5cccd5
type: Troubleshooting
---
# ACSD-60804: Editing a customer associated with a deleted company results in an error

The ACSD-60804 patch fixes the issue where editing a customer associated with a deleted company causes an error *Call to a member function getSuperUserId() on null*. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.53 is installed. The patch ID is ACSD-60804. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.6-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Editing a customer associated with a deleted company causes an error *Call to a member function getSuperUserId() on null*.

<u>Prerequisites:</u>:

Install and enable Adobe Commerce B2B modules.

<u>Steps to reproduce</u>:

1. Go to **[!UICONTROL Settings]** > **[!UICONTROL B2B]** > **[!UICONTROL Enable Company]**.
1. Go to **[!UICONTROL Customers]** > **[!UICONTROL Company]** > **[!UICONTROL Create New Company]**.
1. Log in to `mysql` for the instance.
1. Delete the company where `entity_id` = *1*.
1. Go to **[!UICONTROL Customers]** > **[!UICONTROL All Customers]**.
1. Edit the customer that was automatically created when you created the company.

<u>Expected results</u>:

The customer is edited without an exception error thrown.

<u>Actual results</u>:

An error occurs: *Call to a member function getSuperUserId() on null* if no company is associated with the customer.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
