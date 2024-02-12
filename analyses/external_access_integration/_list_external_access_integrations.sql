{%- set request = jinjat.request() %}

SHOW EXTERNAL ACCESS INTEGRATIONS
{% if request.query.name is defined %}
LIKE '%' || {{jinjat.quote_identifier(request.query.name)}} || '%'  
{% endif %}
