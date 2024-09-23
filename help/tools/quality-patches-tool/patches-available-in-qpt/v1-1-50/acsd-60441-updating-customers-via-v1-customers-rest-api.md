---
title: 'ACSD-60441: Updating customers via V1/customers [!DNL REST] API endpoint throws an error'
description: Apply the ACSD-60441 patch to fix the Adobe Commerce issue where updating customers via V1/customers [!DNL REST] API when using integration access token generated from backend throws an error.
feature: REST, Customers
role: Admin, Developer
exl-id: fdc18060-5c6d-4f95-84d3-9ad120fe3a7d
---
# ACSD-60441: Updating customers via `V1/customers` [!DNL REST] API endpoint throws an error

The ACSD-60441 patch fixes the issue where updating customers via `V1/customers` [!DNL REST] API when using the integration access token generated from the backend causes an error. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.50 is installed. The patch ID is ACSD-60441. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p8

**Compatible with Adobe Commerce versions**

* Adobe Commerce (all deployment methods) 2.4.4-p9, 2.4.5-p8, 2.4.6-p6, 2.4.7-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Updating customers via `V1/customers` [!DNL REST] API endpoint when using the integration access token generated from the backend throws an error.

<u>Steps to reproduce</u>:

1. Create an integration from the Admin.
1. Send a [!DNL POST] request to `rest/default/V1/customers/<customer_id>` using the integration token.

    ```json
    {
      "customer": {
        "email": "roni_cost@example.com",
        "firstname": "Veronica",
        "lastname": "Costello"
      }
    }
    ```

<u>Expected results</u>:

The customer data is updated.

<u>Actual results</u>:

You get the following error:

    ```json
    {
        "message": "A customer with the same email address already exists in an associated website.",
        "trace": ...
    }
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
