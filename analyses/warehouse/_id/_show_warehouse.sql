{%- set request = jinjat.request() %}
 
DESCRIBE WAREHOUSE
 LIKE {{jinjat.quote_literal(request.params.id)}}
 