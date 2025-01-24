---
title: How to access [!DNL Site-Wide Analysis Tool]
description: Learn how to access the [!DNL Site-Wide Analysis Tool]
exl-id: b691fb2c-8d66-4cf9-8612-bbcb4df5b95f
---
# How to Access the [!DNL Site-Wide Analysis Tool]

You can access the [!DNL Site-Wide Analysis Tool] dashboard from your store's [!UICONTROL Admin Panel].  

The [!DNL Site-Wide Analysis Tool] service is available in [production mode](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/tools/developer-tools#operation-modes) for [!UICONTROL Admin] users with permission to access user [role resources](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/user-accounts/permissions-user-roles).

>[!NOTE]
>
>Effective April 23, 2024, the [!DNL Site-Wide Analysis Tool] has been decommissioned and is no longer available for Adobe Commerce on-premises customers.


![Site-Wide Analysis Dashboard](../../assets/tools/site-wide-analysis-tool-dashboard.png)
*[!DNL Site-Wide Analysis Tool] Dashboard*

>[!NOTE]
>
>Your account should be entitled to **[!DNL Support Permissions]** in order to access the [!DNL Site-Wide Analysis Tool Dashboard].
>See more details in [Share a [!DNL Commerce] account](https://experienceleague.adobe.com/docs/commerce-admin/start/commerce-account/commerce-account-share.html) in our user guide.

## Logging in to [!DNL Site-Wide Analysis Tool Dashboard] from your store's [!UICONTROL Admin Panel]

### Step 1: Verify permissions

Verify that the [!UICONTROL Admin] user account has permission to access the [!DNL Site-Wide Analysis Tool] through their [assigned user role](https://experienceleague.adobe.com/en/docs/commerce-admin/systems/user-accounts/permissions-user-roles).

>[!IMPORTANT]
>
>The [!DNL Site-Wide Analysis Tool] role resource (permission) is **not** auto-assigned. It MUST be activated for the user role and the role individually assigned to each user account in the [!UICONTROL Admin].

For the custom role needing [!DNL Site-Wide Analysis Tool] access, do the following:

1. Select the **[!UICONTROL Reports]** > *[!UICONTROL System Insights]* > **[!UICONTROL Site-Wide Analysis Tool]** role resource.

   ![Site-Wide Analysis Dashboard](../../assets/tools/swat-role-access.png)
   *[!DNL Site-Wide Analysis Tool] permission selected for the role*

1. Click **[!UICONTROL Save Role]**.

1. Notify any users who are assigned that role to sign out of the [!DNL Admin], and sign in again.

>[!NOTE]
>
>If you have verified that the user account has permission to access the [!DNL Site-Wide Analysis Tool] and the user receives a 403 error when trying to access the tool from the [!UICONTROL Admin], your instance of Adobe Commerce on cloud infrastructure could have HTTP access control enabled. The [!DNL Site-Wide Analysis Tool] Dashboard is NOT supported if you have HTTP Auth enabled. For more information about resolving this issue, see our [Support article](https://support.magento.com/hc/en-us/articles/360057400172-403-errors-when-accessing-Site-Wide-Analysis-Tool-on-Magento?_ga=2.168901729.117144580.1649172612-1623400270.1640858671).

### Step 2: Access [!DNL Site-Wide Analysis Tool]

1. On the *[!UICONTROL Admin]* sidebar, go to **[!UICONTROL Reports]** > *[!UICONTROL System Insights]* > **[!UICONTROL Site-Wide Analysis Tool]**.

   ![Site-Wide Analysis Dashboard](../../assets/tools/ac-admin-panel-marked.jpg)
   *[!DNL Site-Wide Analysis Tool] location in the [!UICONTROL Admin Panel] in Adobe Commerce*

1. Read the *Terms of Use* for the [!DNL Site-Wide Analysis Tool] and click **[!UICONTROL Accept]** to continue.

   Each user is required to accept the Terms of Use for the session. This step is repeated for each logged-in session.


1. At the top of the dashboard, click the tab that you want to see.

   ![Site-Wide Analysis Dashboard](../../assets/tools/swat-information-tab.png)
   *[!DNL Site-Wide Analysis Tool] information*

## Generate reports from the [!DNL Site-Wide Analysis Tool Dashboard]

1. In the upper-right corner of the dashboard, click **[!UICONTROL Generate Report]**.

1. Select the checkbox for each **[!UICONTROL Type]** and **[!UICONTROL Priority]** setting that you want to include in the report.

1. Click **[!UICONTROL Generate Report]**.

   ![Site-Wide Analysis Dashboard](../../assets/tools/swat-report-settings.png)
   *Report Settings*

| TAB | DESCRIPTION |
| --- | --- |
| Dashboard | Shows the health of your system with current notifications and recommendations by priority. |
| Information | Provides customer contact information and a summary of current tickets, with detailed information about each installed Adobe Commerce product. |
| Recommendations | Lists recommendations based on best practices to address issues detected on your site. |
| Exceptions | Lists errors thrown by the application caused by abnormal conditions without an error handler. |
| Extensions | Lists all third-party extensions and third-party libraries. |

>[!NOTE]
>
>After applying a recommendation, it may take a few days for it to be updated in the [!DNL Site-Wide Analysis Tool Dashboard] or generated report.
