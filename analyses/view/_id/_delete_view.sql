{%- set request = jinjat.request() %}

DROP VIEW { jinjat.quote_identifier(request.body.name or '') }}