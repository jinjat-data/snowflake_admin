{%- set request = jinjat.request() %}
{%- set query = request.query %}

select {{ jinjat.generate_select(query.select) }}
  from table(information_schema.task_history(
      RESULT_LIMIT={{query._limit}}, 
      TASK_NAME=identifier({{request.params.id}}), 
      ERROR_ONLY={{query._error or false}},
      -- SCHEDULED_TIME_RANGE_START=
      SCHEDULED_TIME_RANGE_END="CURRENT_TIMESTAMP"
      ))

{% if query.filters is defined %} 
WHERE
    {{ jinjat.generate_where(filters) }}
{% endif %}

ORDER BY

{% if not query.sorters %}
 scheduled_time
{% else %}
    {% for sorting in query.sorters %}
            {{ jinjat.quote_identifier(sorting.field) }}

            {% if sorting.order %}
                ASC
            {% else %}
                DESC
            {% endif %}
    {% endfor %}
{% endif %}