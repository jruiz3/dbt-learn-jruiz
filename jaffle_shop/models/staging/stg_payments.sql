{{
  config (
    materialized='view'
  )
}}

select id as payment_id,
       "orderID" as order_id,
       "paymentMethod" as payment_method,
       amount/100 as payment_amount,
       created as created_date,
       _batched_at
from raw.stripe.payment
