---
title: 'MDVA-41136: Expiration date of mage-cache-sessid is not extended'
description: The MDVA-41136 patch solves the issue where the expiration date of the `mage-cache-sessid` cookie is not extended, resulting in customer data cleanup. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-41136. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
exl-id: 7673d084-1ed2-4f1d-8525-e665b971baf2
feature: Cache
role: Admin
---
# MDVA-41136: Expiration date of mage-cache-sessid is not extended

The MDVA-41136 patch solves the issue where the expiration date of the `mage-cache-sessid` cookie is not extended, resulting in customer data cleanup. This patch is available when the [Quality Patches Tool (QPT)](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.12 is installed. The patch ID is MDVA-41136. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://devdocs.magento.com/quality-patches/tool.html#patch-grid). Use the patch ID as a search keyword to locate the patch.

## Issue

The expiration date of the `mage-cache-sessid` is not extended, resulting in customer data cleanup.

<u>Steps to reproduce</u>:

1. In the Commerce Admin, go to **Stores** > **Configuration** > **Web** > **Default Cookie Settings** > and set **Cookie Lifetime** to 60.
1. Log in as a customer on the storefront.
1. Go to **My account**.
1. Reload the page after 30 seconds.

<u>Expected results</u>:

The customer's name in the header is displayed.

<u>Actual results</u>:

The customer's name in the header is missing and the *Default welcome msg!* message  is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [Software Update Guide > Apply Patches](https://devdocs.magento.com/guides/v2.4/comp-mgr/patching/mqp.html) in our developer documentation.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [Patches available in QPT](https://devdocs.magento.com/quality-patches/tool.html#patch-grid) in our developer documentation.
