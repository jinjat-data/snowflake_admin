{%- set request = jinjat.request(params = {"id": "1"}) %}

DROP EXTERNAL ACCESS INTEGRATION {{jinjat.quote_identifier(request.params.id)}}