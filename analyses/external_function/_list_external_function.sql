select 
    FUNCTION_NAME,
    API_INTEGRATION,
    COMMENT,
    CREATED,
    LAST_ALTERED,
    FUNCTION_DEFINITION,
    FUNCTION_LANGUAGE,
    DATA_TYPE,
    ARGUMENT_SIGNATURE,
    FUNCTION_OWNER
from 
    information_schema.functions
where
    IS_EXTERNAL = true