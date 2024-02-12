{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE FILE FORMAT {{jinjat.quote_identifier(request.params.id)}}