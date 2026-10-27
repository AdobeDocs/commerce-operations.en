---
title: AWS OpenSearch
description: Follow these steps to configure the AWS OpenSearch web service for on-premises installations of Adobe Commerce.
feature: Install, Search
exl-id: 39ca7fd0-e21f-4f14-bda6-ff00a61a1a4d
product_v2:
  - id: eadea719-cf89-469b-a6fd-a236a7138047
    internal-label: Commerce
feature_v2:
  - id: 6388cf7b-8a81-5248-a1e4-7bb57bbe250f
    internal-label: Install
  - id: dac87252-6066-4d6e-a9d2-f6d84c323de7
    internal-label: Configuration
subfeature_v2:
  - id: a1d22079-48b9-5e69-9ee6-eb236068ef34
    internal-label: Search
role_v2:
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
    internal-label: Admin
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
    internal-label: Developer
level_v2:
  - id: d378ca77-2da1-4f39-ad92-1917fe974a38
    internal-label: Experienced
---
# AWS OpenSearch

Adobe Commerce 2.4.5 supports using Amazon OpenSearch Service clusters. This service is the successor to Amazon Elasticsearch Service. This topic describes how to configure Commerce to use AWS OpenSearch, and how to migrate data from a local Elasticsearch or OpenSearch instance to an AWS OpenSearch cluster.

## Create an AWS OpenSearch service domain

You must first establish an OpenSearch instance in AWS.
Read [Creating and managing Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html) for detailed instructions.

## Get data to AWS OpenSearch

Once everything is prepared on AWS, it is time to populate it with data.

For smaller installations, we recommended that you create indices directly on the AWS instance for the following reasons:

*  Recreating the indices is a quick operation.
*  There may be version incompatibilities between the old instance and the AWS instance, and these can be avoided by building directly on the AWS instance.

Larger installations may want to consider migrating their data indices from the existing instance to AWS. While this may reduce downtime, there is still a small risk of incompatibility issues due to differing versions between the old ElasticSearch server and AWS.

There is no need to migrate indexes, as these can be easily recreated on the AWS instance.
However, when migrating data indices, ensure that the versions of ElasticSearch/OpenSearch are compatible.

See Amazon's [Migrating to Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/migration.html) instructions for more information.

### Configure Commerce for OpenSearch

Steps for configuring OpenSearch are covered in the [Advanced Install](../../advanced.md) topic.

To test that the new configuration is working, test the OpenSearch endpoint directly:

1. Create a product in the Admin (For example: sku="testproduct1").
1. Reindex through the Admin.
1. Query the OpenSearch endpoint (found in AWS UI):

   To get indices, append: `/_cat/indices/*?v=true` to the URL:
  `<AWS OS endpoint>/_cat/indices/*?v=true`

  To get products from index, append: `/magento2docker_product_1/_search?q=*` to the URL:
  `<AWS OS endpoint>/magento2docker_product_1/_search?q=testproduct1`

## Additional resources

For additional information, see the [OpenSearch AWS documentation](https://docs.aws.amazon.com/opensearch-service/index.html).
