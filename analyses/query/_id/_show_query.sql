{%- set request = jinjat.request() %}

SELECT SYSTEM$EXPLAIN_PLAN_JSON(
    {{ jinjat.quote_literal(request.params.id) }}
    ) AS explain_plan