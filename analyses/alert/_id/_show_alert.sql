{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE ALERT {{jinjat.quote_identifier(request.params.id)}}