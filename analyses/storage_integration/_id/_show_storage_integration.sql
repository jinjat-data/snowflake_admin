{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE STORAGE INTEGRATION {{jinjat.quote_identifier(request.params.id)}}