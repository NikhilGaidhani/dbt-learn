select
    order_id,
    sum(dollaramount) as total_amount
    from {{ref('stgpayment')}}
    group by order_id
    having not(total_amount>=0 )