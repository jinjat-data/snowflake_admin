{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE ROLE {{jinjat.quote_identifier(request.params.id)}}