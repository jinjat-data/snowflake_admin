{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE SHARE {{jinjat.quote_identifier(request.params.id)}}