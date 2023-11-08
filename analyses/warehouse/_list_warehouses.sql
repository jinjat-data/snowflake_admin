{%- set request = jinjat.request() %}

show warehouses
{% if request.query.name is defined %}
LIKE '%' || {{jinjat.quote_identifier(request.query.name)}} || '%'  
{% endif %} 