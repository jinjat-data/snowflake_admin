{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE NOTIFICATION INTEGRATION {{jinjat.quote_identifier(request.params.id)}}