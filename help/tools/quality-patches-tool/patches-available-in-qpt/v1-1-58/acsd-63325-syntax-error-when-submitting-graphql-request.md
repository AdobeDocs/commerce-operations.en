---
title: 'ACSD-63325: Syntax Error: Unexpected &lt;EOF&gt; error when submitting empty [!DNL GraphQL] request'
description: Apply the ACSD-63325 patch to fix the Adobe Commerce issue where a syntax error occurs when submitting an empty [!DNL GraphQL] request.
feature: GraphQL
Role: Admin, Developer
exl-id: a83a8c5f-a43a-4733-a601-7b92656e5325
---
# ACSD-63325: "Syntax Error: Unexpected < EOF >" error when submitting empty [!DNL GraphQL] request

The ACSD-63325 patch fixes the issue where a "Syntax Error: Unexpected < EOF >" error and a non-200 response code returned when submitting an empty [!DNL GraphQL] request. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.58 is installed. The patch ID is ACSD-63325. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p3

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

On submitting an empty [!DNL GraphQL] request, there is an HTTP internal server error instead of a 200 response code. 

<u>Steps to reproduce</u>:

1. Send an empty GraphQL request

    ```graphql
    curl -i -X OPTIONS http://commerce.local/graphql
    ```

<u>Expected results</u>:

The response code is 200 for the request.

```
curl -i -X OPTIONS http://commerce.local/graphql
```

<u>Actual results</u>:

A 500 internal server error occurs as shown:

```
HTTP/1.1 500 Internal Server Error
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on Cloud Infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/en/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
