{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE EXTERNAL TABLE {{jinjat.quote_identifier(request.params.id)}}