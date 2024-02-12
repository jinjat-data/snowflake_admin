{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP STORAGE INTEGRATION {{jinjat.quote_identifier(request.params.id)}}