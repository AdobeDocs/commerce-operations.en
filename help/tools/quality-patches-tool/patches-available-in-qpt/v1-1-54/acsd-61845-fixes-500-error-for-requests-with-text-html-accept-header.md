---
title: "ACSD-61845: Fixes 500 error for requests with text/html accept header"
description: Apply the ACSD-61845 patch to fix the Adobe Commerce issue where sending an HTTP request with only a *text/html* accept header causes a 500 error, with B2B modules installed. 
feature: B2B
role: Admin, Developer
---
# ACSD-61845: Error occurs for requests with *text/html* accept header

The ACSD-61845 patch fixes the issue where an HTTP request with only a *text/html* accept header causes a 500 error due to media type mismatches in response handling. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.54 is installed. The patch ID is ACSD-61845. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected Products and Versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.7-p1 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

When sending an HTTP request with only *text/html* in the accept header, a 500 error occurs due to a mismatch in the media type configuration.

<u>Prerequisites</u>:

B2B modules are installed and enabled.

<u>Steps to reproduce</u>:

1. Ensure **B2B modules** are installed and enabled.
1. Send a request with only *text/html* in the accept header, as follows:
`curl -I --header "Accept: text/html, text/plain" http://<hostname>/pub/`

<u>Expected results</u>:

The page should be returned with a **200 status code**.

<u>Actual results</u>:

A 500 error is returned, with the following error message in exception.log:

```Magento\Framework\Webapi\Exception: Server cannot match any of the given Accept HTTP header media type(s) from the request: "text/html" with media types from the config of response renderer. in vendor/magento/framework/Webapi/Rest/Response/RendererFactory.php:84```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

[[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/announcements/commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches) in the Tools guide.