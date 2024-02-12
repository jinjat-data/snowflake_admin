{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP SHARE {{jinjat.quote_identifier(request.params.id)}}