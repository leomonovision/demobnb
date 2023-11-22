
select 
    listing_id,
    id,
    date,
    reviewer_id,
    reviewer_name,
    comments
from {{ ref('stg_reviews') }}