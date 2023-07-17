{%- set request = jinjat.request() %}

CREATE STREAM {{request.body.name}} ON {{request.body.on_resource_type}} {{request.body.on_resource_name}}  
BEFORE (TIMESTAMP => TO_TIMESTAMP(40*365*86400), OFFSET => {{request.body.offset}}),
INSERT_ONLY = {{request.body.insert_only or false}}
