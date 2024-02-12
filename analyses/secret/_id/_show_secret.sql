{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE SECRET {{jinjat.quote_identifier(request.params.id)}}