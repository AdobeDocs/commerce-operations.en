# What's new template

## What's new

This page contains the changes made in the last 60 days. We exclude all minor updates, such as copy editing, from this list.

### August 26, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4840">ACP2E-4840: GraphQL products query returns null quantity for in-stock products on custom inventory stocks</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/edfc38af34925749c5acb36d2c0bcfc5d16a577a">commit</a></td>
    </tr>
  </tbody>
</table>

### August 19, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Updated the Commerce caching documentation with clearer on-premises vs. Cloud guidance and new migration guidance for moving to Valkey with Symfony L2 cache:<br />- Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cache/caching-overview">Caching overview and configuration options</a>.<br />- Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cache/cache-types">Configure cache frontends and types</a>.<br />- Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cache/cache-options">Cache backend options and storage reference</a>.<br />- Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/configuration-guide/cache/level-two-cache">L2 cache configuration for performance optimization</a> with guidance for migrating from <code>RemoteSynchronizedCache</code> to Symfony L2 cache.<br />- Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/implementation-playbook/best-practices/planning/redis-valkey-service-configuration">Best Practices for Valkey and Redis Service Configuration</a> with Cloud-specific migration steps to Valkey with Symfony L2 cache.</p>
</td>
      <td>
        Major update
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/3a840b544de95a4bb17ef49d0325b16d461aecaa">commit</a></td>
    </tr>
  </tbody>
</table>

### August 14, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Updated steps for how customers can check the version of their service dependencies in Cloud UI, and updated the link to the guide on how customers can generate an upgrade compatibility report for their store, in <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/planning/security-enforcement-policy#action-1-verify-and-upgrade-third-party-software-dependencies">Verify and upgrade third-party software dependencies</a>.</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/54ac98c35e1f161f390587601484db4e3294b6af">commit</a></td>
    </tr>
  </tbody>
</table>

### August 13, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4194">ACP2E-4194: GraphQL requests with unknown filter names cause PHP exception logs</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/d4202395c5b7bb5e8c4a95d8fb353ec0fc523fcb">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4695">ACP2E-4695: Catalog rule indexer out-of-memory failures caused by excessive memory usage</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/dc891435d573c4c333e58e25b2dbe003ffa08f27">commit</a></td>
    </tr>
    <tr>
      <td><p>Fixed typos in EOS dates for Adobe Commerce 2.4.5 and 2.4.6 versions.</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/8de65d309dcd4158627910ce5c0b87966db5c948">commit</a></td>
    </tr>
  </tbody>
</table>

### August 12, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Removed PHP 8.4 as a supported PHP version in the <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/notes/adobe-commerce/2-4-9#php-and-composer">2.4.9 release notes</a>, because it is not recommended for production use and only present for upgrade compatibility.</p>
</td>
      <td>
        Release notes, technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/603bb70012a2f92ceeaad644d5252c4677a1a47c">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4894">ACP2E-4894: New orders appear in the Admin Orders grid with a delay when asynchronous indexing is enabled</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/ad40d94c1618f7e423fd6a773185b8fba48c2c72">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4698">ACP2E-4698: Page Builder Text inline editing saves absolute media URLs instead of the portable directive</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/68e5e99ac0717b0e358acd6acf9934044a917a82">commit</a></td>
    </tr>
    <tr>
      <td><p>Corrected and completed end-of-support, extended-support, and additional security fixes provisioning dates for several Adobe Commerce release lines on the <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/versions">Released versions</a> page.</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/fc5a7f7a466e6419a3e712bcbec4224f98f8c480">commit</a></td>
    </tr>
  </tbody>
</table>

### August 11, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/system-requirements">System requirements</a> to add RabbitMQ 3.13 as a supported version for Adobe Commerce 2.4.4-p18 (latest), resolving a blocker for the Debian OS upgrade path.</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/046d641dc45b269c6495bef0c06c53bdc500227b">commit</a></td>
    </tr>
  </tbody>
</table>

### August 10, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4797">ACP2E-4797: Admin WYSIWYG editor and Page Builder block 4-byte Unicode characters when utf8mb4 is supported</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/c97bb9c77eb0ec4bbc92d042cfa9fd440e970ca7">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4682">ACP2E-4682: Storefront pages that check quote isActive create empty quote records</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/ceac870e3ccb9eeee64e3b574aaccd33c6ab69d0">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4799">ACP2E-4799: GraphQL query requisition_lists returns incorrect total_count with pagination</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/19f854db1a0ff78d0a6dca070b4b6db09d3de83e">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4870">ACP2E-4870: Product Alerts emails ignore store view email settings</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/907df07e641ab7124353f89ca799f92d097aa54f">commit</a></td>
    </tr>
    <tr>
      <td><p>Updated the <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/product-availability">Product availability</a> table with Adobe Commerce 2.4.9 support and removed the Page Builder entry, which has been part of the core product since 2.4.3.</p>
</td>
      <td>
        Major update
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/a5120adab9f624677447889722359951e775c3f3">commit</a></td>
    </tr>
  </tbody>
</table>

### August 9, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4593">ACP2E-4593: Wrong Website Restriction CMS page served on the secondary website in multi-website storefronts</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/86c85db0098192092241b680d38b882f1a52b578">commit</a></td>
    </tr>
  </tbody>
</table>

### August 6, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Corrected the B2B extension version support matrix in <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/product-availability">Product availability</a> for Adobe Commerce 2.4.6, 2.4.7, and 2.4.8.</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/50fb71aa968abf1302e86ffeb3d3b3a66b3c33d5">commit</a></td>
    </tr>
  </tbody>
</table>

### July 31, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4547">ACP2E-4547: Admin can't add a default-catalog product to a quote when it isn't assigned to the user's shared catalog</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/6d0313c01e979d3d4bd3e781e2f0e9c336bbd8c5">commit</a></td>
    </tr>
  </tbody>
</table>

### July 30, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/release/planning/security-enforcement-policy">Security Policy: Required Actions and Deadlines</a> for Adobe Commerce on Cloud customers to explain requirements, timelines, and instructions for upgrading Adobe Commerce on Cloud deployments running unsupported versions or third-party software dependencies.</p>
</td>
      <td>
        New topic
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/b7649aae1f8cab020c1081db2b2363bca22adfed">commit</a></td>
    </tr>
  </tbody>
</table>

### July 28, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4805">ACP2E-4805: Checkout requests slow down for configurable products when the first salable child appears later in the list</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/1b5fb4826f6599d7b7609dedfeb545f29454ba4d">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4748">ACP2E-4748: Reward points expiration runs slowly on stores with a large reward points history</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/30fe149f9743ceca7f40374246b4fc9b9503c590">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.82 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/acp2e-4875">ACP2E-4875: Admin users logged out when opening customer accounts with large address books</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/3174f84e0a8c64aaed50cc075a9287bc011778ef">commit</a></td>
    </tr>
  </tbody>
</table>

### July 27, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-82/overview">Overview: Quality Patches Tool (QPT) v1.1.82</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/ddfb8e85d015b8ab675a3af56cf5d2bb72e535c4">commit</a></td>
    </tr>
  </tbody>
</table>

### July 23, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Updated <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/system-requirements">System requirements</a> with MariaDB Cloud version support details for Adobe Commerce 2.4.9 (12.3 recommended, 11.8 supported).</p>
</td>
      <td>
        Technical
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/eaf47339d87d296799367f699f9322c14e6ee780">commit</a></td>
    </tr>
  </tbody>
</table>

### July 22, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Updated the <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/installation-guide/system-requirements">System requirements</a> topic with the latest Commerce on Cloud service versions, including a RabbitMQ 4.3 update and confirmed compatibility with MariaDB 12.3.</p>
</td>
      <td>
        Major update
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/6607852ba3221a1120f3c88007c106ed9704dcec">commit</a></td>
    </tr>
  </tbody>
</table>

### July 21, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4401">ACP2E-4401: Scheduled Update preview of the home page with configurable products redirects to the maintenance page</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/41aac13f73ff0836f93b8ec30a709bd89fa34a94">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4468">ACP2E-4468: Website-scoped Admin users can't save Dynamic Blocks in Page Builder</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/f5fbe594284c05aaa9b2461e3628a3444229efb6">commit</a></td>
    </tr>
  </tbody>
</table>

### July 16, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4801">ACP2E-4801: Bundle product option quantities don't update when reconfiguring a negotiable quote in Admin</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/31872eee953126b52f1c13444dd46140edc879c6">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4786">ACP2E-4786: Product export fails when AWS S3 remote storage is configured</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/b7ca2e40743aa512b0bc785e486d3e7d1c6dbefc">commit</a></td>
    </tr>
  </tbody>
</table>

### July 15, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4630">ACP2E-4630: Long product names overlap adjacent columns in multi-page sales PDFs after page breaks</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/5581e6f7a507bb83a3fc0fd7229239137b15acd7">commit</a></td>
    </tr>
  </tbody>
</table>

### July 14, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4300">ACP2E-4300: Storefront catalog permissions not updating after Admin customer group change</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/2c26efeb7aa734e4dcc8d0131cb82a96d35e8f32">commit</a></td>
    </tr>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.81 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/acp2e-4680">ACP2E-4680: Non-salable products disappear from finalized negotiable quotes</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/1448b291e70cdf515872f019028c15bd703f80fe">commit</a></td>
    </tr>
    <tr>
      <td><p>Added <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/commerce-version-tool/intro">Commerce Version Tool documentation</a> with availability, report generation, JSON and CSV output, troubleshooting, and release notes for monthly Adobe Commerce security patch-status reporting.</p>
</td>
      <td>
        New topic
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/43571d84d9a27ffa113ba4f3a8a08883602211f6">commit</a></td>
    </tr>
  </tbody>
</table>

### July 10, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-81/overview">Overview: Quality Patches Tool (QPT) v1.1.81</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/2cc434ac8efd0d9344140ad07f2f68d2d48b1fb4">commit</a></td>
    </tr>
  </tbody>
</table>

### July 6, 2026

<table style="table-layout:auto;">
  <thead>
    <tr>
      <th>Description</th>
      <th>Type</th>
      <th>Source</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><p>Added detailed description of the QPT 1.1.80 fix for <a href="https://experienceleague.adobe.com/en/docs/commerce-operations/tools/quality-patches-tool/patches-available-in-qpt/v1-1-80/acp2e-4493">ACP2E-4493: Sales Order Archive grid shows incorrect order status when Asynchronous Indexing enabled</a>.</p>
</td>
      <td>
        New topic, qpt
      </td>
      <td><a href="https://github.com/AdobeDocs/commerce-operations.en/commit/2fdbf6a4fd4924947a2cb2a508e067b8bb0d694c">commit</a></td>
    </tr>
  </tbody>
</table>
