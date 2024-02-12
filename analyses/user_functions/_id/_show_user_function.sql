{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE USER FUNCTION {{jinjat.quote_identifier(request.params.id)}}