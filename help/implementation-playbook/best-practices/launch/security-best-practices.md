---
title: Security Best Practices
description: Learn security best practices to configure and maintain Commerce store, Admin, and infrastructure, and data security.
role: Admin, Developer, Leader, User
feature: Best Practices
---

# Security Best Practices

Establishing and maintaining a secure environment for Adobe Commerce projects deployed on Cloud infrastructure is a responsibility that is shared between Adobe Commerce customers and solution partners and Adobe. The intent of this guide is to provide best practices for the customer's side of the equation.

Although you cannot eliminate all security risks, applying these best practices hardens the security posture of Commerce installations. A secure site and infrastructure makes a less attractive target for malicious attacks, ensures the security of the solution and customers' sensitive information, and helps minimize security-related incidents that can cause site disruptions and costly investigations.

>[!NOTE]
>
>Responsibility for establishing and maintaining a secure environment for Commerce is shared between Adobe and the customer or solution partner responsible for developing, deploying, and maintaining Adobe Commerce project infrastructure, websites, and integrations with external systems and services as described in the [Shared Responsibility Model Guide](https://www.adobe.com/content/dam/cc/en/trust-center/ungated/whitepapers/experience-cloud/adobe-commerce-shared-responsibilities-guide.pdf).

[All supported versions](../../../release/versions.md) of:

- Adobe Commerce on cloud infrastructure

>[!NOTE]
>
>Although these best practices are recommended specifically for Adobe Commerce on cloud infrastructure projects, the same configuration settings and recommendations are also applicable to Adobe Commerce on-premises projects.

## Priority recommendations

Adobe considers the following recommendations to be of highest priority for all customers. Implement these key security best practices in all Commerce deployments:

- **Enable two-factor authentication for your admin panel and all SSH connections**

   - [Security for Commerce Admin](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/2fa/security-two-factor-authentication.html)

   - [Secure SSH connections](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/multi-factor-authentication.html) (cloud infrastructure)

    When MFA is enabled on a project, all Adobe Commerce on cloud infrastructure accounts with SSH access must follow an authentication workflow. This workflow requires either a two-factor authentication (2FA) code, or an API token and SSH certificate to access the environment.

- **Secure the Admin**

   - [Configure a non-default admin URL](https://docs.magento.com/user-guide/stores/store-urls-custom-admin.html) instead of using the default `admin` or a common term such as `backend`. This configuration reduces exposure to scripts that attempt to gain unauthorized access to your site.

   - [Configure Advanced security settings](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-admin.html)—Add a secret key to URLs, require passwords to be case-sensitive, and limit Admin session length, password lifetime interval, and the number of login attempts allowed before locking an Admin user account. For increased security, configure the length of keyboard inactivity before the current session expires, and require the username and password to be case-sensitive.

   - [Enable ReCAPTCHA](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/captcha/security-google-recaptcha.html) to protect the Admin from automtated brute force attacks.

   - Follow the principle of least privilege when assigning [Admin permissions](https://experienceleague.adobe.com/docs/commerce-admin/systems/user-accounts/permissions.html) to roles and roles to Admin user accounts.

- **Upgrade to the latest release of Adobe Commerce**—Keep your code updated by [upgrading your Commerce project to the latest release](#upgrade-to-the-latest-release) of Adobe Commerce, Commerce Services, and extensions, including security patches, hotfixes, and other patches provided by Adobe.

- **Secure sensitive configuration values**—Use [configuration management](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/configuration-management/set-configuration-values.html) to lock criticaal configuration values. Use the `lock config` and `lock env` CLI commands to lock environment variables so they can not be edited or updated from the Admin. The command writes the value to the `<Commerce base dir>/app/etc/env.php` file. (For Commerce on cloud infrastructure projects, see [Store Configuration Management](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/store-settings.html?lang=en#sensitive-data).)

- **Run security scans**— Use the [Commerce Security Scan service](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-scan.html) to mnonitor all Adobe Commerce and Magento Open Source sites for known security risks and malware, and sign up to receive patch updates and security notifications.

## Ensure security of extensions and custom code

When you extend Adobe Commerce by adding third-party extensions available from the Adobe Commerce marketplace, or add custom code developed in house or in collaboration with an Adobe partner or system integrator (SI), ensure the security of these customizations by applying the following best practices:

- **Choose a partner or solution integrator (SI) well-versed in security**

  Select organizations with a solid track record of dealing with security issues, demonstrated adherence to secure development practices, and a history of delivering secure custom code.

- **Use secure extensions**—Consult your solution integrator or developer to identify the most appropriate and secure extensions for Commerce deployments following [Adobe Extensions best practices](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/planning/extensions.html).

  - Only source extensions from the Adobe Commerce Marketplace or through the solution integrator. If the extension is sourced through an integrator, ensure that ownership of the extension license is transferrable, in case the integrator changes.

  - Limit the number of extensions and vendor to reduce risk exposure.

  - If possible, review extension code for security before integrating with the Commerce application.

  - Ensure that PHP extension developers follow Adobe Commerce development guidelines, processes, and security best practices. Specifically, developers must avoid using PHP capabilities that can lead to remote code execution or weak cryptography. See [Security](https://developer.adobe.com/commerce/php/best-practices/security/) in the *Best Practices for Extension Developers Guide*.

- **Audit code**—Review your server and source code repository for development leftovers. Ensure that there are no accessible log files, publicly visible .git directories, tunnels to execute SQL, database dumps, php info files, or any other unprotected files that are not required, and that might be used in an attack.

## Upgrade to the latest release

Ensure that all components of an Adobe Commerce installation run the latest version of Commerce, Commerce services, and Commerce extensions available. Adobe continually releases updated solution components to improve security and better protect customers against possible compromise. Using the latest version of the Adobe Commerce application, installed services, and extensions as well applying current patches is the first and best line of defense against possible compromise.

Commerce typically releases security updates on a quarterly basis but reserves the right to release hotfixes for major security threats based on priority and other factors.

See the following resources for information about available Adobe Commerce versions, release cycles, and the upgrade and patch process:

- [Released Versions](../../../release/versions.md)
- [Product Availability](../../../release/product-availability.md) (Adobe Commerce services and Adobe-authored extensions)
- [Adobe Commerce Lifecycle policy](../../../release/planning/lifecycle-policy.md)
- [Upgrade Guide](../../../upgrade/overview.md)
- [How to apply patches](https://experienceleague.adobe.com/docs/commerce-operations/upgrade-guide/patches/overview.md)

## Develop a disaster recovery plan

Develop a comprehensive disaster recovery plan. Having a plan in place helps control damage and restore normal business operations quickly if the security of Commerce sites and data is compromised.

If a customer requires restoration of Commerce instance due to a disaster, Adobe can provide the customer with backup files. The customer and solution integrator, if applicable, can perform the restore.

As part of a disaster recovery plan, Adobe highly recommends that customers export and backup their Adobe Commerce application configuration to make it easy to redeploy if a security incident redeployment is required for business continuity purposes.

Learn more about planning for backup and disaster recovery:

- Adobe Commerce deployed on cloud infrastructure:

  - [Backup and disaster recovery](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/pro-architecture.html#backup-and-disaster-recovery)

  - [Store configuration management for Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/store-settings.html)

- Adobe Commerce deployed on premises:

  - [Backup and recovery](../../infrastructure/self-hosting/disaster-recovery-ideas.md)

  - [Export settings](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/configuration-management/export-configuration.html)

  - [Import settings](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/configuration-management/import-configuration.html?lang=en)

  - [Backup and rollback the file system, media, and database](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/tutorials/backup.html)


## Manage and audit access to Commerce sites, Admin panel, and cloud infrastructure projects

- **[Review Admin user access](https://experienceleague.adobe.com/docs/commerce-admin/systems/user-accounts/permissions-users-all.html)**—Remove old, unused, or suspicious accounts and rotate passwords for all Admin users.

- **[Review Admin security settings](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-admin.html)**-Verify that Admin security settings follow security best practices.

- **[Review user accounts for Adobe Commerce on cloud infrastructure projects](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/project/user-access.html)**—Remove old, unused, or suspicious accounts and rotate passwords for all Admin users. Ensure that account security settings are configured correctly.

- **Audit [SSH keys](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/secure-connections.html) for Adobe Commerce on cloud infrastructure**—Review, delete, and rotate SSH keys.

## Develop a disaster recovery plan

Develop a comprehensive disaster recovery plan. Having a plan in place helps control damage and restore normal business operations quickly if the security of Commerce sites and data is compromised.

If a customer requires restoration of Commerce instance due to a disaster, Adobe can provide the customer with backup files. The customer and solution integrator, if applicable, can perform the restore.

As part of a disaster recovery plan, Adobe highly recommends that customers export and backup their Adobe Commerce application configuration to make it easy to redeploy if a security incident redeployment is required for business continuity purposes. The primary reason to export the configuration to the file system is that the configuration takes precedence over the database configuration. In a read-only file system, this forces a redeploy to change sensitive configuration settings, providing an extra layer of protection.

Learn more about planning for backup and disaster recovery:

- Adobe Commerce deployed on cloud infrastructure:

  - [Backup and disaster recovery](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/architecture/pro-architecture.html#backup-and-disaster-recovery)

  - [Store configuration management for Adobe Commerce on cloud infrastructure](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure-store/store-settings.html)

- Adobe Commerce deployed on premises:

  - [Backup and recovery](../../infrastructure/self-hosting/disaster-recovery-ideas.md)

  - [Export settings](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/configuration-management/export-configuration.html)

  - [Import settings](https://experienceleague.adobe.com/docs/commerce-operations/configuration-guide/cli/configuration-management/import-configuration.html?lang=en)

  - [Backup and rollback the file system, media, and database](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/tutorials/backup.html)

## Know the most common attacks

Below is a list of common categories of attacks that Adobe recommends all Commerce customers be aware of and take measures to protect against:

- **Site defacing**— While access to the site and user accounts may be compromised, payment information often remains secure.

- **Botnets**—The customer's Commerce server becomes part of a botnet that sends spam email. Although user data is not typically compromised, the customer's domain name may be blacklisted by spam filters, preventing delivery of any email from the domain. Alternatively, the customer's site becomes part of a botnet causing a distributed denial of service (DDOS) attack on another site/s. The botnet may block inbound IP traffic to the Commerce server, preventing customers from being able to shop.

- **Direct server attacks**—Data is compromised, backdoors and malware are installed, and site operations are affected. Payment information---provided that it is not stored on the server--- is less likely to be compromised through these attacks.

- **Silent card capture**—In this most disastrous attack, intruders install hidden malware or card capture software, or worse, modify the checkout process to collect credit card data and redirect it to another site for sale on the dark web. Such attacks can go unnoticed for extended periods of time and can result in major compromise of customer accounts and financial information.

- **Silent keylogging**—The threat actor installs key logging code on the customer's server in order to gather admin user credentials and then perform other attacks in a non- suspicious way.

### Take immediate action in the event of an attack

<!--This content overlaps with the content on prevent and respond to security incident. Need to combine with that topic and leave a general list here with links to the other topic.-->

In the unfortunate event of a site compromise, here are some key recommendations customers may wish to follow:

- Engage your system integrator and appropriate security personnel to conduct investigation and remediation efforts.

- Determine the scope of the attack:
  - Was credit card information accessed?
  - What information was stolen?
  - How much time has elapsed since the compromise?
  - Was the information encrypted?

- Try to find the attack vector to determine when and how the site was compromised, by reviewing server log files and file changes.
  - In certain circumstances, it may be advisable to wipe and reinstall everything or, in the case of virtual hosting, create a new instance. Malware could be hidden in an unsuspected location just waiting to restore itself.
  - Remove all unnecessary files. Then reinstall all required files from a known, clean source, such as files from your own version control system or the original distribution files from Adobe.
  - Reset all credentials, including the database, file access, payment and shipping integrations, web services, and Admin login. Also reset all integration and API keys as well as accounts that might be used to attack the system.

## Maintain a secure site and infrastructure

This section summarizes best practices for maintaining site and infrastructure security for an Adobe Commerce installation secure. Many of these best practice focus on securing the computer infrastructure in general, so some of the recommendations may already be implemented.

## Secure access to your site and infrastructure

- Use a VPN tunnel to block unauthorized access to the Commerce site and services. (Work with your hosting provider to set up the VPN tunnel.)
- Use a Web Application Firewall to analyze traffic and discover suspicious patters, such as credit card information being sent to an attacker. Adobe Commerce on cloud infrastructure installations provides a WAF and other security services as part of the [Fastly services integration](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/fastly.html).
- When you [configure Admin security settings](https://experienceleague.adobe.com/docs/commerce-admin/systems/security/security-admin.html?), Set up strong passwords and change them at least every 90 days, as recommended by the PCI Data Security Standard in section 8.2.4. See Configure Admin security.

### Use HTTPS

If the Commerce site is newly implemented, strongly consider launching the entire site using HTTPS. Not only does Google use HTTPS as a ranking factor, but also many users will not even consider purchasing from a site that is not secured with HTTPS.

### Export Configuration

Adobe highly recommends that customers export and backup their configuration to ease redeployment in the event redeployment may be needed for business continuity purposes. The primary reason to export the configuration to the file system is that the configuration takes precedence over the database configuration. In a read-only file system, this forces a redeploy to change sensitive configuration fields, providing an extra layer of protection.

### Protect against malware

Malware attacks targeting ecommerce sites are all too common, and threat actors continually develop new ways to harvest credit card and personal information from transactions.

However, Adobe has found that most site compromises are not due to an innovative hacker. Rather, threat actors often take advantage of existing, unpatched vulnerabilities, poor passwords, and weak ownership and permission settings in the file system.

In the most commonly experienced form of attack, malicious code is injected into the absolute header or absolute footer of a customer store. There, the code collects form data entered by the end user into the front end of the store, including customer login credentials and checkout form data, and sends it to another location for malicious purposes rather than to the Commerce backend. Additionally, depending on the method used to inject the malware into the Commerce site, the admin panel may be compromised as well, allowing the malware to replace the original payment form with an identical-looking fake form to override any protections set by the payment provider.

Client-side credit card skimmers are a type of malware that is embedded into a merchant's website content and can execute in a user's browser. After certain actions occur, such as the user submits a form or a text box changes, the skimmer serializes the data and sends it to third-party endpoints, which are typically other compromised websites that act as a relay to send the data to its final destination.

[Insert graphic -- check with Emily about getting original high-res image]

If the Commerce site has been attacked, follow the Adobe Commerce best practices for [responding to a security incident](prevent-respond-security-incident.md).

### Protect against Password guessing attacks

Brute force password guessing attacks can result in unauthorized Admin panel access. Follow these best practices to protect your site from these attacks:

1. Identify and protect all points where the Commerce installation can be accessed from the outside world.

   You can secure access to the Admin panel, which generally requires the most protection, by following Adobe's [priority recommendations](#priority-recommendations) when configuring your Commerce project.

1. Only allow users coming from a specified IP address or network to access the Commerce site by setting up an access control list.

   You can use a Fastly Edge ACL list with a custom VCL code snippet to filter incoming requests and allow access by IP address. See [Custom VCL for allowing requests](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/custom-vcl-snippets/fastly-vcl-allowlist.html).


    >[!TIP]
    >
    >If you employ a remote workforce, ensure that the IP addresses of remote employees are included in the list of addresses with permission to access the Commerce site.

### Prevent Clickjacking Exploits

Adobe safeguards your store from clickjacking attacks by using an `X-Frame-Options` HTTP request header.



















