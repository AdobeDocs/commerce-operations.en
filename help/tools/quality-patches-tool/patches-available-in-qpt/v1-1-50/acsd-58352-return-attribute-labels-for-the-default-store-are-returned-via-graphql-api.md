---
title: 'ACSD-58352: Return attribute labels for the default store are returned via [!DNL GraphQL] API'
description: Apply the ACSD-58352 patch to fix the Adobe Commerce issue where return attribute labels for the default store are returned via [!DNL GraphQL] API when a non-default store view is specified in the request header.
feature: GraphQL, Returns
role: Admin, Developer
exl-id: e513039e-42cd-4dac-963b-3068ba8bf7ee
type: Troubleshooting
---
# ACSD-58352: Return attribute labels for the default store are returned via [!DNL GraphQL] API

The ACSD-58352 patch fixes the issue where return attribute labels for the default store are returned via [!DNL GraphQL] API when a non-default store view is specified in the request header. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.50 is installed. The patch ID is ACSD-58352. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.4

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.6-p7

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Return attribute labels for the default store are returned via [!DNL GraphQL] API.

<u>Steps to reproduce</u>:

1. Enable the **[!UICONTROL Return Merchandising Authorization]**.
1. Create an *[!UICONTROL Additional Store]* and a *[!UICONTROL Store View]* under the default website.
1. Edit the **[!UICONTROL Reason for Return]** return attribute and add labels for all store views.
1. Create an *[!UICONTROL Order]*.
1. Create a *[!UICONTROL Return]* for that order. Make sure the *[!UICONTROL Return]* is in *[!UICONTROL Pending]* status. 
1. Send a Customer [!DNL GraphQL] query with the specified non-default [!UICONTROL Store View] in the header:    

    ```
    query {
        customer {
            returns {
                items {
                    items {
                        custom_attributes {
                            label
                            value
                        }
                    }
                }
            }
        }
    }
    ```

1. Observe the response.

<u>Expected results</u>

Return labels in the [!DNL GraphQL] response are for the [!UICONTROL Store View] set in the request header.

<u>Actual results</u>:

Return labels in [!DNL GraphQL] response are for the default [!UICONTROL Store View].

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
