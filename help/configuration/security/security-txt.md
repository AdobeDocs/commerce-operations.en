---
title: Security.txt
description: Learn how to provide information to help security researchers report vulnerabilities.
badge: label="Contributed by Kalpesh Mehta from Corra" type="Informative" url="https://partners.magento.com/portal/details/partner/id/70/" tooltip="Kalpesh Mehta"
---

# Security TXT file

When security vulnerabilities are discovered by researchers, proper reporting channels are often lacking. As a result, some vulnerabilities are not reported. The purpose of the `security.txt` [file format](https://datatracker.ietf.org/doc/html/draft-foudil-securitytxt-09) file is to provide security researchers the information they can use to report their findings.

Merchants can enter their contact information for [security issue reporting](https://docs.magento.com/user-guide/stores/security-issue-reporting.html) from the Commerce _Admin_. For developers, the `Magento_Securitytxt` module provides the following functionality:

- Allows security configurations to be saved from the _Admin_.
- Contains a router to match application action class for requests to the `.well-known/security.txt` and `.well-known/security.txt.sig` files.
- Serves the content of the `.well-known/security.txt` and `.well-known/security.txt.sig` files.

A valid `security.txt` file might look like the following:

```text
Contact: mailto:security@example.com
Contact: tel:+1-201-555-0123
Encryption: https://example.com/pgp.asc
Acknowledgement: https://example.com/security/hall-of-fame
Policy: https://example.com/security-policy.html
Signature: https://example.com/.well-known/security.txt.sig
```

To create the `security.txt` signature (`security.txt.sig`) file:

```bash
gpg -u KEYID --output security.txt.sig --armor --detach-sig security.txt
```

To verify the signature:

```bash
gpg --verify security.txt.sig security.txt
```
