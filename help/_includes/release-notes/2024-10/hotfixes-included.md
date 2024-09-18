# Hotfixes included in October security patches (except 2.4.4)

This release includes a Hhtfix to resolve an issue with the Braintree payment gateway.

The system now includes the necessary fields to fulfill the 3DS VISA mandate requirements when using Braintree as a payment gateway. This ensures that all transactions comply with the latest security standards set by VISA. Previously, these additional fields were not included in the payment information sent, which could have led to non-compliance with the new VISA requirements.

See the [placeholder](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/overview) Knowledge Base article for details.

<!--
BUNDLE-3360
-->