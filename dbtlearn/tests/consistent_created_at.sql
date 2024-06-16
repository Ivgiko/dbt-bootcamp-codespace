select *
from {{ ref('fct_reviews')}} a  
left join {{ ref('dim_listings_cleansed')}} b 
on a.LISTING_ID = b.LISTING_ID
where a.review_date <  b.created_at
limit 10