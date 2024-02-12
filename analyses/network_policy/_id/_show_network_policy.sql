{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE NETWORK POLICY {{jinjat.quote_identifier(request.params.id)}}