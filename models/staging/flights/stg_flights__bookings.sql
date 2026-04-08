{{
  config(
    materialized = 'table',
    on_configuration_change = "apply",
    indexes=[
        {
            "columns": ["book_date"],
            "unique": false
        }
    ]
    )
}}
SELECT 
    book_ref,
    book_date,
    total_amount
FROM
    {{ source('demo_src', 'bookings') }}