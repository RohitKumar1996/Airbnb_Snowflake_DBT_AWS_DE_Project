{% set column_list = ['BOOKING_ID', 'NIGHTS_BOOKED', 'BOOKING_AMOUNT'] %}

select
    {% for column in column_list %}
        {{ column }}
        {% if not loop.last %}, {% endif %}
    {% endfor %}
from {{ ref('bronze_bookings') }}