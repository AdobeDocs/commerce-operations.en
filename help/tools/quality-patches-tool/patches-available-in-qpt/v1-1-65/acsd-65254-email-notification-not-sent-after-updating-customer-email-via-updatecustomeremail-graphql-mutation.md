---
title: 'ACSD-65254: Email notification not sent after updating customer email via updateCustomerEmail [!DNL GraphQL] mutation'
description: Apply the ACSD-65254 patch to fix the Adobe Commerce issue where email notifications were not sent to customers after successfully updating their email addresses on their accounts using the updateCustomerEmail [!DNL GraphQL] mutation.
feature: GraphQL, User Account
role: Admin, Developer
type: Troubleshooting
---

# ACSD-65254: Email notification not sent after updating customer email via `updateCustomerEmail` [!DNL GraphQL] mutation

The ACSD-65254 patch fixes the issue where email notifications weren't sent to customers after updating their email addresses on their accounts using the `updateCustomerEmail` [!DNL GraphQL] mutation. This patch is available when the [[!DNL Quality Patches Tool (QPT)]](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) 1.1.65 is installed. The patch ID is ACSD-65254. Please note that this issue is scheduled to be fixed in Adobe Commerce 2.4.9.

## Affected products and versions

**The patch is created for Adobe Commerce version:**

* Adobe Commerce (all deployment methods) 2.4.7-p1

**Compatible with Adobe Commerce versions:**

* Adobe Commerce (all deployment methods) 2.4.4 - 2.4.7-p5

>[!NOTE]
>
>The patch might become applicable to other versions with new [!DNL Quality Patches Tool] releases. To check if the patch is compatible with your Adobe Commerce version, update the `magento/quality-patches` package to the latest version and check the compatibility on the [[!DNL Quality Patches Tool]: Search for patches page](https://experienceleague.adobe.com/tools/commerce-quality-patches/index.html). Use the patch ID as a search keyword to locate the patch.
## Issue

Email notifications were not sent to customers after updating their email addresses using the `updateCustomerEmail` [!DNL GraphQL] mutation.

<u>Steps to reproduce</u>:

1. Create user using below mutation:

	```
	mutation {
		createCustomer(
			input: {
				firstname: "Test"
				lastname: "User"
				email: "test@test.com"
				password: "Admin@123"
				is_subscribed: true
			}
		) {
			customer {
				created_at
			}
		}
	}
	```

1. Generate a token for the previously created user and use as a bearer token:

	```
	mutation {
	generateCustomerToken(email: "test@test.com", password: "Admin@123") {
		token
	}
	}
	```

1. Try to update the email for the previously created user using the last created Bearer token:

	```
	mutation {
		updateCustomerEmail(email: "test+updated@test.com", password: "Admin@123") {
			customer {
				email
			}
		}
	}
    ```

<u>Expected results</u>:

Customers should receive email notifications after updating the email addresses on their accounts.

<u>Actual results</u>:

Only a subscription email is sent to the new address; the confirmation email for the email address change is not sent.

## Apply the patch

To apply individual patches, use the following links depending on your deployment method:

* Adobe Commerce or Magento Open Source on-premises: [[!DNL Quality Patches Tool] > Usage](/help/tools/quality-patches-tool/usage.md) in the [!DNL Quality Patches Tool] guide.
* Adobe Commerce on cloud infrastructure: [Upgrades and Patches > Apply Patches](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/upgrade/apply-patches.html) in the Commerce on Cloud Infrastructure guide.

## Related reading

To learn more about [!DNL Quality Patches Tool], refer to:

* [[!DNL Quality Patches Tool]: A self-service tool for quality patches](/help/tools/quality-patches-tool/quality-patches-tool-to-self-serve-quality-patches.md) in the Tools guide.
