---
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---

# Overview

This project uses Rake tasks to automate parts of the documentation workflow. Most tasks are shared across ExL Commerce docs repositories and come from the [`adobe-comdox-exl-rake-tasks`](https://github.com/commerce-docs/adobe-comdox-exl-rake-tasks) gem. A few tasks below are specific to this repository.

**For common tasks (rendering templates, managing includes, optimizing/auditing images, generating the What's New digest), see the [adobe-comdox-exl-rake-tasks README](https://github.com/commerce-docs/adobe-comdox-exl-rake-tasks/blob/main/README.md).**

> All `bundle exec rake` commands below must be run from within the `_jekyll/` directory, since that's where the Gemfile and Rakefile live.

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

### `whatsnew_consolidated`

Consolidates published What's new tables from the configured Commerce documentation projects into `help/_includes/automated/whatsnew/consolidated.md`.

```sh
bundle exec rake whatsnew_consolidated
```

Configure projects under `whatsnew_consolidated.projects` in [`_config.yml`](_config.yml). Each entry requires a repository name, a project title, and an absolute HTTP(S) website URL:

```yaml
whatsnew_consolidated:
  projects:
    - repo: commerce-operations.en
      title: Adobe Commerce operational guides
      website: https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/home
    - repo: commerce-webapi
      title: Adobe Commerce web APIs
      website: https://developer.adobe.com/commerce/webapi/
    - repo: commerce.en
      title: Adobe Commerce
      website: https://experienceleague.adobe.com/en/docs/commerce
```

Move entries to change section order. You can freely interleave projects from both platforms. Repository names ending with `.en` use the ExL source path, `help/_includes/templated/whats-new.md`. All other repositories use the DevSite source path, `src/pages/_includes/templated/whats-new.md`.

The task fetches public `main` files from the `AdobeDocs` GitHub organization. It displays each project title as a heading linked to its website and uses `Description | Type | Date/source` table headers throughout. For DevSite projects only, escaped `\<br/\>` tags become `<br/>`. Otherwise, body rows, duplicates, links, and source row order remain unchanged. Each source defines its own time period.

Projects with a recognized no-updates message are omitted. If every project has no entries, the include contains one overall no-updates message. Configuration, fetch, parsing, or write failures fail the task without replacing an existing include.

The task does not schedule generation or update consuming pages.

The focused test suite includes Rake entry-point tests that load the `_jekyll` Rakefile and run through Bundler. Install Bundler and the `_jekyll` bundle first:

```sh
cd _jekyll && bundle install
```

Then run the tests from the repository root:

```sh
ruby _jekyll/test/consolidated_whatsnew_test.rb
```

### `whatsnew_feedback`

Creates `help/_includes/automated/whatsnew/consolidated-feedback.md` by filtering the existing local `help/_includes/automated/whatsnew/consolidated.md` include.

```sh
bundle exec rake whatsnew_feedback
```

The task matches `Feedback` as a complete, comma-separated Type value, ignoring case and surrounding whitespace. Combined types such as `Feedback, technical` are included. Mentions in descriptions, source links, or partial type names do not qualify.

Matching rows, duplicates, linked project headings, and project and row order remain unchanged. Projects with no matching entries are omitted. If nothing matches, the output contains one overall no-feedback message.

The input must already exist. Run `bundle exec rake whatsnew_consolidated` separately when you want to refresh it. The feedback task does not fetch remote content, read project configuration, or regenerate its input.

Missing or malformed input fails the task without replacing an existing filtered include. The input file is never modified, and the filtered output is published atomically.

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
