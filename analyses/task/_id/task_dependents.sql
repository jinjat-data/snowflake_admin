{%- set query = jinjat.request().query %}

select *
  from table(information_schema.task_dependents(task_name => identifier({{query.id}}), 
  recursive => false));