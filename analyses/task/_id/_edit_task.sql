ALTER TASK <name> 
    RESUME | SUSPEND
    SET
     SCHEDULE = ''
    MODIFY AS 
    
{%- set request = jinjat.request() %}

ALTER TASK {{request.body.name}}
  {% if request.body.suspended %}SUSPEND{% else %}RESUME {% endif %}
  SET
  WAREHOUSE = {{request.body.warehouse}}
  SCHEDULE = 'USING CRON {{request.body.schedule}} {{request.body.timestamp}}'
  CONFIG = {{jinjat.quote_literal(request.body.config)}}
  ALLOW_OVERLAPPING_EXECUTION = {{request.body.allow_overlapping_execution}}
  USER_TASK_TIMEOUT_MS = {{request.body.timeout_ms}}
  SUSPEND_TASK_AFTER_NUM_FAILURES = {{request.body.suspect_after_num_tries}}
  ERROR_INTEGRATION = {{jinjat.quote_literal(request.body.error_integration)}}
  COMMENT = {{jinjat.quote_literal(request.body.comment)}}
{% if request.body.condition is defined %}
WHEN
  {{request.body.condition}}
{% endif %}
AS
{{request.body.definition}}