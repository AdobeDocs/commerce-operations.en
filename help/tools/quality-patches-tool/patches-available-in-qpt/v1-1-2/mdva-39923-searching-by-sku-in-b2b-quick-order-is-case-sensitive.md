---
title: 'MDVA-39923: Search by SKU in B2B quick order functionality is case-sensitive'
description: The MDVA-39923 patch fixes the issue where customers get an error when they search the order by SKU in B2B quick order functionality with a different case than the one with which the name is saved. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.2 is installed. The patch ID is MDVA-39923. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.
feature: B2B, Catalog Management, Orders, Search
role: Admin
exl-id: 9bed5615-b398-42f5-8313-ae2acca59155
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: c18ed297-2187-4aec-affb-9d9654eca6fc
    internal-label: Catalog management
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: bd989d82-1e15-4534-88db-f1f51dd77ffa
    internal-label: Accounts
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: f56d26ed-050b-4fb7-b29b-8e6e994e80a2
    internal-label: B2B
  - id: a1d22079-48b9-5e69-9ee6-eb236068ef34
    internal-label: Search
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# MDVA-39923: Search by SKU in B2B quick order functionality is case-sensitive

The MDVA-39923 patch fixes the issue where customers get an error when they search the order by SKU in B2B quick order functionality with a different case than the one with which the name is saved. This patch is available when the [Quality Patches Tool (QPT)](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.2 is installed. The patch ID is MDVA-39923. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.4.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.1 &ndash;  2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md). Use the patch ID as a search keyword to locate the patch.

## Issue

Searching by SKU in B2B quick order functionality is case-sensitive and shows an error when a different case is used than the one with which the SKU is saved.

<u>Prerequisites</u>:

B2B modules are installed.

<u>Steps to reproduce</u>:

1. Log in to the admin and go to **Stores** > **Configuration** > **B2B**.
1. Enable **Shared Catalog** and **Quick Order**.
1. Create a product with uppercase SKU, e.g., TEST20-1234
1. Assign created product to the **Shared Catalog**.
1. Log in as a customer and click on **Quick Order**.
1. Enter the SKU in lowercase, e.g., test20-1234.

<u>Expected results</u>:

The product should be found irrespective of the case used.

<u>Actual results</u>:

The following error message is received: *1 product(s) require(s) your attention*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
