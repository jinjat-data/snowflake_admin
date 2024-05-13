{%- set request = jinjat.request() %}

ALTER API INTEGRATION {{ jinjat.quote_identifier(request.body.name) }}
    SET
    {% for key, value in request.body.items() %}
        {% if key != 'name' %}
        {{key}} = {{jinjat.quote_identifier(value)}}
        {% endif %}
    {% endfor %}