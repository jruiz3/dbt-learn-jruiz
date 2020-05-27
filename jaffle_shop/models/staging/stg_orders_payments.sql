with payments as (
    select * from {{ ref('stg_payments') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
),

final as (
  select o.order_id,
         o.customer_id,
         p.payment_amount
  from orders o
  join payments p on o.order_id = p.order_id
)

select * from final
