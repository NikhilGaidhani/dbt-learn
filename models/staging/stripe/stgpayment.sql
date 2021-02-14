with payment as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount/100 as dollaramount,
        created

    from raw.stripe.payment

)

select * from payment