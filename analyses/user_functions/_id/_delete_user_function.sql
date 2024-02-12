{%- set request = jinjat.request() %}

DROP FUNCTION {{jinjat.quote_identifier(request.params.id)}}