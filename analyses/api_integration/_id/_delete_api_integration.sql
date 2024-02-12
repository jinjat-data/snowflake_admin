{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP API INTEGRATION {{jinjat.quote_identifier(request.params.id)}}