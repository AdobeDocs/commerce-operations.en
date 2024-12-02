---
title: 'ACSD-61785: Updating reward_warning_notification attribute not possible via GraphQL mutation and REST API calls'
description: Apply the ACSD-61785 patch to fix the Adobe Commerce issue where updating the `reward_warning_notification` attribute is not possible via GraphQL mutation and REST API calls.
feature: REST, GraphQL, Rewards
role: Admin, Developer
exl-id: 41f40452-4240-4b4a-b1bc-0da23139f19f
---
# ACSD-61785: Updating reward_warning_notification attribute not possible via GraphQL mutation and REST API calls 

The ACSD-61785 patch fixes the issue where updating the `reward_warning_notification` attribute isn't possible via GraphQL mutation and REST API calls. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.55 is installed. The patch ID is ACSD-61785. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.8. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**

Adobe Commerce (all deployment methods) 2.4.7-p2

**Compatible with Adobe Commerce versions:**

Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Updating the `reward_warning_notification` attribute isn't possible via GraphQL mutation and REST API calls.

<u>Steps to reproduce</u>:

1. Check GraphQL and REST API schema/documentation for *Subscribe for Balance Updates* and *Subscribe for Points Expiration Notifications*.

<u>Expected results</u>:

It is possible to subscribe for *Rewards Balance Updates* and for *Points Expiration Notifications* via GraphQL and REST API.

<u>Actual results</u>:

GraphQL and REST API lack this functionality.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
