-- We notice 41109 trips had <0 minutes so those were probably glitches or tests
-- Also noticed october only ahd 46 trips so we take it out to reduce noise
-- Also we add total trips for visualization later
-- Add total trips for each rideable
-- total rides per member

CREATE OR REPLACE VIEW `drift-project-1.Bike_trips.analysis_data`
AS
SELECT
rideable_type,
COUNT(*) OVER (PARTITION BY rideable_type) AS total_rideable_per_member,
trip_duration_mins,
day_of_week,
month_year,
member_casual,
COUNT(*) OVER (PARTITION BY member_casual) AS total_trips_per_member,
COUNT(*) OVER () AS total_trips
FROM
`drift-project-1.Bike_trips.Added_info`
WHERE month_year !='October 2024'
AND 
TIMESTAMP_DIFF(ended_at, started_at, MINUTE) > 0



SELECT * 
FROM `drift-project-1.Bike_trips.analysis_data`
