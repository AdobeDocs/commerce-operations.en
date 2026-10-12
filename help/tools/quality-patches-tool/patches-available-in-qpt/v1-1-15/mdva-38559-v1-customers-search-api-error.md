---
title: 'MDVA-38559: /V1/customers/search API returns error'
description: The MDVA-38559 patch fixes the issue where the `/V1/customers/search` API returns an error for customers who have more than one subscription. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.15 is installed. The patch ID is MDVA-38559. Please note that the issue is fixed in Adobe Commerce 2.4.3.
feature: REST, Search
role: Admin
exl-id: 6bcb65d0-1389-4090-b53c-8048bf64d8fb
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: c4f010fa-1478-4300-a88d-706fbc036a7a
    internal-label: APIs and SDKs
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: e0ca0e7a-9738-48d1-b98b-615468ab4aaf
    internal-label: REST API
  - id: a1d22079-48b9-5e69-9ee6-eb236068ef34
    internal-label: Search
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# MDVA-38559: /V1/customers/search API returns error

The MDVA-38559 patch fixes the issue where the `/V1/customers/search` API returns an error for customers who have more than one subscription. This patch is available when the [Quality Patches Tool (QPT)](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.15 is installed. The patch ID is MDVA-38559. Please note that the issue is fixed in Adobe Commerce 2.4.3.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.1-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.0 - 2.4.2-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md). Use the patch ID as a search keyword to locate the patch.

## Issue

`/V1/customers/search` API returns an error for customers with more than one subscription.

<u>Prerequisites</u>:

The Adobe Commerce store uses more than one website.

<u>Steps to reproduce</u>:

1. Go to **Store** > **Configuration** > **Customer** > **Customer Configuration** > **Account Sharing Options** and select **Global**.
1. Go to **Customers** > **All Customers**, select **Edit** on any customer, and then select **Newsletter**.
1. Subscribe to a newsletter for more than one website and save the customer.
1. Send the following request:

```REST API
V1/customers/search?searchCriteria[filterGroups][0][filters][0][field]=email&searchCriteria[filterGroups][0][filters][0][value]=test@example.com&searchCriteria[filterGroups][0][filters][0][conditionType]=eq
```

<u>Expected results</u>:

The customer's search results are displayed.

<u>Actual results</u>:

The following error is logged to exception.log: *Item (Magento\Customer\Model\Customer\Interceptor) with the same ID "1" already exists.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
