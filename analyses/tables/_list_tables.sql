{%- set request = jinjat.request() %}
{%- set query = request.query %}
SELECT
    CONCAT(
        table_schema,
        '.',
        table_name
    ) AS reference,
    {{ jinjat.generate_select(query.select) }}
FROM
    {{ source(
        'information_schema',
        'TABLES'
    ) }}

    WHERE
    table_type = 'BASE TABLE' 
    {% if query.filters is defined %}
        AND {{ jinjat.generate_where(filters) }} 
    {% endif %}

    {% if query.sort is defined %}
    ORDER BY
        {% for sorting in query.sort %}
            {{ jinjat.quote_identifier(
                sorting.field
            ) }}

            {% if sorting.order %}
                ASC
            {% else %}
                DESC
            {% endif %}
        {% endfor %}
    {% endif %}
