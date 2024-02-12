{%- set request = jinjat.request() %}

DROP STREAM {{jinjat.quote_identifier(request.params.id)}}