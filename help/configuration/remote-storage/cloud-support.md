---
title: Remote storage for Commerce on cloud infrastructure
description: See guidance on how to set up remote storage for Adobe Commerce on cloud infrastructure.
---

# Configure remote storage for Commerce on Cloud infrastructure

If you have an Adobe Commerce on cloud infrastructure project and you choose to use the AWS S3 remote storage solution, use the [Amazon S3](https://docs.fastly.com/en/guides/amazon-s3) guidance in the _Fastly_ documentation to ensure that Fastly Image Optimization works with AWS S3.

Be prepared with your [Fastly credentials](https://devdocs.magento.com/cloud/cdn/configure-fastly.html#cloud-fastly-creds). On Pro projects, use SSH to connect to your server and get the Fastly credentials from the `/mnt/shared/fastly_tokens.txt` file. Staging and Production environments have unique credentials. You must get the credentials for each environment.

Continue setting up remote storage for cloud projects with the following tasks:

1. Configure a [Fastly backend integration](https://github.com/fastly/fastly-magento2/blob/master/Documentation/Guides/Edge-Modules/EDGE-MODULE-OTHER-CMS-INTEGRATION.md).

1. Create VCL logic for [AWS S3 authentication](https://docs.fastly.com/en/guides/amazon-s3#using-an-amazon-s3-private-bucket).

1. Create VCL logic for [backend requests to the AWS S3 bucket](https://developer.fastly.com/reference/vcl/variables/backend-connection/req-backend/).
