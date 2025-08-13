---
title: 'ACSD-65983: Error occurs when reconfiguring bundled product quote in Admin'
description: Apply the ACSD-65983 patch to fix the Adobe Commerce issue where an error appear when attempting to configure a bundle product in the Sales > Quotes > Edit screen on the backend

Error message: "A technical problem with the server created an error. Try again to continue what you were doing. If the problem persists, try again later.".
feature: B2B, Quotes
role: Admin, Developer
---

# ACSD-65983: Error occurs when reconfiguring bundled product quote in Admin

The ACSD-65983 patch fixes the issue where reconfiguring a bundled product quote in the Admin backend throws an error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.69 is installed. The patch ID is ACSD-65983. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.8

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.8 - 2.4.8-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where reconfiguring a bundled product quote in the Admin backend throws an error.

<u>Steps to reproduce</u>:

Go to admin panel and enable the [!DNL B2B] Feature:  Stores → Configuration → General -> [!DNL B2B] Feature
Create a bundle product with fixed amount ex: $10 and add 3 or more simple products with 0 amount, 2 in option 1 and other in option 2
Create a company account from the frontend
Go to Catalog -> Shared Catalogs, assign the created company and products to the new/custom shared catalog
Login as the company user on the frontend and add one simple product to the cart from the bundle
Open the cart page and submit as a "Request a Quote"
Go to the backend and edit the created quote
In the quote item section, click the Configure button
Select another simple product from the option 2
Now click on OK button and see the error message.

<u>Expected results</u>:

Error message should not be display and we are able to config the requested quote items from the admin

<u>Actual results</u>:

A technical problem with the server created an error. Try again to continue what you were doing. If the problem persists, try again later.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.