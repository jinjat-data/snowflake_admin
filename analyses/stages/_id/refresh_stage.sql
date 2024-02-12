{%- set request = jinjat.request() %}

ALTER STAGE {{jinjat.quote_identifier(request.params.id)}} REFRESH