---
title: Get your authentication keys
description: Follow these steps to retrieve credentials to access Adobe Commerce Composer packages on repo.magento.com.
exl-id: 7ec2a410-d81f-476a-bf6a-f3c61982a734
---
# Get your authentication keys

The `repo.magento.com` repository is where Adobe Commerce and third-party Composer packages are stored and requires authentication. Use your Commerce Marketplace account to generate a pair of 32-character *authentication keys* to access the repository.

For access entitlement to Adobe Commerce packages, you must use keys associated with a MAGEID that has been granted access to those packages. The MAGEID is typically the Primary Contact on the Adobe Commerce account and may not always be the Project Owner of the Adobe Commerce on cloud infrastructure project.

>[!TIP]
>
>If you encounter [errors](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/troubleshooting/deployment/magento-commerce-cloud-repo-could-not-be-accessed-403-forbidden-or-404-not-found-error-when-deploying.html) or don't see the [!UICONTROL Access Keys] section in the Marketplace tab, you may not have authorization to access the package, or the access entitlement has expired due to an outstanding invoice on your account.
>
>* If you are the Primary Contact person on the account, make sure that there is no outstanding invoice listed on the account.
>* If the keys provided by the Primary Contact are not working and there are no outstanding invoices on the account, the Primary Contact should contact [Adobe Commerce Support](https://experienceleague.adobe.com/docs/commerce-knowledge-base/kb/help-center-guide/magento-help-center-user-guide.html#submit-ticket) for assistance.

To create authentication keys:

1. Log in to the [Commerce Marketplace](https://commercemarketplace.adobe.com/). If you don't have an account, click **Register**.

1. Click your account name in the top right of the page and select **My Profile**.

1. Click **Access Keys** in the Marketplace tab.

   ![Get your secure access keys on Commerce Marketplace](../../assets/installation/cloud_access-key.png)

1. Click **Create a New Access Key**. Enter a specific name for the keys (for example, the name of the developer receiving the keys) and click **OK**.

1. New public and private keys are now associated with your account that you can click to copy. Save this information or keep the page open when working with your project. Use the **Public key** as your username and the **Private key** as your password.

## Manage your authentication keys

You can also disable or delete authentication keys. For example, you can disable or delete keys for security reasons after someone leaves your organization.

*  To disable keys: Click **Disable**. You can do this if you want to suspend use of your keys.
*  To enable a previously disabled key: Click **Enable**.
*  To delete keys: Click **Delete**.

### Manage SSH access token

To download Adobe Commerce releases using SSH, you must generate a Downloads Access Token. To generate a token:

1. Log in to your [magento.com account](https://account.magento.com/customer/account/login).
1. Click **My Account** at the top of the page.
1. Click **Account Settings** > **Downloads Access Token**.

   ![Access your keys](../../assets/installation/connect_keys1.png)

1. Click **Generate new token** to replace and disable an existing token.

You must use your MAGEID plus your token to download a release. Your MAGEID is displayed at the top left of your account page.

For example:

```bash
curl -k https://MAGEID:TOKEN@www.magentocommerce.com/products/downloads/info/help
```

Use your authentication keys to:

*  [Get the metapackage (integrators, packagers)](../composer.md)
*  [Clone the GitHub repository](https://developer.adobe.com/commerce/contributor/guides/install/clone-repository/) (contributing developers only)
*  [Upgrade and manage modules](../../upgrade/modules/upgrade.md)
