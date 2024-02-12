{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP EXTERNAL FUNCTION {{jinjat.quote_identifier(request.params.id)}}