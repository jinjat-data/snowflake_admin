{%- set request = jinjat.request(body = {"compression":"SNAPPY","date_format":"auto","time_format":"auto","timestamp_format":"auto","binary_format":"HEX","record_delimiter":"","field_delimiter":",","empty_field_as_null":false,"encoding":"UTF8","name":"test","database_name":"MY_CUSTOM_APP","schema_name":"PUBLIC","type":"Parquet"}) %}

CREATE {% if request.status == 'PATCH' %}OR REPLACE {% endif %} FILE FORMAT 
    {{jinjat.quote_identifier(request.body.database_name)}}.{{jinjat.quote_identifier(request.body.schema_name)}}.{{jinjat.quote_identifier(request.body.name)}}
    {%- for key, value in request.body.items() %}
        {%- if key not in ['name', 'database_name', 'schema_name'] %}
            {{key}} = {{jinjat.quote_literal(value)}}
        {% endif %}
    {% endfor %}