# Roadmap

![Extension icon](/common/images/Smock_Extension_18_N.svg) — Indicates extensions available on the Commerce Marketplace.

<table class="roadmap-table">
  <tr class="roadmap-header">
    
    <th>In Progress</th>
    
    <th>Planned</th>
    
  </tr>
  <tr>
    
    <td class="table-container">
      <table class="inner-table">
        
        <tr class="inner-row"><td class="inner-cell">Accessibility improvements for storefront/admin<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Composer 2.2 support<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Elasticsearch 7.17 support<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Mobile layout optimization<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Column grid layouts (viewports)<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Security and quality improvements<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Replace Froogaloop library with player.js<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">TinyMCE 5.10 support<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Latest Vimeo API support<span class="icon "></span></td></tr>
        
      </table>
    </td>
    
    <td class="table-container">
      <table class="inner-table">
        
        <tr class="inner-row"><td class="inner-cell">OpenSearch as independent search engine<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Remove jquery-migrate<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Remove PHP 7.4 compatibility<span class="icon "></span></td></tr>
        
        <tr class="inner-row"><td class="inner-cell">Symfony dependency updates<span class="icon "></span></td></tr>
        
      </table>
    </td>
    
  </tr>
</table>

<style>

/****************/
/*****Tables*****/
/****************/

/***Main Table***/
table.roadmap-table {
  padding: 1rem;
  margin: 0;
  border: 1px solid #ddd;
}

/***Inner Tables**/
table.roadmap-table tr td.table-container table.inner-table {
  padding: 0.5rem;
  margin: 0;
  border: none;
}

/*****************/
/*****Headers*****/
/*****************/

/***Main Table Header***/
table.roadmap-table tr.roadmap-header th {
  padding: .7rem;
  margin: 0;
  border-bottom: 1px solid #ddd;
  text-align: left;
  background-color: #f1f1f1;
  font-weight: bold;
  color: #333;
  font-size: 1rem;
}

/**************/
/*****Rows*****/
/**************/

/***Main Table Row***/
 table.roadmap-table tr {
  padding: 0.7rem;
  margin-left: 1rem;
  border-collapse: collapse;
}
table.roadmap-table tr:hover {
  background-color: #fff;
}

/***Inner Table Rows***/
table.roadmap-table tr td.table-container table.inner-table tr.inner-row {
  padding: 0.7rem;
  margin: 0;
  border-bottom: 1px solid #ddd;
}

/***************/
/*****Cells*****/
/***************/

/***Main Table Cell***/
 table.roadmap-table tr td.table-container {
  padding: 0;
  margin: 0;
  border: none;
  border-collapse: collapse;
  min-height: 100%;
}

table.roadmap-table tr td.table-container {
  border-right: 1px solid #ddd;
}

/***Inner Table Cell***/
table.roadmap-table tr td.table-container table.inner-table tr.inner-row td.inner-cell {
  margin: 0;
  padding: 0.8rem;
  border-collapse: collapse;
  font-size: 1.1rem;
  border: none;
}

/***************/
/*****Icons*****/
/***************/

.icon {
  height: 18px;
  font-size: 14px;
  font-weight: 400;
  padding: 5px 0;
}

.icon.Extension::before {
  display: inline-block;
  content: '';
  background-image: url(/common/images/Smock_Extension_18_N.svg);
  background-size: 16px 16px;
  height: 16px;
  width: 16px;
  margin-left: 5px;
  margin-bottom: -2px;
}

</style>
