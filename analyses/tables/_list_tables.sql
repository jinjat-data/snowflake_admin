{%- set request = jinjat.request() %}
{%- set query = request.query %}
SELECT
    CONCAT(
        table_schema,
        '.',
        table_name
    ) AS id,
    {{ jinjat.generate_select(
        query.select
    ) }}
FROM
    {{ source(
        'information_schema',
        'TABLES'
    ) }}

    {% if query.filters is defined %}
    WHERE
        {{ jinjat.generate_where(filters) }}
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
