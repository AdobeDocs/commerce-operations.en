---
title: 'Overview: [!DNL Quality Patches Tool] (QPT) v1.1.56'
description: This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.56.
feature: Tools and External Services
role: Admin, Developer
---
# Overview: [!DNL Quality Patches Tool] (QPT) v1.1.56

This sub-section provides a detailed description of the issues fixed by the patches available in [!DNL Quality Patches Tool] (QPT) v1.1.56.

QPT v1.1.56 includes the following patches:

1. **ACSD-63244**: Fixes the issues where a JavaScript error prevents [!DNL Google Maps] from rendering correctly and where there are many *Uncaught TypeError: this._each is not a function* errors in the console in the [!UICONTROL Admin] panel.
1. **ACSD-63242**: Fixes the issue with import slowness when adding catalog products with more than 10,000 entries.
1. **ACSD-63062**: Fixes the issue where incorrect cart discount calculations occur when multiple overlapping rules are applied.
1. **ACSD-62979**: Fixes the issue where using the wrong [!UICONTROL Store ID] in the GraphQL header causes a fatal memory error.
1. **ACSD-62971**: Fixes the issue where importing stock sources with non-numeric values in the *[!UICONTROL Quantity]* column results in the *quantity* being set to *0*.
1. **ACSD-62872**: Fixes the issue with unique attribute validation where schedule updates are validated incorrectly.
1. **ACSD-62755**: Fixes the issue where [!DNL TinyMCE] 7 requires font size and font to be specifically added within editor initialization settings.
1. **ACSD-62670**: Fixes the issue where the [!UICONTROL Products Ordered] report export to CSV and XML returns an error.
1. **ACSD-62577**: Fixes the issue with slow performance of storefront search queries by optimizing both query and table indexes.
1. **ACSD-62475**: Fixes the issue where the [!UICONTROL Gift Card] products are merged incorrectly in the cart.
1. **ACSD-62428**: Fixes the issue where `is_out_of_stock` is set to an incorrect value in the catalog search index when the [!DNL SKU] is not set as a searchable attribute.
1. **ACSD-62355**: Improves the loading time of the configurable product edit page when the configurable product is based on many attributes with many values.
1. **ACSD-61805**: Fixes the issue where products remain out of stock on the storefront after updating the backorder status via the [!DNL REST API].
1. **ACSD-60811**: Fixes the issue where updating order status with a custom value or comment is only possible if the current status is either *[!UICONTROL Processing]* or *[!UICONTROL Fraud]*.
1. **ACSD-62952**: Fixes the issue where the [!UICONTROL Gift Registry] date is displayed inaccurately on the storefront.
1. **ACSD-55339**: Fixes the issue where a product [!DNL SKU] starting with *0* (zero) removes the *0*, preventing the quote from being updated.

Use the menu on the left to navigate to a specific patch page.
