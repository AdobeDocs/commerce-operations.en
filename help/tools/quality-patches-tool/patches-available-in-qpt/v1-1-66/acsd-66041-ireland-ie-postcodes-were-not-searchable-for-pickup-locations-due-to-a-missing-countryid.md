---
title: 'ACSD-66041: Ireland (IE) postcodes were not searchable for pickup locations due to a missing CountryID'
description: Apply the ACSD-66041 patch to fix the Adobe Commerce issue where of missing CountryID issue for Ireland (IE), which was causing errors.
feature: Catalog
role: Admin, Developer
---

# ACSD-66041: Ireland (IE) postcodes were not searchable for pickup locations due to a missing CountryID

The ACSD-66041 patch fixes the issue where Ireland (IE) postcodes were not searchable for pickup locations due to a missing CountryID. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.66 is installed. The patch ID is ACSD-66041. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p5

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.8

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.

## Issue

Issue where Ireland (IE) postcodes were not searchable for pickup locations due to a missing CountryID.

<u>Steps to reproduce</u>:

```
query getStoresTestError($term: String!, $radius: Int!) {
	pickupLocations(
		sort: { distance: ASC }
		area: { radius: $radius, search_term: $term }
	) {
		items {
			pickup_location_code
			name
			description
			latitude
			longitude
			country_id
			region
			city
			street
			postcode
			phone
		}
	}
}
```

Variables:

```
{
	"radius": 81,
	"term": "dublin:IE"
}
```

<u>Expected results</u>:

No Error. Ireland postcodes are available to search for pickup locations.

<u>Actual results</u>:

Internal Server Error
var/log/exception.log contains:

```
report.ERROR: Provided countryId does not exist.  {"exception":"[object] (GraphQL\\Error\\Error(code: 0): Provided countryId does not exist.
```

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.