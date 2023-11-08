{%- set request = jinjat.request() %}

DROP STREAM identifier({{jinjat.quote_literal(request.params.id)}})  