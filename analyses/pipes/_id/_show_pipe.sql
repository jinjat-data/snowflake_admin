{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE PIPE {{jinjat.quote_identifier(request.params.id)}}