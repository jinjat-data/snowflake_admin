{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP EXTERNAL TABLE {{jinjat.quote_identifier(request.params.id)}}