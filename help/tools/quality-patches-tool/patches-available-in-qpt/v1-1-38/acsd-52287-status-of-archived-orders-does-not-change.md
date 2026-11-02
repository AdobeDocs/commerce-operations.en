---
title: 'ACSD-52287: Status of archived orders does not change'
description: Apply the ACSD-52287 patch to fix the Adobe Commerce issue where the status of archived orders does not change from *completed* to *closed* on grid after the credit memo was submitted.
feature: Orders, Checkout
role: Admin, Developer
exl-id: 012f49ba-fdc1-4e1e-87fe-7b9c661f231b
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 4820f335-ec9f-5611-8fe3-f5b7e3e56967
    internal-label: Orders
  - id: 8cd50456-5eb0-5364-922a-f14161feb828
    internal-label: Checkout
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# ACSD-52287: Status of archived orders does not change

The ACSD-52287 patch fixes the issue where status of archived orders does not change from *completed* to *closed* on grid after the credit memo was submitted. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.38 is installed. The patch ID is ACSD-52287. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.3.7 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The status of archived orders does not change from *completed* to *closed* on grid after the credit memo was submitted.

<u>Steps to reproduce</u>:

1. Configure *[!UICONTROL Asynchronous Indexing]*.
   * On the Admin sidebar, go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]**.
   * In the left panel, expand the **[!UICONTROL Advanced]** section and choose **[!UICONTROL Developer]** underneath.
   * Expand the **[!UICONTROL Grid Settings]** section.
   * Set *[!UICONTROL Asynchronous indexing]* to *Yes*.
   * Click **[!UICONTROL Save Config]**.
1. Configure the *[!UICONTROL Order Archive]*.
   * On the Admin sidebar, go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configuration]**.
   * In the left panel, expand the **[!UICONTROL Sales]** section and choose **[!UICONTROL Sales]** underneath.
   * Expand the **[!UICONTROL Orders, Invoices, Shipments, Credit Memos Archiving]** section.
   * Set *[!UICONTROL Enable Archiving]* to *Yes* (Leave rest of the configurations as default).
   * Click **[!UICONTROL Save Config]**.
1. Place an order in the frontend.
1. Run the [!DNL cron]  for order to appear in the *[!UICONTROL Admin Order Grid]*.
1. Invoice and Ship the order to update the order status to *Complete*.
1. Run the [!DNL cron]  to update the *[!UICONTROL Sales Order Grid]* with the latest order status.
1. Archive the order.
1. Go to the *[!UICONTROL Archived order grid]*.
1. Open the archived order and refund the order offline by creating a [!UICONTROL Credit Memo] to make the [!UICONTROL Order status]: *Closed*.
1. Run the [!DNL cron] for a few times.
1. Check the *[!UICONTROL Archived order grid]* for the new order status.

<u>Expected results</u>:

The order is displayed as *Closed*.
    
<u>Actual results</u>:

The order is displayed as *Complete*.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-on-cloud/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
