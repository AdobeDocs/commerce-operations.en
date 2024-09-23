---
title: 'ACSD-47027: slow query B2B [!UICONTROL CompanyRole] [!DNL GraphQL] update'
description: Apply the ACSD-47027 patch to fix the Adobe Commerce issue where there is a slow query B2B [!UICONTROL CompanyRole] [!DNL GraphQL] update.
exl-id: 478ae16b-7722-4469-8f8a-a38820e61ae4
feature: B2B, Companies, GraphQL, Roles/Permissions
role: Admin
---
# ACSD-47027: slow query B2B [!UICONTROL CompanyRole] [!DNL GraphQL] update

The ACSD-47027 patch solves the issue where the slow query B2B [!UICONTROL CompanyRole] [!DNL GraphQL] update does not work as expected. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.23 is installed. The patch ID is ACSD-47027. Please note that the issue is scheduled to be fixed in Adobe Commerce 2.4.6. 

## Affected products and versions

**The patch is created for Adobe Commerce version:**
* Adobe Commerce (all deployment methods) 2.4.2-p1

**Compatible with Adobe Commerce versions:**
* Adobe Commerce (all deployment methods) 2.4.2 - 2.4.5-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

The slow query B2B [!UICONTROL CompanyRole] [!DNL GraphQL] update does not work as expected.

<u>Prerequisites</u>:

Install the B2B module.

<u>Steps to reproduce</u>:

1. In the Adobe Commerce Admin, go to **[!UICONTROL Stores]** > **[!UICONTROL Settings]** > **[!UICONTROL Configurations]** > **[!UICONTROL B2B Features]** and set **[!UICONTROL Enable Company]** to _Yes_.
1. Go to the frontend and create a company.
1. After you log in as a company user, go to **[!UICONTROL My Account]** > **[!UICONTROL Roles and Permissions]** and add a new role.
1. Enable [!UICONTROL dev] query log using `bin/magento dev:que:enab`.
1. Now send the below [!DNL GraphQL] request (id is the [!UICONTROL base64] encoded role id):

   <pre><code>
   mutation {
   updateCompanyRole(
      input: {
         id: "Mg=="
         permissions: [
         "Magento_Company::view"
         "Magento_Company::view_account"
         "Magento_Company::user_management"
         "Magento_Company::roles_view"
        ]
      }
    ) {
      role {
         id

         name

         permissions {
         id

         text

         children {
            id

            text

            children {
               id

               text
             }
           }
         }
       }
     }
   }
   </code></pre>

1. Check the query log.
1. You can see that the above query is executed. This query is executed in `app/code/Magento/CompanyGraphQl/Model/Company/Role/ValidateRole.php::validateResources`.

<u>Expected results</u>:

The `app/code/Magento/CompanyGraphQl/Model/Company/Role/ValidateRole.php::validateResources` needs to be optimized to avoid loading all the data available in the **[!UICONTROL company_permissions]** DB table.

<u>Actual results</u>:

Adobe Commerce executes a query without any filter. When there are a large number of records, it takes a lot of time for Adobe Commerce to prepare the data collection.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](https://experienceleague.adobe.com/docs/commerce-operations/tools/quality-patches-tool/usage.html) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://devdocs.magento.com/cloud/project/project-patch.html) in our developer documentation. 

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool] released: a new tool to self-serve quality patches](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) in our support knowledge base.
* [Check if patch is available for your Adobe Commerce issue using [!DNL Quality Patches Tool]](/help/support-tools/patches-available-in-qpt-tool/check-patch-for-magento-issue-with-magento-quality-patches.md) in our support knowledge base.

For info about other patches available in QPT, refer to [[!DNL Quality Patches Tool]: Search for patches](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html) in the [!DNL Quality Patches Tool] guide.
