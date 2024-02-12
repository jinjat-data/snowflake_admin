{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP SECRET {{jinjat.quote_identifier(request.params.id)}}