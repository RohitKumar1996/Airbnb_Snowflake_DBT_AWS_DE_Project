{% macro tag(col) %}

    {% if col < 100 %}
        low
    {% elif col >= 100 and col < 200 %}
        medium
    {% else %}
        high
    {% endif %}
    
{% endmacro %}