{{
  config(
    materialized = 'table'
    )
}}
Select
ticket_no
,book_ref
,passenger_id
,passenger_name
,contact_data
From {{ source('demo_src', 'tickets') }}