{%- set request = jinjat.request() %}

SHOW SECURITY INTEGRATIONS
{% if request.query.name is defined %}
LIKE '%' || {{jinjat.quote_identifier(request.query.name)}} || '%'  
{% endif %}
