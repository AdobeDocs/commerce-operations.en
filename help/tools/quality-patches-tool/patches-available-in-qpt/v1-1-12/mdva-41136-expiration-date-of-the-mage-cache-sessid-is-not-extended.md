---
title: 'MDVA-41136: Expiration date of mage-cache-sessid is not extended'
description: The MDVA-41136 patch solves the issue where the expiration date of the `mage-cache-sessid` cookie is not extended, resulting in customer data cleanup. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-41136. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.
feature: Cache
role: Admin
exl-id: f9fbbbdb-b440-4e94-a5b0-c03cdad9f010
type: Troubleshooting
---
# MDVA-41136: Expiration date of mage-cache-sessid is not extended

The MDVA-41136 patch solves the issue where the expiration date of the `mage-cache-sessid` cookie is not extended, resulting in customer data cleanup. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.12 is installed. The patch ID is MDVA-41136. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.5.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.0 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

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

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
