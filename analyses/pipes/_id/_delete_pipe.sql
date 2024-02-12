{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP PIPE {{jinjat.quote_identifier(request.params.id)}}