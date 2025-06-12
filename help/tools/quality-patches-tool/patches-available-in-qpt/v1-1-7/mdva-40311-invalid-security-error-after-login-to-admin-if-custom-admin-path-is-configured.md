---
title: 'MDVA-40311: "Invalid security or form key" error after login into Admin if custom admin path is configured'
description: 'The MDVA-40311 patch fixes the issue where the Admin user gets an error message: *Invalid security or form key. Please refresh the page*, after login into the Admin if the custom admin path is configured and the secret key is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.7 is installed. The patch ID is MDVA-40311. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.'
feature: Admin Workspace, Compliance, Security
role: Admin
exl-id: dce4914b-e32e-4af0-be24-e55680191fa3
---
# MDVA-40311: "Invalid security or form key" error after login into Admin if custom admin path is configured

The MDVA-40311 patch fixes the issue where the Admin user gets an error message: *Invalid security or form key. Please refresh the page*, after login into the Admin if the custom admin path is configured and the secret key is enabled. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.7 is installed. The patch ID is MDVA-40311. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2-p2 - 2.4.3-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

Admin user gets an error message: *Invalid security or form key. Please refresh the page*, after login into the Admin if the custom admin path is configured and the secret key is enabled.

<u>Steps to reproduce</u>:

* Log in as the Admin user using a valid username and password.

<u>Expected results</u>:

User is able to log in without any error message.

<u>Actual results</u>:

*Invalid security or form key. Please refresh the page* error message is displayed.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
