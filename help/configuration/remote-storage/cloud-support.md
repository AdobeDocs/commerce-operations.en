---
title: Remote storage for Commerce on cloud infrastructure
description: See guidance on how to set up remote storage for Adobe Commerce on cloud infrastructure.
feature: Configuration, Cloud, Storage
exl-id: da352466-13f2-42e4-a589-3b0a89728467
---
# Configure remote storage for Commerce on Cloud infrastructure

Beginning with the `ece-tools` package 2002.1.5, you can use an environment variable to enable the Remote Storage module; however, the Remote Storage module has _limited_ support on Adobe Commerce on cloud infrastructure. Adobe cannot fully troubleshoot the third-party storage adapter service.

## Environment variable

The `REMOTE_STORAGE` variable is used during the [deploy phase](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/develop/deploy/process.html) of a cloud infrastructure project.

### `REMOTE_STORAGE`

- **Default**—_Not set_
- **Version**—Commerce 2.4.2 and later

Configure a _storage adapter_ to store media files in a persistent, remote storage container using a storage service, such as AWS S3. Enable the Remote Storage module to improve performance on Cloud projects with complex, multi-server configurations that must share resources. The following is an example of remote storage configuration using the `.magento.env.yaml` file:

```yaml
stage:
  deploy:
    REMOTE_STORAGE:
      driver: aws-s3 # Required
      prefix: cloud # Optional
      config:
        bucket: my-bucket # Required
        region: my-region # Required
        key: my-key # Optional
        secret: my-secret-key # Optional
```

### Set variable with Cloud CLI

Set the `REMOTE_STORAGE` variable as an [environmenet-level variable](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/variable-levels.html) so that files are not shared between Production, Staging, and Integration environments. Setting the variables at the environment level gives the flexibility of only using remote storage on select environments, such as excluding the integration environment use of remote storage.

**To add the remote storage variable using the Cloud CLI**:

```bash
magento-cloud variable:create --level environment --name REMOTE_STORAGE --json true --inheritable false --value '{"driver":"aws-s3","prefix":"uat","config":{"bucket":"aws-bucket-id","region":"eu-west-1","key":"optional-key","secret":"optional-secret"}}'
```

This creates a `REMOTE_STORAGE` variable with the specified JSON configuration. The `REMOTE_STORAGE` variable takes a JSON string to configure remote storage. The following is an example JSON configuration:

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

After you create the configuration and deploy, the deployment logs should include information about the remote storage configuration, for example `INFO: Remote storage driver set to: "aws-s3"`

### Set variable with Project Web Interface

Alternatively, you can use the Project Web Interface to add the variable to the appropriate environment.

**To add the remote storage variable using the Project Web Interface**:

1. In the _Project Web Interface_, select the environment from the left.

1. Click the **Configure environment** icon.

1. In the _Configure Environment_ view, click the **Variables** tab.

1. Click **Add Variable**.

1. In the _Name_ field, enter `REMOTE_STORAGE`

1. In the _Value_ field, add the JSON configuration.

1. Select **JSON value** and **Sensitive**; deselect **Inheritable by child environments**.

1. Click **Add Variable**.

### Use optional authentication

The `key` and `secret` are optional. When you create the variable, you can hide the `key` and `secret` by selecting the `sensitive` option. With this setting, the values are not visible in the web interface. See [Variable visibility](https://experienceleague.adobe.com/docs/commerce-cloud-service/user-guide/configure/env/variable-levels.html#visibility) in the _Commerce on Cloud Infrastructure guide_.

If you want to use an a different authentication method, omit the `key` and `secret` from the JSON configuration,. Configure the alternative authentication method, and verify that the server is authorized to the S3 bucket.

### Sync the remote storage

After enabling the Remote Storage module, synchronize the current media files to the remote store location.

**To start the synchronization**:

1. Use SSH to log in to the remote environment with remote storage configured.

1. Start the sync.

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
