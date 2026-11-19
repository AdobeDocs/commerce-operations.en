---
title: Install and configure the Commerce Upgrade Toolkit
description: Prepare a local Adobe Commerce development project and configure the Commerce Upgrade Toolkit with an AI agent.
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---

# Installation and setup

## Prerequisites

Prepare the following before installing the toolkit:

| Requirement | Preparation |
| --- | --- |
| Adobe Commerce project | Use an installed, working local development project containing `composer.json` and `bin/magento`. |
| Development environment | Use Warden, Adobe Commerce Cloud Docker, or Markshust Docker Magento, as supported by your toolkit release. Start the required services and verify that the storefront is accessible. |
| PHP and services | Match PHP, database, search, and queue versions to the current Adobe Commerce release. Review requirements for each proposed target before changing services. |
| Node.js and npm | Install a supported Node.js LTS version compatible with both the Adobe I/O CLI and the approved toolkit release. |
| Adobe I/O CLI | Install the CLI after Node.js and npm. Authenticate if required for your workflow. |
| AI agent | Install, enable, and authenticate GitHub Copilot in your editor or CLI, or install and authenticate Claude Code. |

Use a supported Node.js LTS version that meets the requirements of both the Adobe I/O CLI and the toolkit plugin. Do not use a Node.js version that has reached end-of-life.

Verify that Node.js, npm, and the Adobe I/O CLI are available:

```shell
node --version
npm --version
aio --version
```

If your workflow requires Adobe I/O authentication, run the following command and select the appropriate organization and project:

```shell
aio login
```

Use a local development environment, not production.

## Install the plugin

Install the toolkit plugin with the Adobe I/O CLI:

```shell
aio plugins:install @adobe-thillai/aio-cli-plugin-ccua
```

Confirm that installation finishes without errors and that the plugin appears in the installed plugin list:

```shell
aio plugins
```

## Configure the project

Open a terminal in the Adobe Commerce application root. Replace the example path with the location of your development project:

```shell
cd /path/to/commerce/project
```

Run interactive setup:

```shell
aio ccua:setup
```

Alternatively, select GitHub Copilot when starting setup:

```shell
aio ccua:setup --agent github-copilot
```

Follow the prompts and resolve any reported errors before proceeding.

## Select an agent

If setup has not configured your preferred agent, run the interactive selection command from the same project directory:

```shell
aio ccua:agent:select
```

Choose **GitHub Copilot** or **Claude Code**. Follow the displayed labels if the menu numbering differs.

## Confirm setup

Before starting an assessment:

- Confirm that setup completed without unresolved errors.
- Confirm that the selected agent is installed and authenticated.
- Verify that the Adobe Commerce services are running.
- Review any generated agent configuration, including data-handling guardrails.

Continue to the [usage guide](usage.md) to generate an upgrade plan. If setup fails, see [Troubleshooting](troubleshooting.md).
