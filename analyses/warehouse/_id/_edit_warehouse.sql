{%- set request = jinjat.request() %}

ALTER WAREHOUSE {{ jinjat.quote_identifier(request.body.name or '') }}
WITH WAREHOUSE_SIZE = {{ jinjat.quote_literal(request.body.size) }}
WAREHOUSE_TYPE = {{ jinjat.quote_literal(request.body.type) }}
AUTO_SUSPEND = {{ jinjat.quote_literal(request.body.auto_suspend) }}
MIN_CLUSTER_COUNT = {{ jinjat.quote_literal(request.body.min_cluster_count) }}
MAX_CLUSTER_COUNT = {{ jinjat.quote_literal(request.body.max_cluster_count) }}
COMMENT = {{ jinjat.quote_literal(request.body.comment) }}
ENABLE_QUERY_ACCELERATION = {{ jinjat.quote_literal(request.body.enable_query_acceleration) }}
QUERY_ACCELERATION_MAX_SCALE_FACTOR = {{ jinjat.quote_literal(request.body.query_acceleration_max_scale_factor) }}
AUTO_RESUME = {{ jinjat.quote_literal(request.body.auto_resume) }} 
RESOURCE_MONITOR = {{ jinjat.quote_identifier(request.body.resource_monitor or '') }}