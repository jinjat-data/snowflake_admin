{%- set request = jinjat.request() %}

CREATE {% if request.status == 'PATCH' %}OR REPLACE {% endif %} ACCOUNT
    {{jinjat.quote_identifier(request.body.database_name)}}.{{jinjat.quote_identifier(request.body.schema_name)}}.{{jinjat.quote_identifier(request.body.name)}}
    {%- for key, value in request.body.items() %}
        {%- if key not in ['name', 'database_name', 'schema_name'] %}
            {{key}} = {{jinjat.quote_literal(value)}}
        {% endif %}
    {% endfor %}