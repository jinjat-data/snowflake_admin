{%- set request = jinjat.request() %}

SHOW DYNAMIC TABLES
{% if request.query.name is defined %}
LIKE '%' || {{jinjat.quote_identifier(request.query.name)}} || '%'  
{% endif %}