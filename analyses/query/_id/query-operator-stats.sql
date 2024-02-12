{%- set request = jinjat.request() %}

select *
    from table(get_query_operator_stats( {{ jinjat.quote_literal(request.params.id) }}));