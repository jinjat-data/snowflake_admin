{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE EXTERNAL FUNCTION {{jinjat.quote_identifier(request.params.id)}}