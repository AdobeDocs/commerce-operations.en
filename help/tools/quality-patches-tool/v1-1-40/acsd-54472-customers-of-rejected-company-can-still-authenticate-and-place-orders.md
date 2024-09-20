---
title: 'ACSD-54472: Customers of a rejected company can still authenticate'
description: Apply the ACSD-54472 patch to fix the Adobe Commerce issue where the customers of a rejected company can still authenticate, and customers of a blocked and rejected company can still place orders.
feature: B2B
role: Admin, Developer
exl-id: 76fc4553-02b1-4563-91a9-0cda99fa4c7d
---
# ACSD-54472: Customers of a rejected company can still authenticate

The ACSD-54472 patch fixes the issue where the customers of a rejected company can still authenticate, and customers of a blocked and rejected company can still place orders. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.40 is installed. The patch ID is ACSD-54472. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The customers of a rejected company can still authenticate, and customers of a blocked and rejected company can still place orders.

<u>Steps to reproduce</u>:

1. Create a company.
1. Add products to the cart via [!DNL GraphQL].
1. Change the company status to *Blocked*.
1. Send a [!DNL GraphQL] request to place the order and to create a negotiable quote.
1. Change the company status to *Rejected*.
1. Send a [!DNL GraphQL] request to obtain the company's user authorization token.
1. Set customer status to *Inactive*.
1. Send a [!DNL GraphQL] request to obtain the company's user authorization token.

<u>Expected results</u>:

* Order and negotiable quote is not placed by the user of the *Blocked* company.
* Authorization token is not obtained for the user of the *Rejected* company.
* Authorization token is not obtained for the *Inactive* customer.

<u>Actual results</u>:

* Order and negotiable quote is placed by the user of the *Blocked* company.
* Authorization token is obtained for the user of the *Rejected* company.
* Authorization token is obtained for the *Inactive* customer.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
