{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP MANAGED ACCOUNT {{jinjat.quote_identifier(request.params.id)}}