---
title: 'ACSD-54983: Company user UID with GraphQL not available with inactive user'
description: Apply the ACSD-54983 patch to fix the Adobe Commerce issue where it's not possible to get the company user UID with GraphQL request when the user status is set to inactive.
feature: GraphQL
role: Admin, Developer
exl-id: 57e7b9ca-3421-4b50-86b4-abdf1b3d79d1
---
# ACSD-54983: Company user UID with GraphQL not available with inactive user

The ACSD-54983 patch fixes the issue where it's not possible to get the company user UID with GraphQL request when the user status is set to inactive. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.43 is installed. The patch ID is ACSD-54983. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods)  2.4.6-p2

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.6-p3

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Unable to get the company user UID with GraphQL request when the user status is set to inactive.

<u>Steps to reproduce</u>:

1. Create a company with an admin user. E.g., company@test.com.
1. Create a new customer.
1. Assign the new customer to a company.
1. Get a **[!UICONTROL company admin token]**.
1. Using the **[!UICONTROL company admin token]**, fetch the company structure. See [Return the company structure](https://developer.adobe.com/commerce/webapi/graphql/schema/b2b/company/queries/company/#return-the-company-structure) in our developer documentation.
1. The response contains only *ACTIVE* customers with their IDs.
1. Update the company user to *INACTIVE*.
1. Fetch the company structure again.

<u>Expected results</u>:

It is possible to get the company user UID when the status is set to inactive.

<u>Actual results</u>:

The inactive customers are not in the list. Unable to get the company user UID when the status is set to inactive.
 
## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
