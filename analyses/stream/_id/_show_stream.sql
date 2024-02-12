{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE STREAM {{jinjat.quote_identifier(request.params.id)}}