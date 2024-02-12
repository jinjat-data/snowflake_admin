{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP ALERT {{jinjat.quote_identifier(request.params.id)}}