# Overview

This project includes several Rake tasks to automate various aspects of the workflow, such as generating data for news digests, rendering templated files, optimizing images, and generating maps. Below are the descriptions and usage guidelines for each Rake task defined in the Rakefile.

## Rake tasks

### `render`

Renders the templated files in the `_jekyll/templates` directory with data from `_jekyll/_data/`. The result will be found in the `help/includes/templated` directory. This task automatically maintains include relationships and timestamps after rendering.

**Usage:**

```sh
rake render
```

**What it does:**
- Executes the render script to generate templated files
- Runs `includes:maintain_all` to update include relationships and timestamps
- Ensures all include metadata is current after rendering

### `image_optim`

Optimizes images in modified uncommitted files. For other images, use the `path` argument to specify the directory or file.

**Usage:**

```sh
rake image_optim
```

**With `path` argument:**

```sh
rake image_optim path=../path/to/dir/or/file
```

### `whatsnew`

Generates data for a news digest. The default timeframe is since the last update. You can specify a different period using the `since` argument.

**Usage:**

```sh
rake whatsnew
```

**With `since` argument:**

```sh
rake whatsnew since="jul 4"
```

### `whatsnew_bp`

Generates data for a news digest at Best Practices. The default timeframe is since the last update. You can specify a different period using the `since` argument.

**Usage:**

```sh
rake whatsnew_bp
```

**With `since` argument:**

```sh
rake whatsnew_bp since="jul 4"
```

### `azure_regions`

Generates an Azure regions map. The input data file should be placed in `_jekyll/tmp/azure-regions.json`. The result will be found in `_jekyll/tmp/azure-regions.svg`. Note that you need Python, [PyGMT](https://www.pygmt.org/latest/install.html), and [pdf2svg](https://formulae.brew.sh/formula/pdf2svg) installed.

**Usage:**

```sh
rake azure_regions
```

### `includes:maintain_relationships`

Discovers and updates the `include-relationships.yml` file by scanning all markdown files in the `help` directory for include statements using the pattern `{{$include /help/_includes/filename.md}}`. This task automatically maintains the relationships between main content files and their included files.

**Usage:**

```sh
rake includes:maintain_relationships
```

**What it does:**
- Reads the list of existing include files from the `help/_includes` directory
- Searches through all main markdown files to find which ones reference each include
- Uses the `{{$include /help/_includes/filename.md}}` pattern to identify references
- Updates the `include-relationships.yml` file with discovered relationships
- Provides a summary of changes made and identifies unreferenced includes

### `includes:maintain_timestamps`

Maintains include timestamps by adding the latest include file change timestamps to main files. This task reads the `include-relationships.yml` file, checks git history for each include file, and adds or updates timestamps at the end of main files.

**Usage:**

```sh
rake includes:maintain_timestamps
```

**What it does:**
- Loads include relationships from `include-relationships.yml`
- For each main file, finds the latest git commit date among its include files
- Adds or updates HTML comments with timestamps at the end of main files
- Uses the format: `<!-- Last updated from includes: YYYY-MM-DD HH:MM:SS -->`
- Provides detailed output showing which include files were checked and their timestamps

**Example output:**

```console
Processing installation/advanced.md...
  Latest include change: 2024-04-16 09:42:31
  Include files checked: help/_includes/cli-consumers.md (2022-09-12 09:38:25), help/_includes/secure-install.md (2022-09-08 11:33:05), help/_includes/sensitive-data.md (2024-04-16 09:42:31)
  Added new timestamp
```

### `includes:maintain_all`

A convenience task that runs both `includes:maintain_relationships` and `includes:maintain_timestamps` in sequence. This is the recommended way to maintain both include relationships and timestamps.

**Usage:**

```sh
rake includes:maintain_all
```

### `unused_includes`

Finds include files in the `help/_includes` directory that are not referenced by any markdown files. This helps identify orphaned include files that can be safely removed.

**Usage:**

```sh
rake unused_includes
```

## Listing available tasks

To see all available rake tasks with their descriptions, use:

```sh
rake --tasks
```

For more detailed information about a specific task, use:

```sh
rake -T [task_name]
```

## Include management tasks

All include-related tasks are organized under the `includes` namespace for better organization:

```sh
# Discover and maintain include relationships
rake includes:maintain_relationships

# Add/update timestamps based on include file changes
rake includes:maintain_timestamps

# Do both operations in sequence (recommended)
rake includes:maintain_all
```

## Include relationships file format

The `include-relationships.yml` file tracks the relationships between main content files and their included files. This file is automatically maintained by the `maintain_include_relationships` rake task, which discovers relationships by reading existing include files and finding main files that reference them.

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
- Required gems specified in the Gemfile.
- Python, [PyGMT](https://www.pygmt.org/latest/install.html), and [pdf2svg](https://formulae.brew.sh/formula/pdf2svg) for the `azure_regions` task.

## Setup

1. Install the required gems:

    ```sh
    bundle install
    ```

2. Ensure you have Python, PyGMT, and pdf2svg installed for the `azure_regions` task. For more details on the setup see documentation in comments at [_scripts/azure_regions.py](_scripts/azure_regions.py).
