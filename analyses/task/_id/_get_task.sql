{%- set request = jinjat.request() %}

DESCRIBE TASK identifier({{jinjat.quote_literal(request.params.id)}})  