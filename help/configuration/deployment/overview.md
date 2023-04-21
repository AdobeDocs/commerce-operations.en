---
title: Deployment overview
description: Read about deployment strategies for the Commerce application.
exl-id: d5ed6fb3-2dd2-49df-802b-6d712ecd9ccf
---
# Deployment overview

These topics discuss the process of deploying the Commerce application to a production site for Adobe Commerce version 2.2 and later. Adobe recommends this deployment method for anyone with a large site who does not want to experience downtime during deployment.

If you deploy Commerce on a single machine and can tolerate some downtime during deployment, see [Single-machine deployment](../deployment/single-machine.md).

## Pipeline deployment

With Commerce version 2.2, Adobe introduced _pipeline deployment_ as a new way to deploy to production with minimal downtime. This deployment process occurs on different systems and provides a way to maintain consistent configurations for all pipeline deployment systems. It is a simple but powerful model that enables you to separate ordinary configuration settings from either system-specific settings (like host and port) or sensitive settings (such as names and passwords).

To use pipeline deployment, Adobe assumes that you are:

- An experienced system integrator with excellent knowledge of Adobe Commerce configuration options.
- Managing a large Commerce site (thousands of stock-keeping units (SKUs)) and want to keep production site downtime to a minimum.
- Knowledgeable about PHP programming.
- Experienced with source control methods.
- Your code is in a source control repository. In this guide, we assume that you are using a Git-based repository.

### Reduced downtime

When you deploy static assets and compile code on a machine separate from your production system, you minimize downtime. Downtime on your production system is limited to the amount of time required to transfer static files and compiled code to the server.

## Deployment systems

We use the following terms to describe the systems involved with deployment.

- **Development system**—Machine on which developers work to customize code; and install extensions, themes, and language packages from Commerce Marketplace. In addition, you make all configuration changes on your development system. You can have many development systems.

- **Build system**—One system on which you deploy static assets and compile code for your production system. Because you build these assets on a system not in production, your production system's downtime is minimized.

  Your build system does not have to have Commerce installed on it. It needs only the Commerce code but no database connection is required. Also, your build system does not need to be a physically separate server.

- **Staging system**—_Optional_. You can optionally set up a staging system to use for final testing of all integrated code, including User Acceptance Testing (UAT). Set up a staging system the same way you set up a production system. Except for the fact that staging is not your live store and does not process orders from customers, it is identical to production.

- **Production system**—Your live store. You should make minimal direct configuration changes here, and certainly nothing that has not been tested on a Staging instance. If possible, make configuration changes with [Data Patches](https://developer.adobe.com/commerce/php/development/components/declarative-schema/patches/) that have been tested on a Staging/Development instance.

## Other deployment methods

Optionally, you can use other deployment methods, including:

- Secure copying with SCP or rsync
- [Capistrano](https://capistranorb.com/documentation/overview/what-is-capistrano)
- The [Deployer tool](https://deployer.org/)

## Manage the configuration

Modeling after [factor 3 in the 12-factor app design](https://12factor.net/config), Commerce now stores the configuration for each system in the system itself. (Development configuration settings are stored on the development system, production settings are stored on the production system.)

We provide a way to synchronize the configuration of your systems:

- **Shared configuration**—Settings that are neither system-specific nor sensitive.

   Shared settings are settings that you want to be consistent on development and production systems. Set the shared configuration in the Admin in your development (or Adobe Commerce on cloud infrastructure _integration_) system.

   The shared configuration file, `app/etc/config.php`, should be included in source control so it can be shared between development, build, and production systems.

- **System-specific configuration**—Settings that vary by system, such as search engine hostnames and ports.

- **Sensitive configuration**—Settings that should _not_ be in source control because they expose personally identifiable information (PII) or settings such as API keys or passwords.

   The system-specific configuration file, `app/etc/env.php`, should _not_ be included in source control or otherwise shared between systems. Instead, use the [`magento config:set` and `magento:sensitive:set` commands](../cli/set-configuration-values.md) to provide values for those settings in your production system.

>[!INFO]
>
>These new methods to manage your configuration are optional. You do not have to, but it is strongly recommended that you use them.

Most of the time, the configuration options you set in the shared, system-specific, or sensitive configuration cannot be edited in the Admin. This helps keep your settings consistent across all systems. (You can optionally use the [`magento config:set` command](../cli/set-configuration-values.md) without the `--lock` option to configure settings that are editable in the Admin.)

Each Commerce configuration option has a unique _configuration path_. To set a value for a configuration option, you can use either a CLI command or an environment variable to set the value for that configuration path on a specific system.
