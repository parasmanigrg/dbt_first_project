Select order_id,
        sum(amount) as total_amount
From {{ref('stg_payments')}}
group by 1
having sum(amount)<0