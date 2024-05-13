{% list resources={list: "_list_users"} %}
    {% column ref="#/properties/type" /%}
    {% column ref="#/properties/email" /%}
    {% column ref="#/properties/disabled" /%}
    {% column ref="#/properties/last_success_login" /%}
{% /list %} 