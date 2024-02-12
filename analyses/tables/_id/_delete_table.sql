{%- set request = jinjat.request() %}

DROP TABLE {{jinjat.quote_identifier(request.params.id)}}