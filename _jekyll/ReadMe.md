# Overview

This project includes several Rake tasks to automate various aspects of the workflow, such as generating data for news digests, rendering templated files, optimizing images, and generating maps. Below are the descriptions and usage guidelines for each Rake task defined in the Rakefile.

## Rake tasks

### `render`

Renders the templated files in the `_jekyll/templates` directory with data from `_jekyll/_data/`. The result will be found in the `help/includes/templated` directory.

**Usage:**

```sh
rake render
```

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
