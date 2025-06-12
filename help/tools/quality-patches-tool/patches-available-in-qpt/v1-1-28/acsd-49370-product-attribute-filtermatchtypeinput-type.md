---
title: "ACSD-49370: Product attribute has 'FilterMatchTypeInput' type in GraphQL schema"
description: Apply the ACSD-49370 patch to fix the Adobe Commerce issue where the product attribute has a `FilterMatchTypeInput` type in the GraphQL schema.
feature: Admin Workspace, Attributes, GraphQL, Products
role: Admin
exl-id: 05cc6db6-6ea6-4eb7-8dc0-fcb9f479fd89
---
# ACSD-49370: Product attribute has `FilterMatchTypeInput` type in GraphQL schema

The ACSD-49370 patch fixes the issue where the product attribute has a `FilterMatchTypeInput` type in the GraphQL schema. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.28 is installed. The patch ID is ACSD-49370. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.3-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The product attribute has a `FilterMatchTypeInput` type in the GraphQL schema.

<u>Steps to reproduce</u>:

1. Create *Date and Time* product attribute.

    * [!UICONTROL Type]: [!UICONTROL DateTime]
    * [!UICONTROL Default Label]: [!UICONTROL Date Time]
    * [!UICONTROL Use in Search]: [!UICONTROL Yes]
    * [!UICONTROL Visible in Advanced Search]: [!UICONTROL Yes]

1. Query the *GQL API* documentation for the `ProductAttributeFilterInput` type definition.
1. Observe the input type for the created attribute.

<u>Expected results</u>:

The *Date Time* attribute shows the filter input type `FilterRangeTypeInput`.

<u>Actual results</u>:

The *Date Time* attribute shows the filter input type `FilterMatchInputType`.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
