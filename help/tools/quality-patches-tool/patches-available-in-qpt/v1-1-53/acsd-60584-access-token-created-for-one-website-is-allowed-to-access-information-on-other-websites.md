---
title: 'ACSD-60584: Access token created for one website is allowed to access information on other websites'
description: Apply the ACSD-60584 patch to fix the issue where the access token created for the user on one website is allowed to access or change customer information on other websites.
feature: Customers, GraphQL
role: Admin, Developer
exl-id: ea30ba92-4b7b-44f9-a1b1-97946061d9e6
---
# ACSD-60584: Access token created for one website is allowed to access information on other websites

The ACSD-60584 patch fixes the issue where the access token created for the user on one website is allowed to access or change customer information on other websites. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.53 is installed. The patch ID is ACSD-60584. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6-p8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The API token created for the user on one website allows you to access customer information, create a cart, and add products to the cart on other website views.

<u>Steps to reproduce</u>:

1. Ensure **[!DNL Share Customer Accounts configuration]** is set to **[!UICONTROL Per Website]**.
1. Create additional *website*, *store*, and *storeview*.
1. Create two customers with the same email on the main *website* and the *website* from the previous step.
1. Generate a customer token via [!DNL GraphQL] on the main website.
1. Using the generated token, send a customer **[!DNL GraphQL]** query with the second website in the header to retrieve customer information.
1. Observe the returned result.

<u>Expected results</u>:

Customer information from the main *website* is returned because the token from the main *website* is used in [!DNL GraphQL] query.

<u>Actual results</u>:

Customer information from the second website is returned.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
