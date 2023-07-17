{%- set request = jinjat.request() %}

CALL {{request.params.name}}(
    {% for key, item in request.body.items() %}
    {{key}} => {{item}}
    {% endfor %}
)