---
title: 'ACSD-63992: [!UICONTROL Cart Price Rule] with coupon and shipping method condition error in Admin UI'
description: Apply the ACSD-63992 patch to fix the Adobe Commerce issue where the [!UICONTROL Cart Price Rule] with a coupon and a condition based on a shipping method can't be correctly applied through the Admin UI.
feature: Price Rules, Admin Workspace
role: Admin, Developer
exl-id: 80f407c7-4552-4cfb-96ae-43773d2ec398
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: a507b1ed-4937-53da-97ae-57d36bd5b9e0
    internal-label: Price Rules
  - id: e7dae43f-215c-4cdf-90d3-c5a461a6e669
    internal-label: Admin tools and workspace
subfeature_v2:
  - id: bb2df8be-afdd-4818-b6b5-95ca1dd3bc3a
    internal-label: Admin workspace
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-63992: [!UICONTROL Cart Price Rule] with coupon and shipping method condition error in Admin UI

The ACSD-63992 patch fixes the issue where the [!UICONTROL Cart Price Rule] with a coupon and a condition based on a shipping method can't be correctly applied through the Admin UI. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.60 is installed. The patch ID is ACSD-63992. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p4

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/). Use the patch ID as a search keyword to locate the patch.

## Issue

When a cart rule includes a condition for the shipping method within the **[!UICONTROL Conditions]** section, the associated coupon code doesn't apply when creating an order through the Admin Panel. Instead, the system displays the following error:

_The <> coupon code isn't valid. Verify the code and try again._

<u>Steps to reproduce</u>:

1. Create a cart price rule and describe its conditions:
    * Under *[!UICONTROL Conditions]*: Add a condition to include the shipping method (for example, *[!UICONTROL Flat Rate]*).
    * Under *[!UICONTROL Rule Information]*: Set **[!UICONTROL Coupon]** to *[!UICONTROL Specific Coupon]* and then enter **[!UICONTROL Coupon Code]** as *TEST*.
1. Create a new order from the Admin Panel and enter the coupon code *TEST* in the **[!UICONTROL Apply Coupon]** field.

<u>Expected results</u>:

The coupon gets applied successfully.

<u>Actual results</u>:

The following error message appears:

```text
"The "TEST" coupon code isn't valid. Verify the code and try again."
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
