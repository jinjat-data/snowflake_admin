{%- set request = jinjat.request() %}

DESCRIBE TASK {{jinjat.quote_identifier(request.params.id)}}