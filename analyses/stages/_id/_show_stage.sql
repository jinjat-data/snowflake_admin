{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE STAGE {{jinjat.quote_identifier(request.params.id)}}