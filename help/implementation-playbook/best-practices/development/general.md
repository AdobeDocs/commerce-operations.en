---
title: General development best practices
description: Learn about general best practices developing Adobe Commerce projects.
feature: Best Practices
role: Developer
exl-id: 35de9849-2d19-4bb6-b920-9ce3838bc8bc
---
# General development best practices for Adobe Commerce

This topic describes the baseline for a healthy Adobe Commerce development process. It describes fundamental processes, coding principles, and application design principles to guide developers.

>[!NOTE]
>
>Adobe Technical Architects use these best practices as a reference during engagements involving development.

These best practices have been developed based on years of experience developing and delivering Commerce projects. Adobe recommends that technical initiatives follow these best practices and that you improve existing processes and code to align with them.

## Text conventions

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this topic are to be interpreted as described in [RFC 2119](https://datatracker.ietf.org/doc/html/rfc2119).

## Process

1. A defined project methodology MUST be agreed upon before commencing the project activities. It MAY be Scrum, Waterfall, or any other methodology or combination of methodologies, as long it is defined.
1. Development SHOULD NOT start until a branching strategy for the version control system is available to the development team.
1. Development SHOULD NOT start until after sign-off on technical specifications, sign-off on user stories and use cases and, sign-off on test cases are available to the development team.
1. Development SHOULD NOT start until at least a development and QA environment are available.
1. Project-specific requirements that are mandatory for development to start MAY be documented in a _Definition of Ready_.
1. Sign-off SHOULD be done by a client representative that is authorized to sign off on project deliverables.
1. In Agile project methodologies, additional requirements MAY follow the sign-off. These requirements SHOULD be treated as new requirements and SHOULD be captured, architected, and planned accordingly.
1. All development MUST be functionally tested by the developer before submission.
1. All development SHOULD pass automated tests before it is submitted for code review. This MAY be configured as an automated process following pull request creation.
1. All development MUST pass manual code review by a Technical Architect or Lead Developer before it is submitted for quality assurance.
1. All development MUST pass quality assurance before delivery to the client.
1. Project-specific requirements that are mandatory for delivery MAY be documented in a "Definition of Done".

## Environment

1. All developers SHOULD use the same IDE. PhpStorm is the recommended IDE for Adobe Commerce development.
1. All developers SHOULD develop and test using the same technology stack as used on the (future) production servers. The versions of the software in this technology stack MUST match the major and minor version of the software installed on the production servers. See [system requirements](../../../installation/system-requirements.md) for details about the typical technology stack for Adobe Commerce.
1. The System Administrator or Technical Architect MAY provide the team with a centrally maintained local development environment to assure and promote equal and up-to-date local environments.
1. Developers and QA engineers MUST have access to the command line, the database, and the log files of the QA environment. This MAY require a VPN connection.

## Versioning

Module versions MUST adhere to the [Semantic Versioning 2.0.0 standard](https://semver.org/).
Dependencies on the Adobe Commerce codebase SHOULD follow the [Module Version Dependencies guidelines](https://developer.adobe.com/commerce/php/development/versioning/dependencies/).

## REVISION CONTROL

Commits MUST be accompanied by meaningful commit messages.

## Security

1. [Non-secure functions](https://developer.adobe.com/commerce/php/development/security/non-secure-functions/) SHOULD NOT be used.
1. [XSS-prevention strategies](https://developer.adobe.com/commerce/php/development/security/cross-site-scripting/) SHOULD be applied.
1. [Content Security Policies](https://developer.adobe.com/commerce/php/development/security/content-security-policies/) SHOULD be applied.
1. New Adobe Commerce instances SHOULD be delivered on the latest security release of a version that has not yet reached the "End of Security Fixes" date. See [Adobe Commerce Software Lifecycle Policy](../../../release/lifecycle-policy.md).
