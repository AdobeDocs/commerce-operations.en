---
title: Best practices for Payment Processing and storage
description: Learn how to securely process and store payment details
role: Developer
feature: Best Practices
exl-id: 635f38d3-0199-4d96-ba75-9edd0cb94b5c
---
# Best Practices for Payment Processing and Storage

One of the key principles in maintaining [PCI compliance](https://experienceleague.adobe.com/docs/commerce-admin/start/compliance/payments/compliance-pci.html) is having a strategy to properly process and store credit card payments.

Storing cardholder data in Adobe Commerce is **strictly prohibited** and doing so could be a violation of your obligations as a merchant under the Payment Card Industry Data Security Standard (PCI-DSS). More information about the shared responsibility model and guidelines for merchant obligations is available in the [Adobe Commerce Shared Responsibility Model Guide](https://www.adobe.com/content/dam/cc/en/trust-center/ungated/whitepapers/experience-cloud/adobe-commerce-shared-responsibilities-guide.pdf) on the Adobe Trust Center.

Follow the best practices below to ensure that you are properly processing payment information on your eCommerce site. For additional guidance on security best practices, see [Secure your site and infrastructure](../launch/security-best-practices.md).

## Affected products and versions

[All supported versions](../../../release/versions.md) of:

* Adobe Commerce on cloud infrastructure
* Adobe Commerce on-premises

## Protecting cardholder data

If storing cardholder data is needed, then cardholder data should be stored outside of Adobe Commerce with storage safeguards. Having storage safeguards in place for payment details, like credit cardholder data, helps prevent fraud and other potential security issues. In line with other PCI standards, having protections in place is the first line of defense. Some preferred methods to enhance protection of stored data include encryption, truncation, tokenization, one-way hashing, and masking.

Protections for cryptographic keys are vital to data protection strategies. It's critical to have skilled and trustworthy custodians overseeing these keys.

Finally, a primary account number (PAN) must be unreadable during storage, for example masked with `XXX`. This includes portable storage and backup media such as flash drives, USB, and external hard drives, and even audit logs.

## Encrypt transmission of cardholder data

Safeguarding data during transmission is key to protecting payment information, like cardholder data. When this information is transmitted over open networks, it can become more vulnerable to security issues.

### Use secure transmission protocols

Transmit cardholder data using secure transmission protocols and practices including:

* Trusted keys and certificates
* Secure transmission protocols such as TLS, SSH, or VPN
* Asymmetric algorithms in encryption
* Tokenizaton, masking, and penetration testing with transmitting and displaying PANs
* Restrict access to cardholder data
* Access to sensitive information should be restricted on a need-to-know basis and given only to those authorized personnel with a business need

The recommended method to handle cardholder data is to tokenize the data instead of storing it. Tokenize the card with a specific payment processing provider and store the token, card type, and encrypted expiration date. You can use the token as a credential on file for future use as it is unique for each merchant only. Since the token is unique, if there is a security issue, the token in invalidated which helps to prevent fraudulent activity.

## Additional information

If you are looking for recommended payment solutions by Adobe, consider [Adobe Payment Services](https://experienceleague.adobe.com/docs/commerce/payment-services/overview.html).
