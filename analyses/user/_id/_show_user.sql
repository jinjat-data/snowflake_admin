{%- set request = jinjat.request() %}

DESCRIBE USER identifier({{jinjat.quote_literal(request.params.id)}})       