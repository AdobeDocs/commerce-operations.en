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

### Major changes from Adobe employees

If you are a technical writer, program manager, or developer from the product team for an Adobe Experience Cloud solution and it's your job to contribute to or author technical articles, you should use the private repository at `https://github.com/Adobe-Enterprise-Docs`.

## Tools and setup

Community contributors can use the GitHub UI for basic editing or fork the repo to make major contributions.

See the [Adobe Docs Contributor Guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html) for details.

## How to use Markdown to format your topic

All the articles in this repository use GitHub flavored Markdown. If you are not familiar with Markdown, see:

- [Markdown basics](https://help.github.com/articles/getting-started-with-writing-and-formatting-on-github/)
- [Printable markdown cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

## Pre-commit hooks for image optimization

This repository includes automated pre-commit hooks that optimize images before committing. **All contributors should enable these hooks** to ensure consistent image optimization and reduced repository size.

### Quick setup

After cloning the repository, run:

```bash
.githooks/setup-hooks.sh
```

### What the hooks do

- Automatically detect staged image files (PNG, JPG, JPEG, GIF, SVG)
- Run `image_optim` to compress and optimize images
- Re-stage optimized images automatically
- Ensure all committed images are properly optimized

### Benefits

- Reduced repository size
- Faster page loads for documentation
- Consistent image quality across all contributors
- No manual optimization required

For detailed setup instructions, troubleshooting, and configuration, see [`.githooks/README.md`](.githooks/README.md).

## Available rake tasks

This repository uses rake tasks provided by the `adobe-comdox-exl-rake-tasks` gem. To see all available tasks, run:

```bash
cd _jekyll
bundle exec rake --tasks
```


