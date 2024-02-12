{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP STAGE {{jinjat.quote_identifier(request.params.id)}}