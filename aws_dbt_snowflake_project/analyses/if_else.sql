{% set nights_booked = 4 %}
{% set flag = 0 %}

select * from {{ ref('bronze_bookings') }}
{% if flag == 1 %}
    where nights_booked > {{ nights_booked }}
{% else %}
    where nights_booked <= {{ nights_booked }}
{% endif %}