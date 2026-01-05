# Contributing

Thanks for choosing to contribute!

The following are a set of guidelines to follow when contributing to this project.

## Code of conduct

This project adheres to the Adobe [code of conduct](code-of-conduct.md). By participating,
you are expected to uphold this code. Please report unacceptable behavior to
[Grp-opensourceoffice@adobe.com](mailto:Grp-opensourceoffice@adobe.com).

## Contributor guide documentation

See the [Contributor Guide](https://experienceleague.adobe.com/en/docs/contributor/contributor-guide/introduction).

## Have a question?

Start by filing an issue. The existing committers on this project work to reach
consensus around project direction and issue solutions within issue threads
(when appropriate).

## Contributor license agreement

All third-party contributions to this project must be accompanied by a signed contributor
license agreement. This gives Adobe permission to redistribute your contributions
as part of the project. [Sign our CLA](https://opensource.adobe.com/cla.html). You
only need to submit an Adobe CLA one time, so if you have submitted one previously,
you are good to go!

## Code reviews

All submissions should come in the form of pull requests and need to be reviewed
by project committers. Read [GitHub's pull request documentation](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
for more information on sending pull requests.

Lastly, please follow the [pull request template](PULL_REQUEST_TEMPLATE.md) when
submitting a pull request!


## From contributor to committer

We love contributions from our community! If you'd like to go a step beyond contributor
and become a committer with full write access and a say in the project, you must
be invited to the project. The existing committers employ an internal nomination
process that must reach lazy consensus (silence is approval) before invitations
are issued. If you feel you are qualified and want to get more deeply involved,
feel free to reach out to existing committers to have a conversation about that.

## Security issues

Security issues shouldn't be reported on this issue tracker. Instead, [file an issue to our security experts](https://helpx.adobe.com/security/alertus.html).

## What's new highlights

If your changes introduce new topics, significant updates, or corrections that need to be highlighted, you can add a short description to the [What's New section](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/home#whats-new) right from your pull request's body.

To add a What's New highlight:

1. Include the `whatsnew` tag with appropriate description in your pull request body at the end. The description should provide context about the change and a link to the target topic or topics. Use the following format (code block quotes are for representation only, do not include them in your pull request body):

   ```text
   whatsnew
   Short description of the change in the [target topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/target-topic.html).
   ```

   or, if there are multiple topics:

   ```text
   whatsnew
   Short description of the changes in the [first target topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/target-topic.html), [second target topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/second-target-topic.html), and [third target topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/third-target-topic.html).
   ```

   you can also use lists for multiple highlights:

   ```text
   whatsnew
   - Short description of the first change in the [first topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/first-topic.html).
   - Short description of the second change in the [second topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/second-topic.html).
   ```

   ```text
   whatsnew
   The following changes were made to the documentation:
   - Short description of the first change in the [first topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/first-topic.html).
   - Short description of the second change in the [second topic](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/second-topic.html).
   ```

1. Add supported labels that indicate the type of change. Supported labels include labels for each type of change, such as:

   - `new-topic` - for new topics
   - `major-update` - for major updates that can include significant changes in content, structure, or functionality
   - `technical` - for technical changes that are not considered major updates but still require attention

   and, optionally, labels for scope of change, such as:

   - `qpt` - for changes related to the Quality Patch Tool

**Important:**

1. The `whatsnew` part must start from the `whatsnew` tag and be at the very end of the pull request body.
1. The descriptions of the changes must include working links. Please make sure that the links are correct and lead to the intended topics. If the topic is new, verify that the links are working after merging the pull request and publishing the new topic. It is okay to fix the links after the pull request is merged.

For examples, search in closed pull requests in the repository to see how existing highlights are formatted, and compare them with the [What's New section](https://experienceleague.adobe.com/en/docs/commerce-operations/operational-guides/home#whats-new) to see how they appear in the documentation.
