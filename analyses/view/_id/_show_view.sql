{%- set request = jinjat.request() %}
SELECT
    CONCAT(
        table_schema,
        '.',
        table_name
    ) AS id, *,
    (select array_agg(object_construct('name', columns.column_name, 'type', columns.data_type, 'comment', columns.comment, 'nullable', upper(columns.is_nullable) = 'YES')) WITHIN GROUP (ORDER BY columns.ordinal_position) from information_schema.COLUMNS 
        where columns.table_catalog = views.table_catalog and columns.table_schema = views.table_schema and columns.table_name = views.table_name) as columns
FROM
    {{ source(
        'information_schema',
        'VIEWS'
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
