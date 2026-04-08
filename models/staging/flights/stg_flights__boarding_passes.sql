{{
  config(
    materialized = 'table'
    )
}}
Select
ticket_no
,flight_id
,boarding_no
,seat_no
From
{{ source('demo_src', 'boarding_passes') }}