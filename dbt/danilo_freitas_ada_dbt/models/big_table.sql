{{ config(materialized='table') }}

-- base_listings
with listings as (

    select
    *
    from {{ ref('base_listings') }}
),
calendar as (

    select
    *
    from {{ ref('base_calendar') }}
),
reviews as (

    select
    *
    from {{ ref('base_reviews') }}
),

big_table_danilo_freitas as (

    select
        listings.id,
        listings.nome,
        listings.nome_hospede,
        listings.bairro,
        listings.tipo,
        listings.preco,
        listings.minimo_noites,
        reviews.reviewer_name,
        reviews.comentarios
    from listings
    inner join reviews on listings.id = reviews.id_listing
)

select * from big_table_danilo_freitas