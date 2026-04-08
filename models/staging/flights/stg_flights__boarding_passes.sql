{{
  config(
    materialized = 'table',
    )
}}
Select
ticket_no
,flight_id
,boarding_no
,seat_no
From
{{ source('source', 'boarding_passes') }}