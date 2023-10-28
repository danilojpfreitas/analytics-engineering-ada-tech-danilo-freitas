
with base_reviews as (

    select
        id_listing, id, reviewer_id, reviewer_name, comentarios
    from
    "postgres"."trusted"."danilo_freitas_processing_reviews"
    
)

select * from base_reviews