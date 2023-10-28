
with base_calendar as (

    select
        listing_id AS id, price AS preco
    from
    "postgres"."raw"."danilo_freitas_raw_calendar"
    
)

select * from base_calendar