---
title: 'ACSD-49970: Incorrect handling of GraphQL errors'
description: Apply the ACSD-49970 patch to fix the Adobe Commerce issue where there is incorrect handling of GraphQL errors when [!UICONTROL New Relic Reporting] is turned on.
feature: GraphQL, Observability
role: Admin
exl-id: f06f6cbf-ea85-406a-850d-f63e1001ff82
---
# ACSD-49970: Incorrect handling of GraphQL errors

The ACSD-49970 patch fixes the issue where there is incorrect handling of GraphQL errors when *[!UICONTROL New Relic Reporting]* is turned on. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) 1.1.29 is installed. The patch ID is ACSD-49970. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.5-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.5 - 2.4.6

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

`GraphQLOperationNames` key is not handled correctly whether the `logDataHelper` contains this key or not.

<u>Steps to reproduce</u>:

1. Run `bin/magento deploy:mode:set developer`.
1. Log in to the Admin.
1. Enable **[!UICONTROL New Relic Integration]** from **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL New Relic Reporting]**
(Note: Even if an error is displayed saying that the [!DNL New Relic] extension is not available, the configuration is saved).
1. Run this *GraphQL* mutation to `http://yourMagentoDomain/graphql` from the *[!DNL Altair]* client or any other client or via cURL.

    ```GraphQL
    mutation {
        createEmptyCart
    }
    ```

    (Note: Set the **[!UICONTROL Header]** to [!UICONTROL Content-Currency:CA] before running it).

    ```cURL
    curl --location 'http://yourMagentoDomain/graphql' \--header 'Content-Currency: CA' \--header 'Content-Type: application/json' \--header 'Cookie: PHPSESSID=b5147f63fe5014ea523f262946; private_content_version=8d53dfda210a6e9bc46f4e4a01ffd6c5' \--data '{"query":"mutation {\r\n  createEmptyCart\r\n}","variables":{}}'
    ```

<u>Expected results</u>:

There is no *500 exception* in logs, `GraphQLOperationNames` key is being handled correctly.

<u>Actual results</u>:

There is a *500 exception* in logs, `GraphQLOperationNames` key is not being handled correctly.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches) in the support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/tools/quality-patches-tool/patches-available-in-qpt/check-patch-for-magento-issue-with-magento-quality-patches.md) in the [!UICONTROL Quality Patches Tool] guide.


For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
