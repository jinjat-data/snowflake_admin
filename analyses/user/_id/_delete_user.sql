{%- set request = jinjat.request(params={"id": "1"}) %}

DROP USER {{jinjat.quote_identifier(request.params.id)}}