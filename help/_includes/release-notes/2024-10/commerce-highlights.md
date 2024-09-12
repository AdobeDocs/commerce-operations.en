# October 2024 Adobe Commerce 2.4.7-beta highlights

## Highlights

Lorem ipsum dolor site amet

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
                <li><strong>MySQL 8.4 LTS</strong> <em>_(supported until 2032)_</em>: The previous version (MySQL 8.0) reaches end-of-life in 2026, making this upgrade essential for maintaining system integrity and performance.</li>
                <li><strong>MariaDB 11.4 LTS</strong> <em>_(supported until 2029)_</em>: The previous version (MariaDB 10.6) reaches end-of-life in 2026, making this upgrade essential for maintaining system integrity and performance.</li>
              </ul>
            </td>
        </tr>
        <tr>
            <td><strong>PHP</strong></td>
            <td>One of the significant changes in PHP 8.2 involves the deprecation of passing null to non-nullable internal function parameters. This release addresses deprecated PHP 8.1 features in core platform components and ensures compatibility with PHP 8.2.</td>
        </tr>
        <tr>
            <td><strong>Components</strong></td>
            <td>All third-party <a href="/help/release/packages/adobe-commerce.md">components and dependencies</a> were updated to the latest stable versions to enhance platform stability and performance:
              <ul>
                <li>TinyMCE 7.x</li>
                <li>moment.js 2.30.1</li>
                <li>monolog/monolog 3.x</li>
                <li>wikimedia/less.php 5.x</li>
                <li>jquery/validate 1.20.x</li>
              </ul>
            </td>
        </tr>
        <tr>
            <td><strong>Search</strong></td>
            <td>Adobe Commerce is now optimized for OpenSearch 2.x and is no longer compatible with Elasticsearch. All Elasticsearch 7 and 8 modules and classes have been marked deprecated in the codebase. Adobe strongly recommends transitioning to OpenSearch for both on-premises and cloud infrastructure deployments to ensure continued support and compatibility.
              <ul>
                <li>The Elasticsearch 7 and Elasticsearch 8 options are now labeled as "(Deprecated)" in the Admin configuration.</li>
                <li>When a user selects Elasticsearch as the search engine in the Admin configuration, Comemrce displays a notification stating, <em>"This search engine option is no longer supported by Adobe. It is recommended to use OpenSearch as a search engine instead."</em></li>
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
