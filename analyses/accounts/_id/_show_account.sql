{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE ACCOUNT {{jinjat.quote_identifier(request.params.id)}}