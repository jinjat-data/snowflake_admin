{%- set request = jinjat.request() %}

EXECUTE TASK {{jinjat.quote_identifier(request.params.id)}}