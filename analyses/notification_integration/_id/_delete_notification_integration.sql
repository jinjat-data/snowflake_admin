{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP NOTIFICATION INTEGRATION {{jinjat.quote_identifier(request.params.id)}}