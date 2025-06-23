---
title: 'MDVA-41350: Exception when admin adds products outside their access'
description: The MDVA-41350 patch fixes the issue where an exception error is thrown instead of a limited access notification when an admin user adds a product in the order by SKU which is outside their access. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-41350. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Admin Workspace, Products
role: Admin
exl-id: 4dc5ee5c-bd93-42e1-9c63-93ffb8e5f21c
type: Troubleshooting
---
# MDVA-41350: Exception when admin adds products outside their access

The MDVA-41350 patch fixes the issue where an exception error is thrown instead of a limited access notification when an admin user adds a product in the order by SKU which is outside their access. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.11 is installed. The patch ID is MDVA-41350. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.3.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

When an admin user with restricted access adds a product by SKU outside their access in the order, an exception occurs instead of a message notifying the user of their limited access.

<u>Steps to reproduce</u>:

1. Log into the admin as a user with access to only a specific website.
1. Go to **Sales** > **Orders** and click **Create New Order**.
1. Select a customer and a store view.
1. Click on **Add Products by SKU**.
1. Search for an SKU that is not assigned to any website or not assigned to the website for which you have access.
1. Click **Add to Order**.

<u>Expected results</u>:

An appropriate error message is displayed.

<u>Actual results</u>:

An exception occurs.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
