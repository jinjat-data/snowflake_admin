{%- set request = jinjat.request() %}

ALTER USER {{jinjat.quote_identifier(request.body.name or '')}}
PASSWORD = {{jinjat.quote_literal(request.body.password)}}
DEFAULT_ROLE = {{jinjat.quote_literal(request.body.default_role)}}
LOGIN_NAME = {{jinjat.quote_literal(request.body.login_name)}}
-- TODO: add other fields