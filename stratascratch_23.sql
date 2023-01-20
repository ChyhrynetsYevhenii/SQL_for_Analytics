--Classify each business as either a restaurant, cafe, school, or other.
--
--
--•	A restaurant should have the word 'restaurant' in the business name.
--•	A cafe should have either 'cafe', 'café', or 'coffee' in the business name.
--•	A school should have the word 'school' in the business name.
--•	All other businesses should be classified as 'other'.
--
--
--Output the business name and their classification.

select distinct business_name,
CASE
WHEN business_name LIKE '%restaurant%' THEN 'restaurant'
WHEN business_name LIKE '%cafe%' OR business_name LIKE '%café%' OR business_name LIKE '%coffee%' THEN 'cafe'
WHEN business_name LIKE '%school%' THEN 'school'
ELSE 'other' END AS classifications
from sf_restaurant_health_violations