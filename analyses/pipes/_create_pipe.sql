{%- set request = jinjat.request() %}

CREATE PIPE {{jinjat.quote_identifier(request.body.name)}}
  {% if request.body.columns %}
    {% for column in request.body.columns %}
        ({{column.name}}, {{column.type}})
    {% endfor %}
  {% endif %}
 
AS COPY INTO

{{request.body.into_table_expression}}

FROM 

{{request.body.from_stage_query}}