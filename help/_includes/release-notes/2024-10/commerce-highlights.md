# October 2024 Adobe Commerce 2.4.7-beta highlights

## Highlights

This release of Adobe Commerce includes several critical security fixes and platform improvements.

### Security

This release includes the same security fixes and platform security improvements that are included in Adobe Commerce 2.4.7-p3, 2.4.6-p8, 2.4.5-p10, and 2.4.4-p11. See [Adobe Security Bulletin](https://helpx.adobe.com/security/products/magento/apsb24-18.html) for the latest discussion of these fixed issues.

### Platform

The following platform upgrades for this release ensure that Adobe Commerce remains a robust and reliable platform, ready to meet the demands of modern commerce environments:

<table style="table-layout-auto">
    <tbody>
        <tr>
            <td><strong>Database</strong></td>
            <td>In alignment with our <a href="/help/release/lifecycle-policy.md">support lifecycle policy</a>, Adobe Commerce is now compatible with the following long-term support (LTS) versions of the following database technologies:
              <ul>
                <li><strong>MariaDB 11.4 LTS</strong> <em>_(supported until 2029)_</em>: The previous version (MariaDB 10.6) reaches end-of-life in 2026, making this upgrade essential for maintaining system integrity and performance. MariaDB 10.6 is still supported, but Adobe recommends upgrading to MariaDB 11.4 when upgrading to Adobe Commerce 2.4.8.</li>
                <li><strong>MySQL 8.4 LTS</strong> <em>_(supported until 2032)_</em>: The previous version (MySQL 8.0) reaches end-of-life in 2026, making this upgrade essential for maintaining system integrity and performance. MySQL 8.0 is still supported, but Adobe recommends upgrading to MySQL 8.4 when upgrading to Adobe Commerce 2.4.8</li>
              </ul>
            </td>
        </tr>
        <tr>
            <td><strong>PHP</strong></td>
            <td>This release includes the following PHP enhancements:
            <ul>
              <li><strong>PHP 8.1</strong>: This release removes PHP 8.1 compatibilty for Adobe Commerce 2.4.8. You must upgrade to PHP 8.2 before upgrading to Adobe Commerce 2.4.8.</li>
              <li><strong>PHP 8.2</strong>: One of the significant changes in PHP 8.2 involves the deprecation of passing null to non-nullable internal function parameters. This release addresses deprecated PHP 8.1 features in core platform components and ensures compatibility with PHP 8.2.</li>
              <li><strong>PHPUnit 10</strong>: This release addresses several critical issues, enhances compatibility, and ensures that the Adobe Commerce testing framework is aligned with the latest industry standards. Adobe recommends that all Commerce Marketplace vendors and customers with customizations verify that their unit and integration tests run on PHPUnit 10 instead of 9.</li>
            </ul>
            </td>
        </tr>
        <tr>
            <td><strong>Components</strong></td>
            <td>The following third-party <a href="/help/release/packages/adobe-commerce.md">components and dependencies</a> were updated to the latest stable versions to enhance platform stability and performance:
              <ul>
                <li>jquery/validate 1.20.x</li>
                <li>moment.js 2.30.1</li>
                <li>monolog/monolog 3.x</li>
                <li>monolog/Require.js 2.3.7</li>
                <li>TinyMCE 7.x</li>
                <li>wikimedia/less.php 5.x</li>
              </ul>
            </td>
        </tr>
        <tr>
            <td><strong>Search</strong></td>
            <td>Adobe Commerce is now optimized for OpenSearch 2.x and is no longer compatible with Elasticsearch. All Elasticsearch 7 and 8 modules and classes have been marked as deprecated in the codebase. Adobe strongly recommends transitioning to OpenSearch for both on-premises and cloud infrastructure deployments to ensure continued support and compatibility. See <a href="/help/upgrade/prepare/opensearch-migration.md">Migrating to OpenSearch</a>.
              <ul>
                <li>The Elasticsearch 7 and Elasticsearch 8 options are now labeled as "(Deprecated)" in the Admin configuration.</li>
                <li>When a user selects Elasticsearch as the search engine in the Admin configuration, Commerce displays a notification stating, <em>"This search engine option is no longer supported by Adobe. It is recommended to use OpenSearch as a search engine instead."</em></li>
              </ul>
            </td>
        </tr>
    </tbody>
</table>

### Performance

This release includes the following performance enhancements:

<table style="table-layout-auto">
    <tbody>
        <tr>
            <td><strong>Indexers</strong></td>
            <td>The default <a href="/help/implementation-playbook/best-practices/maintenance/indexer-configuration.md#set-indexers-to-update-on-schedule">indexer mode</a> for all indexers is now [!UICONTROL **Update by Schedule**] when installing a new version of Adobe Commerce or upgrading from a previous version. The new default ensures that indexers are in the recommended configuration, improving system performance and reducing potential issues.</td>
        </tr>
    </tbody>
</table>

### Quality

This release includes the following quality enhancements:

<table style="table-layout-auto">
    <tbody>
        <tr>
           <td><strong>Inventory</strong></td>
           <td>The system now operates without the previously hidden dependency from Catalog introduced by InventoryIndexer, ensuring that the product creation, display mode switch, stock status change, and other related functionalities work as expected. Previously, this hidden dependency caused inconsistencies as different entities were synchronized and the indexer used different entities.</td>
        </tr>
        <tr>
            <td><strong>Orders</strong></td>
            <td>In order to minimize confusion, the [!UICONTROL **Submit Comment**] button label changed to [!UICONTROL **Update**] in the <a href="https://experienceleague.adobe.com/en/docs/commerce-admin/stores-sales/order-management/orders/order-processing#notes-for-this-order">order detail</a> page.</td>
        </tr>
    </tbody>
</table>

### GraphQL

This release includes the following GraphQL enhancements:

<table style="table-layout-auto">
    <tbody>
        <tr>
           <td><strong>General enhancements</strong></td>
           <td>This release includes the following general GraphQL API enhancements:
             <ul>
              <li><!-- LYNX-524 --><strong>CustomerOrder type</strong>: Enhanced the CustomerOrder type to include detailed customer information. Improved data sourcing from the sales order database for comprehensive customer insights.</li>
              <li><!-- LYNX-523: --><strong>availableOrderActions</strong>: Extended CustomerOrder interface to include availableOrderActions for better order management. Backend logic now supports mapping order statuses to available actions.</li>
              <li><!--LYNX-521--><strong>cancelOrder mutation</strong>:Implemented a new cancelOrder mutation in GraphQL. Enhanced order management capabilities by allowing cancellation through GraphQL.</li>
              <li><!--LYNX-519--><strong>Error codes for order cancellation</strong>: Added detailed error codes to the CancelOrderOutput type. Improved error handling and user feedback for order cancellation processes.</li>
              <li><!--LYNX-515--><strong>Create return for guest</strong>: Enabled guest users to create returns for orders, enhancing return management flexibility. Adjusted the requestReturn mutation to support guest order returns.</li>
              <li><!--LYNX-505--><strong>Guest cancel order</strong>: Facilitated order cancellation for guest users through a new GraphQL mutation. Improved user experience by allowing seamless order management for guest users.</li>
              <li><!--LYNX-522--><strong>recaptchaV3Config Query</strong>: Introduced a theme field to the recaptchaV3Config query for enhanced customization.Ensures consistent theme application across different storefront components.</li>
              <li><!--LYNX-458--><strong>guestOrder and guestOrderByToken uueries</strong>: Updated queries to include custom address attributes, ensuring complete address information for new accounts. Facilitates seamless account creation using guest order data.</li>
              <li><!--LYNX-450--><strong>CustomerOrder type</strong>: Added is_virtual field to CustomerOrder, supporting virtual product identification. Enhances order processing by distinguishing virtual from physical products.</li>
              <li><!--LYNX-449--><strong>guestOrder and guestOrderByToken queries</strong>: Enhanced guestOrder queries to include additional cart summary fields. Provides users with comprehensive order summaries.</li>
              <li><!--LYNX-448--><strong>Merge quest orders</strong>: Improved API functionality to merge guest orders with customer accounts based on email matching. Streamlines order management for returning customers.</li>
              <li><!--LYNX-391--><strong>generateCustomerToken mutation</strong>: Refined error handling in the generateCustomerToken mutation to provide specific messages for unconfirmed emails. Supports better user guidance and error resolution.</li>
              <li><!--LYNX-390--><strong>confirmEmail mutation</strong>: Introduced a new <a href="https://developer.adobe.com/commerce/webapi/graphql/schema/customer/mutations/confirm-email/">confirmEmail</a> mutation for resending email confirmations, enhancing user account management. Supports better user engagement and account activation processes.</li>
             </ul>
           </td>
        </tr>
        <tr>
           <td><strong>Error handling and notifications</strong></td>
           <td>This release includes the following error handling and notification enhancements:
             <ul>
               <li><!--LYNX-547--><strong>Quantity</strong>: Implemented a fallback mechanism to ensure frontend notifications remain consistent even if backend messages change. Refined messaging for insufficient and unavailable quantity notifications.</li>
               <li><!--LYNX-542--><strong>updateCartItems mutation</strong>: Updated the updateCartItems mutation to return success responses with error details instead of exceptions. Enhanced error mapping to improve the clarity of user notifications.</li>
               <li><!--LYNX-541--><strong>InsufficientStockError type</strong>: Added a new InsufficientStockError type to handle cases where stock levels are insufficient. Adjusted schema to support new error types, enhancing error reporting capabilities.</li>
               <li><!--LYNX-476--><strong>Inventory amount</strong>: Enhanced error messaging to include available inventory amounts. Provides users with clearer insights into stock levels during order updates.</li>
               <li><!--LYNX-409--><strong>updateCartItems mutation</strong>: Optimized database queries for the updateCartItems mutation. Reduced latency and improved performance for cart updates.</li>
               <li><!--LYNX-377--><strong>Requested quantity</strong>: Provided merchants with configuration options for stock availability messaging. Enhances user communication and stock management capabilities.</li>
             </ul>
           </td>
        </tr>
        <tr>
           <td><strong>Product and order management</strong></td>
           <td>This release includes the following user experience customization enhancements:
             <ul>
               <li><!--LYNX-540--><strong>ProductInterface</strong>: Introduced a quantity field in the ProductInterface to provide stock level details. Configurable to show available stock or null based on Admin settings.</li>
               <li><!--LYNX-460--><strong>Bundle products</strong>: Corrected pricing display for bundle products, ensuring accurate price and currency information. Enhanced user trust by providing consistent pricing data.</li>
               <li><!--LYNX-451--><strong>CartPrices</strong>: Added grand_total_excluding_tax to CartPrices, providing clear tax-inclusive pricing. Supports better financial transparency for users.</li>
               <li><!--LYNX-470--><strong>Order history filter</strong>: Introduced a date-based filter for order history, allowing users to filter orders by creation date. Enhanced user experience by providing more granular order history views.</li>
               <li><!--LYNX-468--><strong>OrderAddress</strong>: Extended OrderAddress to include custom attributes, enhancing order detail visibility. Supports additional information display on order confirmation pages.</li>
             </ul>
           </td>
        </tr>
        <tr>
           <td><strong>User experience and customization</strong></td>
           <td>This release includes the following user experience customization enhancements:
             <ul>
              <li><!--LYNX-401--><strong>StoreConfig</strong>: Provided additional shopping cart configuration options in StoreConfig. Enhances customization and flexibility for storefronts.</li>
              <li><!--LYNX-397--><strong>Email templates</strong>: Enhanced email templates to include email parameters in URLs for improved security. Supports better user authentication and account management.</li>
              <li><!--LYNX-387--><strong>CartItemPrices</strong>: Added fields for original item and row totals in CartItemPrices. Supports accurate pricing display and discount calculations.</li>
              </ul>
           </td>
        </tr>
        <tr>
           <td><strong>Testing</strong></td>
           <td><!--LYNX-370--><strong>MFTF tests</strong>: Developed MFTF tests to verify multiple coupon management in the Admin to ensure robust functionality and reliable discount application.</td>
        </tr>
    </tbody>
</table>
