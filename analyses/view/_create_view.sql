{%- set request = jinjat.request() %}

CREATE {% if request.status == 'POST' %}OR REPLACE{% endif %}
 {% if request.body.is_secure %}SECURE{% endif %} VIEW {{ jinjat.quote_identifier(request.body.name or '') }}
AS {{ request.body.view_definition }}