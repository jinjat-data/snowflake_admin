{%- set request = jinjat.request(params={"id": "1"}) %}

ALTER STAGE {{jinjat.quote_identifier(request.params.id)}} REFRESH