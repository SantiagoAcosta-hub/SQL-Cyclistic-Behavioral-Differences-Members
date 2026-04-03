-- we wont need the latitud or longitudes,ride id and station id
-- Because the marketing is digital so we dont care about the stations much
-- Creating a view instead of a table so we dont store physical data. 
-- This is de data well actually work with
CREATE OR REPLACE VIEW `drift-project-1.Bike_trips.relevant_data`
AS
SELECT
rideable_type,
started_at,
ended_at,
member_casual
FROM
`drift-project-1.Bike_trips.Dec2024_to_june2025`


SELECT *
FROM `drift-project-1.Bike_trips.relevant_data`
