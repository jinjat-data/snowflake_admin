{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP SECURITY INTEGRATION {{jinjat.quote_identifier(request.params.id)}}