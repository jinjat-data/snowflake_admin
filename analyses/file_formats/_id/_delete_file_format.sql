{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP FILE FORMAT {{jinjat.quote_identifier(request.params.id)}}