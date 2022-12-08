---
title: Remote storage for Commerce on cloud infrastructure
description: See guidance on how to set up remote storage for Adobe Commerce on cloud infrastructure.
---

# Configure remote storage for Commerce on Cloud infrastructure

## Enabling remote storage

With `ece-tools` 2002.1.5 and later, you can use the `REMOTE_STORAGE` variable to enable the remote storage module during deployment. It is recommended to set this to an environment-level variable so that each environment has its remote storage configuration. This ensures that files are not shared between production, staging, and integration environments. Setting the variables on an environment level also gives the flexibility of only using remote storage on select environments, such as excluding the integration environment for remote storage.

### Setting the `REMOTE_STORAGE` variable

The `REMOTE_STORAGE` variable takes a JSON string to configure remote storage. Below is an example JSON configuration.

```json
{
  "driver": "aws-s3",
  "prefix": "uat",
  "config": {
    "bucket": "aws-bucket-id",
    "region": "aws-region-id",
    "key": "optional-key",
    "secret": "optional-secret"
  }
}
```

To add the new environment variable for remote storage using the `magento-cloud` cli use the following command

```bash
magento-cloud variable:create --level environment --name REMOTE_STORAGE --json true --inheritable false --value '{"driver":"aws-s3","prefix":"uat","config":{"bucket":"aws-bucket-id","region":"eu-west-1","key":"optional-key","secret":"optional-secret"}}'
```

Running this command will create a new environment variable called `REMOTE_STORAGE` with the specified JSON configuration. Alternatively, you could use the web interface to add the variable to the appropriate environment.
During the deployment you should see the following line in your deployment logs `INFO: Remote storage driver set to: "aws-s3"`.

### Optional authentication

The `key` and `secret` are optional. During the creation of the variable, it is possible to set it to `sensitive` so that the value is not visible in the web interface hiding the `key` and `secret`. If you choose not to use the `key` and `secret` authentication method, you need to ensure the server is authorized to the S3 bucket by other means. In that case, the `key` and `secret` should be omitted from the JSON. 

## Syncing the remote-storage

After enabling the remote store module make sure to synchronize the current media files to the remote store location. 
To start the syncronisation run the command below on the enviroment where you enabled the remote storage.

```bash
bin/magento remote-storage:sync 
```

## Fastly configuration

If you choose to use the remote storage solution with an Adobe Commerce on cloud infrastructure project, use the [Amazon S3](https://docs.fastly.com/en/guides/amazon-s3) guidance in the _Fastly_ documentation to ensure that Fastly Image Optimization works with AWS S3.

Be prepared with your [Fastly credentials](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/cdn/setup-fastly/fastly-configuration.html#get-fastly-credentials). On Pro projects, use SSH to connect to your server and get the Fastly credentials from the `/mnt/shared/fastly_tokens.txt` file. Staging and Production environments have unique credentials. You must get the credentials for each environment.

Continue setting up remote storage for cloud projects with the following tasks:

1. Configure a [Fastly backend integration](https://github.com/fastly/fastly-magento2/blob/master/Documentation/Guides/Edge-Modules/EDGE-MODULE-OTHER-CMS-INTEGRATION.md).

1. Create VCL logic for [AWS S3 authentication](https://docs.fastly.com/en/guides/amazon-s3#using-an-amazon-s3-private-bucket).

1. Create VCL logic for [backend requests to the AWS S3 bucket](https://developer.fastly.com/reference/vcl/variables/backend-connection/req-backend/).
