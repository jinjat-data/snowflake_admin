{%- set request = jinjat.request() %}
{%- set query = request.query %}
SELECT
    CONCAT(
        procedure_schema,
        '.',
        procedure_name
    ) AS procedure_name,
    procedure_language,
    created,
    last_altered
FROM
    {{ source(
        'information_schema',
        'procedures'
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
