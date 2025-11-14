---
title: 'ACSD-63244: Resolve admin panel JavaScript issues, including [!DNL Google Maps] rendering and console errors'
description: The ACSD-63244 patch fixes the multiple JavaScript issues in the admin panel, including problems with [!DNL Google Maps] rendering and recurring `Uncaught TypeError this._each is not a function` errors in the browser console.
feature: Admin Workspace
role: Admin, Developer
exl-id: 1985c845-219e-4af4-8f70-62dd57722494
type: Troubleshooting
---
# ACSD-63244: Resolve admin panel JavaScript issues, including [!DNL Google Maps] rendering and console errors

The ACSD-63244 patch fixes the multiple JavaScript issues in the admin panel, including problems with [!DNL Google Maps] rendering and recurring `Uncaught TypeError: this._each is not a function` errors in the browser console. This patch is available with the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.56. The patch ID is ACSD-63244. Please note that the issue was is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.4, 2.4.4-p9, 2.4.6-p7, 2.4.7

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

* The `Uncaught TypeError: this._each is not a function` error appears in the browser console, disrupting the Admin UI functionality.
* JavaScript error prevents [!DNL Google Maps] to render correctly.

<u>Steps to reproduce</u>:

1. Load the Adobe Commerce Admin UI.
1. Open the browser console and execute the following script:

    ```
    Object.values([] || {}).forEach((function(e) {  
    e("dd")  
    }));  
    ```

<u>Expected results</u>:

The JavaScript functions available in the default JS library execute correctly without errors.

<u>Actual results</u>:

JavaScript errors appear in the browser console:

```
Uncaught TypeError: this._each is not a function
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
