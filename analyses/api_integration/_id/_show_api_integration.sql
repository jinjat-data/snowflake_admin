{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE API INTEGRATION {{jinjat.quote_identifier(request.params.id)}}