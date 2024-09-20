---
title: 'ACSD-51739: Error on requesting `structure_id` in `CompanyTeam` GraphQL request'
description: Apply the ACSD-51739 patch to fix the Adobe Commerce issue where an error is returned when the `structure_id` is requested in a `CompanyTeam` GraphQL request.
exl-id: 31c085e0-c8be-4709-9620-80ff360dca9a
---
# ACSD-51739: Error on requesting `structure_id` in `CompanyTeam` GraphQL request

The ACSD-51739 patch fixes the issue where an error is returned when the `structure_id` is requested in a `CompanyTeam` GraphQL request. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/announcements/adobe-commerce-announcements/magento-quality-patches-released-new-tool-to-self-serve-quality-patches.md) 1.1.34 is installed. The patch ID is ACSD-51739. Please note that the issue was fixed in Adobe Commerce 2.4.7.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.6

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.6 - 2.4.6-p1

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

An error is returned when the `structure_id` is requested in a `CompanyTeam` GraphQL request.

<u>Steps to reproduce</u>

1. Go to **[!UICONTROL Stores]** > **[!UICONTROL Configuration]** > **[!UICONTROL General]** > **[!UICONTROL B2B Features]**, and set *[!UICONTROL Enable Company]* to *Yes*.
1. Create a company along with a company admin user.
1. Create a new customer (*customer1*), and assign the company (created above) to this customer.
1. On the frontend, log in as the company admin user.
1. Create a company team, and assign *customer1* to the team using drag and drop.
1. Run the following company GraphQl query, which includes `CompanyTeam` with `structure_id`:

    ```GraphQL
    query{
        company {
            id
            name
            structure {
                items {
                id
                parent_id
                entity {
                    __typename
                    ... on Customer {
                        firstname
                        lastname
                        email
                        structure_id
                    }
                    ... on CompanyTeam {
                        id
                        name
                        structure_id
                    }
                }
        }
    }
    }
    }
    ```

1. Check the GraphQL response.

<u>Expected results</u>:

No errors are returned, and all requested data are present in the GraphQL response.

<u>Actual results</u>:

* Response contains an *Internal server error*.
* `var/log/exception.log` contains:

    ```
    report.ERROR: Cannot return null for non-nullable field "CompanyTeam.structure_id"
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
