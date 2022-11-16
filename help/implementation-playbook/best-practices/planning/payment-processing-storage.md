---
title: Best practices for Payment Processing and storage
description: Learn how to securely process and store payment details
role: Developer
feature-set: Commerce
feature: Best Practices
---

# Best Practices for Payment Processing and Storage

One of the key principles in maintaining [PCI compliance](https://nam04.safelinks.protection.outlook.com/GetUrlReputation) is having a strategy to properly process and store credit card payments.

Storing cardholder data in Adobe Commerce is strictly prohibited and doing so could be a violation of your obligations as a merchant under the Payment Card Industry Data Security Standard (PCI-DSS). More information about our shared responsibility model and guidelines for merchant obligations can be found in our [shared responsibility guide for Adobe Commerce](https://www.adobe.com/content/dam/cc/en/trust-center/ungated/whitepapers/experience-cloud/adobe-commerce-shared-responsibility-guide.pdf) on the Adobe Trust Center.

We recommend following the best practices below to help ensure you are properly processing payment information on your eCommerce site. Additional guidance on overall security best practices can be found in our [security best practices guide for Adobe Commerce](https://www.adobe.com/content/dam/cc/en/trust-center/ungated/whitepapers/experience-cloud/adobe-commerce-best-practices-guide.pdf) on the Adobe Trust Center

## Affected products and versions

Adobe Commerce on-premises, [all supported versions](../../release/versions.md)
Adobe Commerce on cloud infrastructure

## Protecting cardholder data

If storing cardholder data is needed, then cardholder data should be stored outside of Adobe Commerce with storage safeguards. Having storage safeguards in place for payment details, like credit cardholder data, helps prevent fraud and other potential security issues. In line with other PCI standards, having protections in place is the first line of defense. Some preferred methods to enhance protections of stored data include encryption, truncation, tokenization, one-way hashing, and masking.

Protections for cryptographic keys are vital to data protection strategies. It’s critical to have skilled and trustworthy custodians overseeing these keys.

Finally, a primary account number (PAN) must be unreadable during storage (e.g., masked such as XXX). This includes portable storage and backup media such as flash drives, USB, and external hard drives, and even audit logs.

## Encrypt transmission of cardholder data

Safeguarding data during transmission is key to protecting payment information, like cardholder data. When this information is transmitted over open networks, it can become more vulnerable to security issues.

## Use secure transmission protocols

Transmit cardholder data using secure transmission protocols and practices including:

* Trusted keys and certificates
* Secure transmission protocols such as TLS, SSH, or VPN
* Asymmetric algorithms in encryption
* Tokenizaton, masking, and penetration testing with transmitting and displaying PANs
* Restrict access to cardholder data
* Access to sensitive information should be restricted on a need-to-know basis and given only to those authorized personnel with a business need

The recommended method to handle cardholder data is to not store the primary account number (PAN) but to tokenize the card with a specific payment processing provider and store the token, card type, and encrypted expiration date. You can use the token as a credential on file for future use as it is unique for each merchant only. Since the token is unique, if there is a security issue, the token in invalidated which helps to prevent fraudulent activity

## Additional information

If you are looking for recommended payment solutions by Adobe, please consider [Adobe Payment Services](https://experienceleague.adobe.com/docs/commerce-merchant-services/payment-services/overview.html).
