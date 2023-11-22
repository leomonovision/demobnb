with description as (
    select distinct
        id,
        'description_test' as description
    from {{ ref('stg_listings') }}
)

select * from description