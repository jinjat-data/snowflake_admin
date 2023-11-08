{% macro snowflake__limit_query(sql, limit) -%}
    {{sql}} LIMIT {{limit}}
{%- endmacro %}