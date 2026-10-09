---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.61'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.61.
feature: Tools and External Services
role: Admin, Developer
exl-id: 065235fb-12e3-448b-bc37-51efdf95393a
type: Troubleshooting
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 125c1f49-aefd-5f34-a252-288937f95f6b
    internal-label: Marketing Tools
subfeature_v2:
  - id: 618ab558-d6ad-5352-99d6-d5702c6fdf80
    internal-label: Tools and External Services
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.61

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.61.

QPT v1.1.61 includes the following patches:

1. **ACP2E-3689**: Fixes multiple issues with category tree display on deeper levels and reflecting anchor/non-anchor relationships.
1. **ACP2E-3705**: Fixes an issue where the `indexer_update_all_views` cron execution fails when `MAGE_INDEXER_THREADS_COUNT` is set.
1. **ACSD-63883**: Fixes the issue where the [!UICONTROL Requisition List] returns an incorrect `items_count` in the [!DNL GraphQL] response.
1. **ACSD-63974**: Fixes the issue where the [!UICONTROL Requisition List] page takes too much time to load when there are too many items, by adding a pagination feature to the [!UICONTROL Requisition List] grid on the storefront, that displays only portions of records that are limited to the number of records per page, instead of all the records at once.
1. **ACSD-64178**: Fixes the issue where the [!UICONTROL Attribute Set] edit page loads slowly if there are thousands of product attributes.
1. **ACSD-64209**: Fixes the issue where the cron scheduler retrieves all negotiable quotes without excluding those with the status **[!UICONTROL ordered]**, causing an email or emails to be triggered.
1. **ACSD-64431**: The `placeOrder` mutation that contains the coupon code information in the request no longer throws an internal error, but instead shows that the order was placed successfully.
1. **ACSD-64467**: Fixes the issue where the WYSIWYG editor appears empty after saving a category description on the store view level.
1. **ACSD-64546**: Fixes the issue where a generic error message occurs in the UI and an *Array to string conversion* exception is stored in the logs during UPS shipping label creation, ensuring that the actual error is displayed in the UI and the correct error message is stored in the logs.
1. **ACSD-64684**: Fixes the issue where a validation error occurs when editing and saving a gift card with a value greater than *999* due to the comma (thousand separator) in the number *one thousand (1,000)*.

Use the menu on the left to navigate to a specific patch page.
