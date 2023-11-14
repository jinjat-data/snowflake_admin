{%- set request = jinjat.request() %}
SELECT
    CONCAT(
        table_schema,
        '.',
        table_name
    ) AS id, *,
    (select array_agg(object_construct('name', columns.column_name, 'type', columns.data_type, 'nullable', upper(columns.is_nullable) = 'YES', 'comment', columns.comment, 'position', columns.ordinal_position)) WITHIN GROUP (ORDER BY columns.ordinal_position) from information_schema.COLUMNS 
        where columns.table_catalog = tables.table_catalog and columns.table_schema = tables.table_schema and columns.table_name = tables.table_name) as columns
FROM
    {{ source(
        'information_schema',
        'TABLES'
    ) }}
WHERE
    CONCAT(
        table_schema,
        '.',
        table_name
    ) = {{ jinjat.quote_literal(
        request.params.id
    ) }}
LIMIT
    1
