{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE DYNAMIC TABLE {{jinjat.quote_identifier(request.params.id)}}