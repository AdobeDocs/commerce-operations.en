# Overview

This project uses Rake tasks to automate parts of the documentation workflow. Most tasks are shared across ExL Commerce docs repositories and come from the [`adobe-comdox-exl-rake-tasks`](https://github.com/commerce-docs/adobe-comdox-exl-rake-tasks) gem. A few tasks below are specific to this repository.

**For common tasks (rendering templates, managing includes, optimizing/auditing images, generating the What's New digest), see the [adobe-comdox-exl-rake-tasks README](https://github.com/commerce-docs/adobe-comdox-exl-rake-tasks/blob/main/README.md).**

## Repo-specific Rake tasks

### `whatsnew_bp`

Generates data for a news digest at Best Practices. The default timeframe is since the last update. You can specify a different period using the `since` argument.

**Usage:**

```sh
bundle exec rake whatsnew_bp
```

**With `since` argument:**

```sh
bundle exec rake whatsnew_bp since="jul 4"
```

### `get_released_versions`

Gets the last 10 released versions from the `magento/magento2` repository. Requires [GitHub CLI](https://cli.github.com/) to be installed and authenticated.

**Usage:**

```sh
bundle exec rake get_released_versions
```

**Output:** Generates `tmp/core-release.txt` with release tag names and dates.

### `first_merge_date`

Gets the date of the first merge into a specified branch. Requires [GitHub CLI](https://cli.github.com/) to be installed and authenticated.

**Usage:**

```sh
bundle exec rake first_merge_date base=develop
```

**Arguments:**

- `base` (required): The target branch name to check for merges.

## Listing available tasks

To see all available rake tasks with their descriptions, use:

```sh
bundle exec rake --tasks
```

For more detailed information about a specific task, use:

```sh
bundle exec rake -T [task_name]
```

## Include relationships file format

The `include-relationships.yml` file tracks the relationships between main content files and their included files. This file is automatically maintained by the `includes:maintain_relationships` task (see the [adobe-comdox-exl-rake-tasks README](https://github.com/commerce-docs/adobe-comdox-exl-rake-tasks/blob/main/README.md) for task usage), which discovers relationships by reading existing include files and finding main files that reference them.

**File structure:**

```yaml
---
metadata:
  last_updated: '2025-08-22 14:04:37'
  description: 'Index of main files and their included files for automatic timestamp updates'
  total_relationships: 57
  auto_discovered: true
  discovery_date: '2025-08-22 14:04:37'
relationships:
  configuration/deployment/example-environment-variables.md:
    - "/help/_includes/config-save-config.md"
    - "/help/_includes/config-update-build-system.md"
    - "/help/_includes/config-update-prod-system.md"
  # ... more relationships
```

**Fields:**
- `metadata.last_updated`: Timestamp of the last update
- `metadata.total_relationships`: Total number of main files with includes
- `metadata.auto_discovered`: Indicates the file was automatically generated
- `metadata.discovery_date`: Date when relationships were first discovered
- `relationships`: Mapping of main files to their included files

**Include statement format:**
Main content files use the following syntax to include other files:

```markdown
{{$include /help/_includes/filename.md}}
```

## Prerequisites

- Ruby and Bundler installed.
- Required gems specified in the Gemfile (common tasks are provided by `adobe-comdox-exl-rake-tasks`; the `whatsnew` task additionally requires `whatsup_github`).
- [GitHub CLI](https://cli.github.com/) for the `get_released_versions` and `first_merge_date` tasks.

## Setup

Install the required gems:

```sh
bundle install
```
