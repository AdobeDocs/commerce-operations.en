---
title: "[!DNL Dashboard]"
description: Learn about the [!DNL Dashboard] tab in the [!DNL Site-Wide Analysis Tool], elements, when to use, benefits, and best practices.
---
# [!UICONTROL Dashboard]

The [!UICONTROL Dashboard] page shows at-a-glance [!DNL widgets] that provide a "single pane of glass view" of the health and current status of your Adobe Commerce website. These [!DNL widgets] each contain an access link to each feature’s page, to each tool itself, or to reports (depending on the [!DNL widget]).
There is also a list of [!UICONTROL External Resources] links for Adobe Commerce, including the [Adobe Commerce Help Center Support Knowledge Base (Help Center)](https://support.magento.com/), [Adobe Commerce Developer Documentation (DevDocs)](https://devdocs.magento.com/), [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html#patch-grid), [Security Center](https://magento.com/security), and [Observation for Adobe Commerce (OAC)](https://support.magento.com/hc/en-us/articles/4402379845901-Use-Observation-for-Adobe-Commerce).

## Elements

* **[!UICONTROL Recommendations]**: Displays best practice recommendations for your site. Recommendations (issues found and recommendations to fix) are sorted by priority—P0 (Critical) to P4 (Notification).
Recommendations include Description, Recommendation, Site Impact, Root Cause, Scenarios/Preconditions, and Tools Used.

* **[!UICONTROL Upgrade Compatibility Tool]**: Checks an Adobe Commerce customized instance against a specific version by analyzing all modules and core code installed in it. It returns a list of critical issues, errors, and warnings that must be addressed before upgrading to the latest version of Adobe Commerce. It also identifies potential problems that must be fixed in your code before attempting to upgrade to a newer version of Adobe Commerce.
The [!UICONTROL Upgrade Compatibility Tool] allows you to identify when core code changes have been made to customized features.

* **[!UICONTROL Security Scan Tool]**: Monitors Adobe Commerce sites for security risks. It can proactively and efficiently detect malware on merchant stores and notify merchants if there are any security risks, malware, or threats, and can identify missing Adobe Commerce patches and updates.

* **[!UICONTROL Extensions]**: Displays the extensions currently installed on your Adobe Commerce instance. [Adobe Commerce Marketplace](https://marketplace.magento.com/extensions.html) information is provided, where available, for extensions listed there.

* **[!UICONTROL Alerts]**: Displays the latest [!DNL New Relic Managed Alerts] for the Adobe Commerce instance. Learn more about [Managed alerts for Adobe Commerce](https://support.magento.com/hc/en-us/articles/360045806832) and how to [Access New Relic services](https://support.magento.com/hc/en-us/articles/360039127712) in the Adobe Commerce Support Knowledge Base.

* **[!UICONTROL Non-recommended software in use]**: Displays the non-recommended software that your Adobe Commerce instance is currently using, based on your Adobe Commerce version. The non-recommended software is listed by [!UICONTROL Name], [!UICONTROL Installed Version], and [!UICONTROL Recommended Version].

* **[!UICONTROL Recommended Patches]**: The [!UICONTROL Recommended Patches] [!DNL widget] displays a short list of any recommended patches based on both patches that you may have already installed and your Adobe Commerce version. The full list of recommended patches is found on the **[!UICONTROL Patches]** feature tab, which is also within the [!DNL Site-Wide Analysis Tool]. The patches are provided by the [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html) in our developer documentation. All patches listed are compatible with your current Adobe Commerce instance. 
If there are no recommended patches to display for your Adobe Commerce instance, this [!DNL widget] will display, **[!UICONTROL No Recommended Patches]**. 

## When to use

The **[!UICONTROL Dashboard]** page is your at-a-glance command center in the [!DNL Site-Wide Analysis Tool] to not only easily view the “big picture” of your site’s health as a whole, but you can also see and access specific tools, recommendations, and reports for your Adobe Commerce website through each [!DNL widget].

## Benefits

* The [!DNL widgets] for [!UICONTROL Recommendations], [!UICONTROL Extensions], and [!UICONTROL Security Scan] all use easy-to-read color-coded interactive circular graphs with graph legends to the side and count totals in the center to denote how many [!UICONTROL Recommendations], [!UICONTROL Extensions], and [!UICONTROL Security Scan Tool] items each feature has. [!UICONTROL Recommendations] and [!UICONTROL Security Scan Tool] graphs are separated by severity. [!UICONTROL Extensions] are separated into four classifications: current version, old version, disabled, and unknown.

* [!DNL NewRelic Alerts] are listed with the most recent alert on top, including a short description and how long ago the alert occurred.

* The [!UICONTROL Recommendations] and [!UICONTROL Extensions] [!DNL widgets] have access to the full page of data for each feature by clicking **[!UICONTROL View All]**. 

* The [!UICONTROL Security Scan Tool] has a **[!UICONTROL View Report]** link right in the [!DNL widget] window that will take you to the [!UICONTROL Recommendations] page.

* The [!DNL Upgrade Compatibility Tool] has a **[!UICONTROL Run Upgrade Scan]** button right in the [!DNL widget] window.

## Best Practices for using the [!UICONTROL Dashboard]

* Click-through on each feature’s [!DNL widget] to access the detailed data it provides to gain both insight and understanding of your website’s health, recommendations, and best practices to improve it.

* Go to the [!UICONTROL Security Scan Tool] [!DNL widget] and click on the [!UICONTROL View Report] button to view a [!UICONTROL Recommendations] report for your site.

* Use the [!DNL External Resources] links to either learn more information, keep up-to-date on security patches, updates, and best practices, or take advantage of the insight of the [Adobe Commerce Help Center Support Knowledge Base (Help Center)](https://support.magento.com/), [Adobe Commerce Developer Documentation (DevDocs)](https://devdocs.magento.com/), [Quality Patches Tool](https://devdocs.magento.com/quality-patches/tool.html#patch-grid), [Security Center](https://magento.com/security), and [Observation for Adobe Commerce (OAC)](https://support.magento.com/hc/en-us/articles/4402379845901-Use-Observation-for-Adobe-Commerce).