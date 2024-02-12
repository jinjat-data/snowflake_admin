{%- set request = jinjat.request() %}

CREATE API INTEGRATION {{ jinjat.quote_identifier(request.body.name) }}
    {% for key, value in request.body.items() %}
        {% if key != 'name' %}
        {{key}} = {{jinjat.quote_identifier(value)}}
        {% endif %}
    {% endfor }