---
title: Project Implementation Methodology
description: Get familiar with how Adobe Commerce software delivery works.
exl-id: 579cd083-8b12-49ff-bc8a-8db1ca588d74
---
# Project implementation methodology

Now that you have a better idea of the tools that are involved, we will now break down our delivery and testing processes.

## Continuous Integration (CI)

Continuous integration jobs automatically perform the following actions:

- Build the source code to check compilation errors.
- Execute tests when a pull request is created/updated. At present, PHP unit tests are executed.

The job posts its execution status to the pull request. Developers can view the details of the job execution so that they can fix or improve existing code.

## Continuous Delivery (CD)

Continuous Delivery (CD) immediately deploys source code to the server after all tests pass successfully. Developers can check their functions quickly and then assign the task to the QA team for review.

As the build executes on the build system, it not only minimizes the deployment downtime, but also reduces the load on the server. As a result, the QA activities, which are happening on the server, are impacted less.

![Continuous delivery infographic](../../assets/playbooks/cicd.svg)

The CI/CD process in the previous diagram can be briefly described as follows:

- Bitbucket hosts the Git repository.
- Docker images are replicated from production technology stack configurations.
- Docker containers are used for all development and testing environments. Other environments could leverage these configurations if needed.
- Developers perform a checkout of the relevant code branch for every new task/ticket.
- For all commit branches, automatically:
  - Execute a standard code scan.
  - Execute a code compiling test.
  - Execute a static code scan (for example, SonarQube).
- All scan commits that pass are merged with the target branch.
- A new released tag is pushed to AWS S3 for the deployment readiness package.
- New deployment is triggered by the deployment engineering team.
  - A deployment job deploys the new package to the target environment.
  - Database structure updates require a pause to take on new requests from the customer.
- The deployment process ends with an email/Slack/Teams notification, sent automatically by the server to the deployment engineering team.
