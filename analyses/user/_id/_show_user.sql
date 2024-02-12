{%- set request = jinjat.request() %}

DESCRIBE USER {{jinjat.quote_identifier(request.params.id)}}