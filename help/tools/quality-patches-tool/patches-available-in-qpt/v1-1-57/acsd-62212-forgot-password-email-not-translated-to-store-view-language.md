---
title: 'ACSD-62212: [!UICONTROL Forgot Password] email not translated to store view language'
description: Apply the ACSD-62212 patch to fix the Adobe Commerce issue where the content of the *[!UICONTROL Forgot Password]* email is not translated to the store view's language.
feature: GraphQL
role: Admin, Developer
exl-id: 29e6f2fa-574f-4ab1-82f5-88e1eb1de83e
---
# ACSD-62212: *[!UICONTROL Forgot Password]* email not translated to store view language

The ACSD-62212 patch fixes the issue where the content of the *[!UICONTROL Forgot Password]* email is not translated to the store view language. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) 1.1.57 is installed. The patch ID is ACSD-62212. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

While resetting password via GraphQL in a store view other than the one registered, the reset password link does not match the store view from which it was initiated.

<u>Steps to reproduce</u>:

1. Create a secondary store view under the *[!UICONTROL Main Website Store]*.
1. Switch *[!UICONTROL Locale]* to *[!UICONTROL French (France)]* in the secondary store view scope.
1. Install the French language pack for translations.
1. Create a customer account.
1. Use the following GraphQL mutation with *store* header with the secondary store view code.

    ```
    mutation {
        requestPasswordResetEmail(
            email: "test@gmail.com"
        )
    }
    ```

1. Check the email.

<u>Expected results</u>:

* The language of the email's subject, link and its content is consistent with the store view locale.
* Password reset request is sent from the store where the customer's account is actually registered, regardless of the store header in the request.

<u>Actual results</u>:

The following could be observed in the email:

* The reset password link has the "default" store code.
* The subject is in English.
* The content is in French.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
