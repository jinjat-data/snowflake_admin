CREATE [ OR REPLACE ] ALERT [ IF NOT EXISTS ] <name>
  WAREHOUSE = <warehouse_name>
  SCHEDULE = '{ <num> MINUTE | USING CRON <expr> <time_zone> }'
  COMMENT = '<string_literal>'
  [ [ WITH ] TAG ( <tag_name> = '<tag_value>' [ , <tag_name> = '<tag_value>' , ... ] ) ]
  IF( EXISTS(
    <condition>
  ))
  THEN
    <action>