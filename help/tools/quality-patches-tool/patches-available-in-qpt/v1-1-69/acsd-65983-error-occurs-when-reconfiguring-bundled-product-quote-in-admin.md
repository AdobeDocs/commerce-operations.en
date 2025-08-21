---
title: 'ACSD-65983: Error occurs when reconfiguring bundled product quote in Admin'
description: Apply the ACSD-65983 patch to fix the Adobe Commerce issue where an error appears when attempting to configure a bundle product in the [!UICONTROL Sales] &gt; [!UICONTROL Quotes] &gt; [!UICONTROL Edit] screen on the backend.
feature: B2B, Quotes
role: Admin, Developer
type: Troubleshooting
exl-id: d03d09bc-a444-486f-ad6b-fddbbf795d8a
---
# ACSD-65983: Error occurs when reconfiguring bundled product quote in Admin

The ACSD-65983 patch fixes the issue where reconfiguring a bundled product quote in the Admin backend returns an error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-65983. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Reconfiguration of a bundled product quote in the Admin backend returns an error.

<u>Steps to reproduce</u>:

1. Go to Admin panel and enable the **[!UICONTROL B2B Feature]**: **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Feature]**.
1. Create a bundle product with fixed amount (For example: *$10*) and add three or more simple products with *0* amount, *2* in **Option 1** and *other* in **Option 2**.
1. Create a company account from the frontend.
1. Go to **[!UICONTROL Catalog]** > **[!UICONTROL Shared Catalogs]**, assign the created company and products to the new/custom shared catalog.
1. Log in as a **Company User** on the frontend, and add one simple product to the cart from the bundle.
1. Open the cart page and submit as a **Request a Quote**.
1. Go to the backend and edit the created quote.
1. In the **Quote Item** section, click the **Configure** button.
1. Select another simple product from the **Option 2**.
1. Now click on the **OK** button and see the error message.

<u>Expected results</u>:

You're able to successfully configure the requested quote items from the Admin normally, with no error message displayed.

<u>Actual results</u>:

You see the error message:

*A technical problem with the server created an error. Try again to continue what you were doing. If the problem persists, try again later.*

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide
