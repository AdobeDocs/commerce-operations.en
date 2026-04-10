---
title: Configure AWS S3 bucket for remote storage
description: Configure your Commerce project to use the AWS S3 storage service for remote storage.
feature: Configuration, Storage
exl-id: e8aeade8-2ec4-4844-bd6c-ab9489d10436
---
# Configure AWS S3 bucket for remote storage

The [Amazon Simple Storage Service (Amazon S3)](https://aws.amazon.com/s3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. The AWS S3 service uses buckets, or containers, for data storage. This configuration requires you to create a _private_ bucket. For Adobe Commerce on cloud infrastructure, see [Configure remote storage for Commerce on Cloud infrastructure](cloud-support.md).

>[!WARNING]
>
>Adobe highly discourages the use of public buckets because it poses a serious security risk.
>
>When using a customer-provided S3 bucket for asset or media storage, Adobe is not responsible for, and does not provide support for, any issues, data loss, or outages related to the configuration, management, or operation of the S3 bucket. All troubleshooting and maintenance of the S3 bucket is the sole responsibility of the customer.

**To enable remote storage with the AWS S3 adapter**:

1. Log in to your Amazon S3 dashboard and create a _private_ bucket.

1. Set up [AWS IAM](https://aws.amazon.com/iam/) roles. Alternatively, generate access and secret keys.

1. Disable the default database storage.

   ```bash
   bin/magento config:set system/media_storage_configuration/media_database 0
   ```

1. Configure Commerce to use the private bucket. See [Remote storage options](remote-storage.md#remote-storage-options) for a full list of parameters.

   ```bash
   bin/magento setup:config:set --remote-storage-driver="aws-s3" --remote-storage-bucket="<bucket-name>" --remote-storage-region="<region-name>" --remote-storage-prefix="<optional-prefix>" --remote-storage-key=<optional-access-key> --remote-storage-secret=<optional-secret-key> -n
   ```

1. Synchronize media files with remote storage.

   ```bash
   bin/magento remote-storage:sync
   ```

## Configure Nginx

>[!NOTE]
>
>This approach is not applicable to Adobe Commerce on cloud infrastructure projects. Nginx cannot be configured on Adobe Commerce on cloud infrastructure. See the [cloud-specific documentation](cloud-support.md) for more information.

Nginx requires additional configuration to perform Authentication with the `proxy_pass` directive. Add the following proxy information to the `nginx.conf` file:

>nginx.conf

```conf
location ~* \.(ico|jpg|jpeg|png|gif|svg|js|css|swf|eot|ttf|otf|woff|woff2)$ {
    # Proxying to AWS S3 storage.
    resolver 8.8.8.8;
    set $bucket "<s3-bucket-name>";
    proxy_pass https://s3.amazonaws.com/$bucket$uri;
    proxy_pass_request_body off;
    proxy_pass_request_headers off;
    proxy_intercept_errors on;
    proxy_hide_header "x-amz-id-2";
    proxy_hide_header "x-amz-request-id";
    proxy_hide_header "x-amz-storage-class";
    proxy_hide_header "Set-Cookie";
    proxy_ignore_headers "Set-Cookie";
}
```

### Authentication

If you use access and secret keys instead of [AWS IAM](https://aws.amazon.com/iam/) roles, you must include the [`ngx_aws_auth` Nginx module](https://github.com/anomalizer/ngx_aws_auth).

### Permissions

The S3 integration relies on the ability to generate and store cached images on the local file system. Therefore, folder permissions for `pub/media` and similar directories are the same for S3 as they are when using local storage.

### File Operations

It is highly recommended that you use [!DNL Commerce] file adapter methods in your coding or extension development, regardless of the file storage type. When using S3 for storage, do not use native PHP file I/O operations, such as `copy`, `rename`, or `file_put_contents`, because S3 files are not located within the file system. See [DriverInterface.php](https://github.com/magento/magento2/blob/2.4-develop/lib/internal/Magento/Framework/Filesystem/DriverInterface.php#L18) for code examples.

