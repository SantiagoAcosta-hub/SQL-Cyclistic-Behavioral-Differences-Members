-- Getting the Month of each trip out
-- Getting the day of week out
-- Getting duration time bigger than 0 so we get rid of noise
CREATE OR REPLACE VIEW `drift-project-1.Bike_trips.Added_info`
AS
SELECT
rideable_type,
started_at,
ended_at,
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS trip_duration_mins,
FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
FORMAT_TIMESTAMP('%B %Y', started_at) AS month_year,
member_casual,
FROM `drift-project-1.Bike_trips.relevant_data`

SELECT * 
FROM `drift-project-1.Bike_trips.Added_info`
