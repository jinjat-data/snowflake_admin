{%- set request = jinjat.request() %}

ALTER EXTERNAL ACCESS INTEGRATION {{ jinjat.quote_identifier(request.body.name) }}
  SET
  ALLOWED_NETWORK_RULES = {{ jinjat.quote_literal(request.body.allowed_network_rules) }}
  ALLOWED_API_AUTHENTICATION_INTEGRATIONS = {{ jinjat.quote_literal(request.body.allowed_api_authentification_integrations) }}
  ALLOWED_AUTHENTICATION_SECRETS = {{ jinjat.quote_literal(request.body.allowed_authentification_secrets) }}
  COMMENT = {{ jinjat.quote_literal(request.body.comment) }}
  ENABLED = {{ jinjat.quote_literal(request.body.enabled) }}