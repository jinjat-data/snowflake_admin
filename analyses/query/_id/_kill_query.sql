{%- set request = jinjat.request() %}

SELECT SYSTEM$CANCEL_QUERY(
    {{ jinjat.quote_literal(request.params.id) }}
    ) AS explain_plan