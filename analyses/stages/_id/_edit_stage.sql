{%- set request = jinjat.request() %}

ALTER STAGE {{request.body.name}} 
    URL = {{jinjat.quote_identifier(request.body.url)}}
    FILE_FORMAT = (FORMAT_NAME = {{jinjat.quote_literal(request.body.file_format_reference)}})
    COPY_OPTIONS = (
        {% for key, value in request.body.copy_options.items() %}
            {{key}} = {{jinjat.quote_identifier(value)}}
        {% endfor }
    )
    COMMENT = {{jinjat.quote_literal(request.body.comment)}}
    TAG = {{jinjat.quote_literal(request.body.tags)}}
    STORAGE_INTEGRATION = {{jinjat.quote_literal(request.body.storage_integration)}}
    ENCRYPTION = (
        {% for key, value in request.body.encryption.items() %}
            {{key}} = {{jinjat.quote_identifier(value)}}
        {% endfor }
    )
    REFRESH_ON_CREATE = {{jinjat.quote_literal(request.body.refresh_on_create)}}
    AUTO_REFRESH = {{jinjat.quote_literal(request.body.auto_refresh)}}
    