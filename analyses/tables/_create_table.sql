{%- set request = jinjat.request() %}

CREATE TABLE {{jinjat.quote_identifier(request.body.name)}}
  -- TODO: clustering etc.
  {% if request.body.columns %}
    {% for column in request.body.columns %}
        ({{column.name}}, {{column.type}})
    {% endfor %}
  {% end %}
 
  {% if request.body.definition_sql != null %}
      AS {{request.body.definition_sql}}
  {% endif %}
