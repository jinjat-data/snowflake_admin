{%- set request = jinjat.request() %}

EXECUTE TASK identifier({{request.query.id}});