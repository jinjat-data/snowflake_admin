{%- set request = jinjat.request() %}
{%- set query = request.query %}
SELECT
    CONCAT(
        table_schema,
        '.',
        table_name
    ) AS REFERENCE,
    {{ jinjat.generate_select(
        query.select
    ) }}
FROM
    {{ source(
        'information_schema',
        'VIEWS'
    ) }}
WHERE
    VIEWS.TABLE_SCHEMA != 'INFORMATION_SCHEMA' {% if query.filters is defined %}
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
