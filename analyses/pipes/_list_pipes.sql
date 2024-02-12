{%- set request = jinjat.request() %}

SHOW PIPES
{% if request.query.name is defined %}
LIKE '%' || {{jinjat.quote_identifier(request.query.name)}} || '%'  
{% endif %}