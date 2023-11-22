with fact as (
    select 
        listing_id,
        date,
        available,
        price
    from {{ ref('stg_calendar') }}
)

select * from fact