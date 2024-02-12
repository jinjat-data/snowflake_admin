{%- set request = jinjat.request() %}

-- TODO: fix
CREATE FUNCTION {{jinjat.quote_identifier(request.body.name)}} (i int)
RETURNS INT
LANGUAGE {{request.body.language}}
RUNTIME_VERSION = '3.8'
HANDLER = {{quote_literal(request.body.handler)}}
as
$$
{{request.body.code}}
$$;