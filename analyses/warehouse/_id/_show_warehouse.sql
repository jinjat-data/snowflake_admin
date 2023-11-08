{%- set request = jinjat.request() %}
 
SHOW WAREHOUSES 
 LIKE {{jinjat.quote_literal(request.params.id)}}
 