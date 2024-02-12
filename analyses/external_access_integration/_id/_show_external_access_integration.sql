{%- set request = jinjat.request(params = {"id": "1"}) %}

DESCRIBE EXTERNAL ACCESS INTEGRATION {{jinjat.quote_identifier(request.params.id)}}