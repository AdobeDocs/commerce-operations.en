---
title: 'ACSD-53979: JS error occurs on the homepage'
description: Apply the ACSD-53979 patch to fix the Adobe Commerce issue where a JavaScript error occurs on the homepage if the welcome message contains a single quote.
feature: Page Content
role: Admin, Developer
exl-id: 4e5afc5c-322f-4681-b2aa-01d93be74d4a
---
# ACSD-53979: JavaScript error occurs on the homepage

The ACSD-53979 patch fixes the issue where a JavaScript error occurs on the homepage if the welcome message contains a single quote. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.37 is installed. The patch ID is ACSD-53979. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p2

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

A JavaScript error occurs on the homepage if the welcome message contains a single quote.

<u>Steps to reproduce</u>:

1. Set a default welcome message into the `en_US.csv` file in [!DNL French] language or put a quote character like below:
`app/code/Magento/Theme/i18n/en_US.csv`

    ```CSV
        "Default welcome msg!","Message d'accueil par défaut"
    ```

1. Go to the frontend.

<u>Expected results</u>:

Frontend loads without any JavaScript errors.

<u>Actual results</u>:

A JavaScript error occurs:

```JS
    Uncaught SyntaxError: Unable to process binding "ifnot: function(){return customer().fullname }"
    Message: Unable to parse bindings.
    Bindings value: text: 'Message d'accueil par défaut'
    Message: Unexpected identifier 'accueil'
```
  
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
