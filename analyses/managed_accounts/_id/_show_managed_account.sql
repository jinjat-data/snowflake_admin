{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE MANAGED ACCOUNT {{jinjat.quote_identifier(request.params.id)}}