-- For this analysis we wont need the latitud or longitudes so we can just drop those
-- Creating a view instead of a tableso we dont store physical data. 
CREATE OR REPLACE VIEW `drift-project-1.Bike_trips.Dec2024_to_june2025_clean`
AS
SELECT
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
member_casual
FROM
`drift-project-1.Bike_trips.Dec2024_to_june2025`