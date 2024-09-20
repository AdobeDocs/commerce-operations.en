---
title: 'ACSD-49013: email confirmation not translated to website locale'
description: Apply the ACSD-49013 patch to fix the Adobe Commerce issue where email confirmation is not translated to the website locale when creating customers using bulk API.
exl-id: 68203bd4-021a-4736-a793-4b6663a9c66b
feature: Admin Workspace, Communications
role: Admin
---
# ACSD-49013: email confirmation not translated to website locale

The ACSD-49013 patch fixes the issue where email confirmation is not translated to the website locale when creating customers using bulk API. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.27 is installed. The patch ID is ACSD-49013. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.3 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Email confirmation is not translated to the website locale when creating customers using bulk API.

<u>Steps to reproduce</u>:

1. Install a different locale like `de_DE`.
1. Configure *RabbitMQ*.
1. Execute `bin/magento setup:upgrade` to install the queues in RabbitMQ and set up the language pack.
1. Create an additional website in [!UICONTROL Admin] > **[!UICONTROL Stores]** > **[!UICONTROL All Stores]**.
1. Set the locale of this new website to `de_DE` in [!UICONTROL Admin] > **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL Locale Options]**.
1. Execute an API call to create a customer account using bulk API. Use the corresponding `website_id`. 

    `Endpoint: /rest/async/bulk/V1/customers`

    ```
    [{
        "customer": {
        "email": "test@example.com",
        "firstname": "test",
        "lastname": "test",
        "website_id": 2
        },
        "password": "Passw0rd!"
    }]
    ```

1. Execute `bin/magento queue:consumers:start async.operations.all --single-thread --max-messages=10`.
1. You can see that the customer account is created correctly on the specified website.
1. Check the email received for customer registration.

<u>Expected results</u>:

Since the customer is created on a specified website, the registration email is sent using the locale of that website.

<u>Actual results</u>:

The customer is created correctly on the specified website, but the registration email is sent using the default locale when bulk API is used.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
