{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE SECURITY INTEGRATION {{jinjat.quote_identifier(request.params.id)}}