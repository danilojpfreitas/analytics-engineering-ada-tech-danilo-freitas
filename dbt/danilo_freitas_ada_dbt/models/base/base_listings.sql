
with base_listings as (

    select
        id, nome, id_hospede, nome_hospede, bairro, tipo, preco, minimo_noites
    from
    "postgres"."trusted"."danilo_freitas_processing_listings"
    
)

select * from base_listings