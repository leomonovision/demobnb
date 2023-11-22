{{ config(materialized='table') }}
select 
	"id" as id, 
	"listing_url" as listing_url, 
	"scrape_id" scrape_id,
	"last_scraped" last_scraped,
	"name" name,
	"host_id" host_id,
	"host_url" host_url,
	"host_name" host_name,
	"host_since" host_since,
	"host_location" host_location,
	"host_response_time" host_response_time,
	"host_response_rate" host_response_rate,
	"host_acceptance_rate" host_acceptance_rate,
	"host_is_superhost" host_is_superhost,
	"host_neighbourhood" host_neighbourhood,
	"host_listings_count" host_listings_count,
	"host_total_listings_count" host_total_listings_count,
	"host_verifications" host_verifications,
	"host_has_profile_pic" host_has_profile_pic,
	"host_identity_verified" host_identity_verified,
	"street" street,
	"neighbourhood" neighbourhood,
	"neighbourhood_cleansed" neighbourhood_cleansed,
	"neighbourhood_group_cleansed" neighbourhood_group_cleansed,
	"city" city,
	"state" state,
	"zipcode" zipcode,
	"market" market,
	"smart_location" smart_location,
	"country_code" country_code,
	"country" country,
	"latitude" latitude,
	"longitude" longitude,
	"is_location_exact" is_location_exact,
	"property_type" property_type,
	"room_type" room_type,
	"accommodates" accommodates,
	"bathrooms" bathrooms,
	"bedrooms" bedrooms, 
	"beds" beds,
	"bed_type" bed_type,
	"amenities" amenities,
	to_decimal(ltrim(replace("price",',',''),'$",')) as price,
	"weekly_price" weekly_price,
	"monthly_price" monthly_price,
	"security_deposit" security_deposit,
	"cleaning_fee" cleaning_fee,
	"guests_included" guests_included,
	"extra_people" extra_people,
	"minimum_nights" minimum_nights,
	"maximum_nights" maximum_nights,
	"calendar_updated" calendar_updated,
	"has_availability" has_availability,
	"availability_30" availability_30, 
	"availability_60" availability_60,
	"availability_90" availability_90,
	"availability_365" availability_365,
    "calendar_last_scraped" calendar_last_scraped,
	"number_of_reviews" number_of_reviews,
	"first_review" first_review,
	"last_review" last_review,
	"review_scores_rating" review_scores_rating,
	"review_scores_accuracy" review_scores_accuracy, 
	"review_scores_cleanliness" review_scores_cleanliness,
	"review_scores_checkin" review_scores_checkin, 
	"review_scores_communication" review_scores_communication,
	"review_scores_location" review_scores_location,
	"review_scores_value" review_scores_value,
	"requires_license" requires_license,
	"license" license,
	"instant_bookable" instant_bookable,
	"is_business_travel_ready" is_business_travel_ready,
	"cancellation_policy" cancellation_policy,
	"require_guest_profile_picture" require_guest_profile_picture,
	"require_guest_phone_verification" require_guest_phone_verification,
	"calculated_host_listings_count" calculated_host_listings_count,
	"reviews_per_month" reviews_per_month
from {{ source('paris', 'listings') }}