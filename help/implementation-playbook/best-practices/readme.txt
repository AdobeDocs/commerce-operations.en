# Best Practices: Content Creation Workflow
 
This document describes the user workflow to request changes or additions to the *[Best Practices](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/phases.html* content in the *Adobe Commerce Implementation Playbook*.

## Who can create a request?

Adobe accepts requests from both internal and external stakeholders including, but not limited to individuals in the following groups:

-  Adobe Partners
-  Adobe CTAG (Customer Technical Advisory Group), Customer Support, Customer Success, Engineering teams

## How do I create a request?

**Internal stakeholders** can submit requests by opening a Jira issue in the COMDOX project. **External stakeholders** can submit requests by opening a [GitHub issue](https://github.com/AdobeDocs/commerce-operations.en/issues/new/choose) in this repository.

You can submit the following types of requests:

-  Ideas for new content
-  Updates to content that is already published
-  Publish new content provided by the stakeholder or community

## What is the overall process?


**Create a Jira ticket or issue**—Internal stakeholders create a Jira ticket in the COMDOX project. External stakeholders submit a GitHub issue. Include complete details in the Jira or [GitHub issue](https://github.com/AdobeDocs/commerce-operations.en/issues/new/choose) to help the team understand the context and prioritize the request.

**The Adobe project team evaluates and prioritizes the request**—The team regularly monitors requests to determine priority and evaluate the requested changes for inclusion in the Implementation Playbook Best Practices. For example, the team might determine that instead of creating a new Best Practices topic, the requested content should be added to existing product documentation on Experience League or the Adobe Developer site.

If there is not enough information provided in a request, the team requests additional information from the requestor. If the requestor does not respond within 14 days, the team closes the request.

**Create or update content**–Content creation work is completed following the process documented in the [Adobe Experience League Contributor Guide](https://experienceleague.adobe.com/docs/contributor/contributor-guide/introduction.html). Depending on the request, work can include converting new content to markdown, creating a topic, or updating an existing topic.

**Content review, approval, and publication**–Content is reviewed and edited during topic creation or update using [GitHub pull requests](https://experienceleague.adobe.com/docs/contributor/contributor-guide/setup/git-fundamentals.html#pull-requests). All content must go through editorial review. Technical review is optional and depends on the content. If no technical review is necessary, the process continues with an editorial review only. This process can take several iterations until the content is approved.

After an article is approved, the pull request can be merged to the production branch. Merging should be done by the author. After a topic is merged, it can be published to production immediately using a manual process, or automatically the next time the publishing job runs. Publishing jobs typically run every two hours.

**New content notification**–Adobe will provide a *What's New* section on the [Best Practices overview](https://experienceleague.adobe.com/docs/commerce-operations/implementation-playbook/best-practices/phases.html) topic to keep users informed about recently published or updated topics. Adobe will also promote new Best Practices content using existing channels, such as marketing and internal communications.

## Backlog & Kanban Board

To avoid duplication, requests that have been created and prioritized will be visible in the Jira backlog of the COMDOX project and [GitHub Issues Project](https://github.com/orgs/AdobeDocs/projects/6/views/1). Internal stakeholders are encouraged to engage with the voting system in Jira to upvote requests they consider necessary or relevant. Voting also helps the Best Practices project team understand the type of content that stakeholders expect and value. Requests that are pending prioritization and review are shown in the backlog until they are moved to the active lanes in the Kanban board. 

The Kanban board can be accessed by internal users to view (and/or monitor) what content is being worked on, and the progress made. Only active requests will be displayed on this board.
