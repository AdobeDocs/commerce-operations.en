---
title: Remote storage for Cloud
description: Read about guidance on how to set up remote storage for Commerce on cloud infrastructure.
---

# Configure remote storage for Commerce on Cloud infrastructure

If you have a Commerce on cloud infrastructure project and you choose to use AWS S3 remote storage solution, there are certain steps to follow to so that Fastly Image Optimization works with AWS S3. Adobe recommends following the [Amazon S3](https://docs.fastly.com/en/guides/amazon-s3) guidance in the _Fastly_ documentation.

Be prepared with your [Fastly credentials](https://devdocs.magento.com/cloud/cdn/configure-fastly.html#cloud-fastly-creds). On Pro projects, use SSH to connect to your server and get the Fastly credentials from the `/mnt/shared/fastly_tokens.txt` file. Staging and Production environments have unique credentials. You must get the credentials for each environment.

To complete the setup, continue with the following steps:

1. Configure a [Fastly backend integration](https://github.com/fastly/fastly-magento2/blob/master/Documentation/Guides/Edge-Modules/EDGE-MODULE-OTHER-CMS-INTEGRATION.md)

1. Create VCL logic for [AWS S3 authentication](https://docs.fastly.com/en/guides/amazon-s3#using-an-amazon-s3-private-bucket)

1. Create VCL logic for [backend requests to the AWS S3 bucket](https://developer.fastly.com/reference/vcl/variables/backend-connection/req-backend/)
