select 
    tables.TABLE_NAME,
    tables.TABLE_OWNER,
    tables.TABLE_TYPE,
    tables.ROW_COUNT,
    tables.CLUSTERING_KEY,
    tables.BYTES,
    tables.RETENTION_TIME,
    tables.CREATED,
    tables.LAST_ALTERED,
    tables.AUTO_CLUSTERING_ON,
    tables.COMMENT,
    views.VIEW_DEFINITION
 from 
    information_schema.tables
 right join information_schema.views on (
        tables.table_type = 'VIEW' and
        views.table_catalog = tables.table_catalog and 
        views.table_schema = tables.table_schema and 
        views.table_name = tables.table_name and
    )