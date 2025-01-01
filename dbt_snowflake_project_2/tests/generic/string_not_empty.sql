{% test string_not_empty(model, column_name) %}
    select {{ column_name }}
    from {{ model }}
    where TRIM({{ column_name }}) is null or {{ column_name }} = ''
{% endtest %}