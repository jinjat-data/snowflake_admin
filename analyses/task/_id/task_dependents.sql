{%- set request = jinjat.request() %}

select *
  from table(information_schema.task_dependents(task_name => {{jinjat.quote_identifier(request.params.id}}), 
  recursive => false)