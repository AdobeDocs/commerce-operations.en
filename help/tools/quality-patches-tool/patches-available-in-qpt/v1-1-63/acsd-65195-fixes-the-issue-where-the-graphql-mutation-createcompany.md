---
title: 'ACSD-65195: GraphQL `createCompany` mutation returns an error for a country without a required region'
description: Apply the ACSD-65195 patch to fix the Adobe Commerce issue where the GraphQL `createCompany` mutation throws an error for countries that don't require a region.
feature: B2B, Companies, GraphQL
role: Admin, Developer
exl-id: b9eed00c-26f2-47fe-b1a0-6b020527f0c1
---
# ACSD-65195: GraphQL `createCompany` mutation returns an error for a country without a required region

The ACSD-65195 patch fixes the issue where the [!UICONTROL GraphQL] `createCompany` mutation throws an error for countries that don't require a region. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.63 is installed. The patch ID is ACSD-65195. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p9, 2.4.7 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The [!UICONTROL GraphQL] `createCompany` mutation returns an error when a region is specified for a country that doesn't require one.

<u>Steps to reproduce</u>:

1. Enable **[!UICONTROL B2B Companies]**.
1. Send the `createCompany` [!UICONTROL GraphQL] mutation with a specified region field for a country that doesn't require one. For example: [!UICONTROL country_id]: *AE* and [!UICONTROL region]: *Dubai*.
1. Check the GraphQL response.

<u>Expected results</u>:

The company should be created successfully without returning an error when a region is specified for a country that does not require one.

<u>Actual results</u>:

The company is not created, and the following error is returned:
`Error: Invalid value of "Dubai" provided for the region field.`

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: Upgrades and Patches > Apply Patches in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
