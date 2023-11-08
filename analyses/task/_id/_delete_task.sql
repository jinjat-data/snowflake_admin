{%- set request = jinjat.request() %}

DROP TASK identifier({{jinjat.quote_literal(request.params.id)}})  