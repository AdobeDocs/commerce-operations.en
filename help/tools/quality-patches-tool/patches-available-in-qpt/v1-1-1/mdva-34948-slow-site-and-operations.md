---
title: 'MDVA-34948: Slowing of website'
description: The MDVA-34948 Adobe Commerce patch fixes the issue of slowing of the website. This patch is available when the [Quality Patches Tool (QPT)](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.1 is installed. The patch ID is MDVA-34948. Please note that the issue was fixed in Adobe Commerce version 2.4.1.
feature: Observability, Configuration
role: Admin
exl-id: 3c2a2d44-7d60-42da-a0a3-785fb61d571e
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4239b8a6-e74f-567d-a7a5-b98b9ead0ea4
    internal-label: Observability
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# MDVA-34948: Slowing of website


## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce on our cloud infrastructure 2.4.0-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce on-premises and Adobe Commerce on our cloud infrastructure 2.3.6-2.3.6-p1, 2.4.0-2.4.0-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new Quality Patches Tool releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md). Use the patch ID as a search keyword to locate the patch.

## Issue

The website gets slow, which hampers operations.

<u>Steps to reproduce</u>:

1. Run `show processlist` in MySQL.
1. Check if there are multiple queries like:

```sql
   SELECT GET_LOCK(SYSTEM_CONFIG', '10');
```

<u>Expected results</u>:

`GET_LOCK` should be executed immediately.

<u>Actual results</u>:

Multiple `GET_LOCK` queries get stuck for up to 10 seconds each.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about Quality Patches Tool, refer to:

* [Quality Patches Tool released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using Quality Patches Tool](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!DNL Quality Patches Tool] guide.

For info about other patches available in QPT, refer to the [Patches available in QPT](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) section.
