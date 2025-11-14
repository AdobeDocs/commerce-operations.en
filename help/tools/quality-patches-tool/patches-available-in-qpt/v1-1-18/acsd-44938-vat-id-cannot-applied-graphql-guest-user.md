---
title: "ACSD-44938: VAT_ID can't be applied in [!DNL GraphQL] request for guest user"
description: The ACSD-44938 patch fixes the issue where the `VAT_ID` can't be applied in a [!DNL GraphQL] request for a guest user. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-44938. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.
feature: Admin Workspace, GraphQL
role: Admin
exl-id: 62d36c27-545a-4c32-be69-a92e4b3ca2ca
type: Troubleshooting
---
# ACSD-44938: VAT_ID can't be applied in [!DNL GraphQL] request for guest user

The ACSD-44938 patch fixes the issue where the `VAT_ID` can't be applied in a [!DNL GraphQL] request for a guest user. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.18 is installed. The patch ID is ACSD-44938. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.3-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches). Use the patch ID as a search keyword to locate the patch.

## Issue

`VAT_ID` can't be applied in a [!DNL GraphQL] request for a guest user.

<u>Steps to reproduce</u>:

1. Follow the steps mentioned in the [[!DNL GraphQL] tutorial](https://developer.adobe.com/commerce/webapi/graphql/tutorials/checkout/) in our developer documentation to create a guest cart.
1. Try to apply `VAT_ID` for the guest user using [!DNL GraphQL].

<u>Expected results</u>:

`VAT_ID` can be applied the same way as for a registered customer. See [`createCustomerAddress` mutation](https://developer.adobe.com/commerce/webapi/graphql/schema/customer/mutations/create-address/) article in our developer documentation.

<u>Actual results</u>:

`VAT_ID` can't be applied for a guest user using [!DNL GraphQL].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about the [!DNL Quality Patches Tool], refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
