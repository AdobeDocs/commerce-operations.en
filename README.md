# Adobe Commerce technical documentation

We welcome contributions from the community as well as from Adobe employees from outside the documentation teams.

## Adobe Open Source Code of Conduct

This project has adopted the [Adobe Open Source Code of Conduct](code-of-conduct.md) or the [.NET Foundation Code of Conduct](https://dotnetfoundation.org/code-of-conduct). For more information, see the [Contributing](contributing.md) article.

## About your contributions to Adobe content

See the [Adobe Docs Contributor Guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html). 

How you contribute depends on who you are and the sort of changes you'd like to contribute:

### Minor changes

If you are contributing minor updates, visit the article and click the feedback area that appears at the bottom of the article, click **Detailed feedback options**, and then click **Suggest an edit** to go to the markdown source file on GitHub. Use the GitHub UI to make your updates. See the general [Adobe Docs contributor guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html) for more information.

Minor corrections or clarifications you submit for documentation and code examples in this repo are covered by the Adobe terms of use.

### Major changes or new articles from community members

If you're part of the Adobe community and you want to create a new article or submit major changes, please use the Issues tab in the Git repository to submit an issue to start a conversation with the documentation team. Once you've agreed to a plan, you'll need to work with an employee to help bring that new content in through a combination of work in the public and private repositories.

<!--
If you submit a pull request with significant changes to documentation and code examples, you'll see a message in the pull request asking you to submit an online contribution license agreement (CLA). We need you to complete the online form before we can review your pull request.
-->

### Major changes from Adobe employees

If you are a technical writer, program manager, or developer from the product team for an Adobe Experience Cloud solution and it's your job to contribute to or author technical articles, you should use the private repository at `https://git.corp.adobe.com/AdobeDocs`. 

<!--Employees from other parts of the Adobe world should use the public repo for minor updates.-->

## Tools and setup

Community contributors can use the GitHub UI for basic editing or fork the repo to make major contributions.

See the [Adobe Docs Contributor Guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html) for details.

## How to use markdown to format your topic

All the articles in this repository use GitHub flavored markdown. If you are not familiar with markdown, see:

* [Markdown basics](https://help.github.com/articles/getting-started-with-writing-and-formatting-on-github/)
* [Printable markdown cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

## Templates

For some topics, we use data files and templates to generate published content. Use cases for this approach include:

* Publishing large sets of programmatically generated content
* Providing a single source of truth for customers across multiple systems that require machine-readable file formats, such as YAML, for integration (e.g., Site-Wide Analysis Tool)

Examples of templated content include, but are not limited to, the following:

* [CLI tools reference](https://experienceleague.adobe.com/docs/commerce-operations/reference/commerce-on-premises.html)
* [Product availability tables](https://experienceleague.adobe.com/docs/commerce-operations/release/product-availability.html)
* [System requirements tables](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/system-requirements.html)

### Generate templated content

In general, most writers only need to add a release version to the product availability and system requirements tables. Maintenance for all other templated content is either automated or managed by a dedicated team member. These instructions are intended for most writers.

>**NOTE:**
>
>* Generating templated content requires working on the command line in a terminal.
>* You must have Ruby installed to run the rendering script. See [_jekyll/.ruby-version](_jekyll/.ruby-version) for the required version.

See the following for a description of the file structure for templated content:

* `_jekyll`—Contains templated topics and required assets
* `_jekyll/_data`—Contains the machine-readable file formats used to render templates
* `_jekyll/templated`—Contains HTML-based template files that use the Liquid templating language
* `help/_includes/templated`—Contains the generated output for templated content in `.md` file format so it can be published in Experience League topics; the rendering script automatically writes generated output into this directory for you

To update templated content:

1. In your text editor, open a data file in the `/jekyll/_data` directory. For example:

   * [Product availability tables](https://experienceleague.adobe.com/docs/commerce-operations/release/product-availability.html): `/jekyll/_data/product-availability.yml`
   * [System requirements tables](https://experienceleague.adobe.com/docs/commerce-operations/installation-guide/system-requirements.html): `/jekyll/_data/system-requirements.yml`

1. Use the existing YAML structure to create entries.

   For example, to add a version of Adobe Commerce to the product availability tables, add the following to each entry in the `extensions` and `services` sections of the `/jekyll/_data/product-availability.yml` file (modify version numbers as needed):

   ```
   support:
      - core: 1.2.3
        version: 4.5.6
   ```

1. Navigate to the `_jekyll` directory.

   ```
   cd _jekyll
   ```

1. Generate templated content and write the output to the `help/_includes/templated` directory.

   ```
   rake render
   ```

   >**NOTE:** You must run the script from the `_jekyll` directory. If this is your first time to run the script, you must install Ruby dependencies first with the `bundle install` command.

1. Navigate back to the `root` directory.

   ```
   cd ..
   ```

1. Verify that the expected `help/_includes/templated` files were modified.

   ```
   git status
   ```

   You should see output similar to the following:

   ```
   modified:   _data/product-availability.yml
   modified:   help/_includes/templated/product-availability-extensions.md
   ```

1. Push your changes.

   ```
   git add .
   git commit -m "descriptive message of the intended commit"
   git push
   ```

See the Jekyll documentation for more details on [Data Files](https://jekyllrb.com/docs/datafiles), [Liquid filters](https://jekyllrb.com/docs/liquid/filters/), and other features.
