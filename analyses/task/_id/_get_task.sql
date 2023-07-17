{%- set request = jinjat.request() %}

DESCRIBE TASK identifier({{request.query.id}})