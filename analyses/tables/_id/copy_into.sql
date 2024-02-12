{%- set request = jinjat.request() %}

COPY INTO {{jinjat.quote_identifier(request.body.name)}}
    AS 
-- TODO