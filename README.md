# Adobe Commerce technical documentation

We welcome contributions from our community as well as from Adobe employees from outside the documentation teams.

## Adobe Open Source Code of Conduct

This project has adopted the [Adobe Open Source Code of Conduct](code-of-conduct.md) or the [.NET Foundation Code of Conduct](https://dotnetfoundation.org/code-of-conduct). For more information, see the [Contributing](contributing.md) article.

## About your contributions to Adobe content

See the [Adobe Docs Contributor Guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html). 

How you contribute depends on who you are and the sort of changes you'd like to contribute:

### Minor changes

If you are contributing minor updates out of the goodness of your heart, visit the article and click the **Edit** link in the article that goes to the GitHub source for the article. Then, just use the GitHub UI to make your updates. See the general [Adobe Docs contributor guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html) for more information.

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

The `_jekyll` directory contains templated topics and required assets.
The templates that use the Liquid templating language reside in the `_jekyll/templated` directory as HTML files.
The `_jekyll/_data` directory contains files with the data that is used to render the templates.

To render all templates:

1. Navigate to the `_jekyll` directory.

   cd _jekyll

1. Run the rendering script.

```
_scripts/render
```

> **NOTE:** You must run the script from the `_jekyll` directory.
> **NOTE:** You must have Ruby installed to run this script.

The script runs rendering and writes rendered templates to the `help/_includes/templated` directory.

See the Jekyll documentation for more details on [Data Files](https://jekyllrb.com/docs/datafiles), [Liquid filters](https://jekyllrb.com/docs/liquid/filters/), and other features.
