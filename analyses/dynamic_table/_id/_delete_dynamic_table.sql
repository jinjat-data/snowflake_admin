{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP DYNAMIC TABLE {{jinjat.quote_identifier(request.params.id)}}