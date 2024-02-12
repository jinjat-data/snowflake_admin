{%- set request = jinjat.request() %}

DROP USER {{jinjat.quote_identifier(request.params.id)}}