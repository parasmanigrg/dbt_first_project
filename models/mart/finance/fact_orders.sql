with orders as(
Select *
From {{ref('stg_orders')}}
)
, payments as(
    Select*
    From {{ref('stg_payments')}}

)
, final as(
Select o.order_id,
        o.customer_id,
        o.order_date,
        p.amount
From orders o 
Left Join payments p On o.order_id=p.order_id
)

Select *
From final 