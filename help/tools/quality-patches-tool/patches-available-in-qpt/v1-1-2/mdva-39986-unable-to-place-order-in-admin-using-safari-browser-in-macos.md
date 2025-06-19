---
title: 'MDVA-39986: Unable to place orders in admin in Safari browser on macOS'
description: The MDVA-39986 patch fixes the issue where users are unable to place orders in the admin using the Safari browser on macOS. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39986. Please note that the issue was fixed in Adobe Commerce 2.4.3.
feature: Admin Workspace, Orders
role: Admin
exl-id: bd4e72fe-278d-40ae-98d3-1eeca0a0e70c
type: Troubleshooting
---
# MDVA-39986: Unable to place orders in admin in Safari browser on macOS

The MDVA-39986 patch fixes the issue where users are unable to place orders in the admin using the Safari browser on macOS. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39986. Please note that the issue was fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.2-p1 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Users are not able to place orders in the admin using the Safari browser on macOS.

<u>Steps to reproduce</u>:

1. Place an order.
1. Go to the admin using Safari browser on macOS and open the order you created earlier.
1. Click on **Reorder**.
1. Try to update **Product Quantity**.

<u>Expected results</u>:

Users should be able to re-order using the Safari browser on macOS.

<u>Actual results</u>:

Users get a JS error where the spinning wheel appears and runs endlessly.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
